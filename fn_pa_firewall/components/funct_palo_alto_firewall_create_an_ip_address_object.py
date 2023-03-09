# -*- coding: utf-8 -*-
# Generated with resilient-sdk v48.0.4034

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from fn_pa_firewall.components.modules import Palo_Alto_Firewall_API
from fn_pa_firewall.components.modules.ultils import is_valid_ipv4_address

PACKAGE_NAME = "fn_pa_firewall"
FN_NAME = "palo_alto_firewall_create_an_ip_address_object"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'palo_alto_firewall_create_an_ip_address_object'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: None
        Inputs:
            -   fn_inputs.palo_alto_firewall_ip
            -   fn_inputs.palo_alto_firewall_tag_name
        """

        yield self.status_message(f"Starting App Function: '{FN_NAME}'")

        server_ip = str(self.options.get("palo_alto_ip_address", None))
        server_version = str(self.options.get("palo_alto_version", None))
        server_api = str(self.options.get("palo_alto_api_key", None))

        tag_name = fn_inputs.palo_alto_firewall_tag_name
        ip_address = fn_inputs.palo_alto_firewall_ip
        object_name = fn_inputs.palo_alto_firewall_address_objects_name

        self.LOG.info(f"Tag Name: {tag_name}")
        self.LOG.info(f"IP Address: {ip_address}")

        if is_valid_ipv4_address(ip_address):
            pa_fw_api = Palo_Alto_Firewall_API.RestAPI(
                palo_alto_ip=server_ip, palo_alto_version=server_version, api_key=server_api)

            results = None

            if tag_name is None:
                response = pa_fw_api.createNewAddress(
                    addressIP=ip_address, objectName=object_name, tagName=tag_name)
                if response is True:
                    self.LOG.info(
                        "[+] Add IP: \"{ip_address}\" succeeded.")
                    results = {
                        "status": "success",
                        "message": "Add ip: \"{ip_address}\" succeeded"
                    }
                else:
                    self.LOG.info(
                        f"[+] Add IP: \"{ip_address}\" has failed. {response['message']}")
                    results = {
                        "status": "false",
                        "message": f"Add IP: \"{ip_address}\" has failed. {response['message']}"
                    }
            elif not tag_name is None and pa_fw_api.getTagName(tagName=tag_name) is True:
                response = pa_fw_api.createNewAddress(
                    addressIP=ip_address, objectName=object_name, tagName=tag_name)
                if response is True:
                    self.LOG.info(
                        "[+] Add IP: \"{ip_address}\" succeeded.")
                    results = {
                        "status": "success",
                        "message": "Add ip: \"{ip_address}\" succeeded"
                    }
                else:
                    self.LOG.info(f"[+] Add IP: \"{ip_address}\" has failed. {response['message']}")
                    results = {
                        "status": "false",
                        "message": f"Add IP: \"{ip_address}\" has failed. {response['message']}"
                    }
            else:
                self.LOG.info(
                    "Cannot add IP: \"{ip_address}\". Not found tag name: \"{tag_name}\"")
                results = {
                    "status": "false",
                    "message": "Cannot add IP: \"{ip_address}\". Not found tag name: \"{tag_name}\""                    
                }
        else:
            self.LOG.info("Error! The input is not correct")
            results = {
                "status": "false",
                "message": "Error! The input is not correct"
            }

        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")
        yield FunctionResult(results)
