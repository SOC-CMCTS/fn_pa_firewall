# -*- coding: utf-8 -*-
# Generated with resilient-sdk v48.0.4034

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError, validate_fields
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

        server_ip = str(self.options.get("server_palo_alto_ip", None))
        server_version = str(self.options.get("palo_alto_version", None))
        server_api = str(self.options.get("palo_alto_api_key", None))

        tag_name = fn_inputs.palo_alto_firewall_tag_name
        ip_address = fn_inputs.palo_alto_firewall_ip

        self.LOG.info("Tag Name: {}".format(tag_name))
        self.LOG.info("IP Address: {0}".format(ip_address))

        if is_valid_ipv4_address(ip_address):
            pa_fw_api = Palo_Alto_Firewall_API.restAPI(
                palo_alto_ip=server_ip, palo_alto_version=server_version, api_key=server_api)

            results = None

            if pa_fw_api.getTagName(tagName=tag_name) == True:
                response = pa_fw_api.createNewAddress(
                    addressIP=ip_address, tagName=tag_name)
                if response == True:
                    self.LOG.info(
                        "[+] Add IP: \"{0}\" succeeded.".format(ip_address))
                    results = {
                        "status": "success",
                        "message": "Add ip: \"{0}\" succeeded".format(ip_address)
                    }
                else:
                    self.LOG.info(
                        "[+] Add IP: \"{0}\" has failed. {1}".format(ip_address, response['message']))
                    results = {
                        "status": "false",
                        "message": "Add IP: \"{0}\" has failed. {1}".format(ip_address, response['message'])
                    }
            else:
                self.LOG.info(
                    "Cannot add IP: \"{0}\". Not found tag name: \"{1}\"".format(ip_address, tag_name))
                results = {
                    "status": "false",
                    "message": "Cannot add IP: \"{0}\". Not found tag name: \"{1}\"".format(ip_address, tag_name)
                }
        else:
            self.LOG.info("Error! The input is not correct")
            results = {
                "status": "false",
                "message": "Error! The input is not correct"
            }

        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")
        yield FunctionResult(results)