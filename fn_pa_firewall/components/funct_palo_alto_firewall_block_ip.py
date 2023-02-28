# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError, validate_fields
from fn_pa_firewall.components.modules import Palo_Alto_Firewall_API
from fn_pa_firewall.components.modules.ultils import is_valid_ipv4_address
PACKAGE_NAME = "fn_pa_firewall"
FN_NAME = "palo_alto_firewall_block_ip"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'palo_alto_firewall_block_ip'"""

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

        tag = fn_inputs.palo_alto_firewall_tag_name
        blacklistIP = fn_inputs.palo_alto_firewall_ip

        self.LOG.info("Tag: {}".format(tag))
        self.LOG.info("Black list IP: {0}".format(blacklistIP))

        if is_valid_ipv4_address(blacklistIP):
            pa_fw_api = Palo_Alto_Firewall_API.restAPI(
                palo_alto_ip=server_ip, palo_alto_version=server_version, api_key=server_api)

            results = None

            if pa_fw_api.getTagName(tagName=tag) == True:
                response = pa_fw_api.createNewAddress(
                    addressIP=blacklistIP, tagName=tag)
                if response == True:
                    self.LOG.info(
                        "[+] Block IP: \"{0}\" succeeded.".format(blacklistIP))
                    results = {
                        "status": "success",
                        "message": "Block ip: \"{0}\" succeeded".format(blacklistIP)
                    }
                else:
                    self.LOG.info(
                        "[+] Block IP: \"{0}\" has failed. {1}".format(blacklistIP, response['message']))
                    results = {
                        "status": "false",
                        "message": "Block IP: \"{0}\" has failed. {1}".format(blacklistIP, response['message'])
                    }
            else:
                self.LOG.info(
                    "Can't block ip: \"{0}\". Not found tag name: \"{1}\"".format(blacklistIP, tag))
                results = {
                    "status": "false",
                    "message": "Can't block ip: \"{0}\". Not found tag name: \"{1}\"".format(blacklistIP, tag)
                }
        else:
            self.LOG.info("Error! The input is not correct")
            results = {
                "status": "false",
                "message": "Error! The input is not correct"
            }

        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")
        yield FunctionResult(results)
