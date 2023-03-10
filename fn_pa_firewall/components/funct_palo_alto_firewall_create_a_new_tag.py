# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use
"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from fn_pa_firewall.components.modules import Palo_Alto_Firewall_API

PACKAGE_NAME = "fn_pa_firewall"
FN_NAME = "palo_alto_firewall_create_a_new_tag"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'palo_alto_firewall_create_a_new_tag'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Function to create a tag on Palo Alto Firewall. Tags allow you to group objects using keywords or phrases.
        Inputs:
            -   fn_inputs.palo_alto_firewall_tag_name
        """

        yield self.status_message(f"Starting App Function: '{FN_NAME}'")

        server_ip = str(self.options.get("palo_alto_ip_address", None))
        server_version = str(self.options.get("palo_alto_version", None))
        server_api = str(self.options.get("palo_alto_api_key", None))
        cert_file = str(self.options.get("verify", None))

        tag_name = fn_inputs.palo_alto_firewall_tag_name

        self.LOG.info(f"[+] A new tag: {tag_name}")
        self.LOG.info(cert_file)

        palo_alto_fw_api = Palo_Alto_Firewall_API.RestAPI(palo_alto_ip=server_ip, 
                                                          palo_alto_version=server_version, 
                                                          api_key=server_api,
                                                          verify=cert_file)

        response = palo_alto_fw_api.create_a_new_tag(tagName=tag_name)

        if response is not None:
            if response is True:
                self.LOG.info(f"Create a new tag \"{tag_name}\" succeeded.")
                results = {
                    "status": "success",
                    "message": f"Create a new tag \"{tag_name}\" succeeded."
                }
            else:
                self.LOG.info(f"Create a new tag \"{tag_name}\" has failed. {response}")
                results = {
                    "status": "false",
                    "message": f"Create a new tag \"{tag_name}\" has failed. {response}"
                }
        else:
            self.LOG.info(f"Create a new tag \"{tag_name}\" has failed. requests.exceptions.RequestException")
            results = {
                "status": "false",
                "message": f"Create a new tag \"{tag_name}\" has failed. <br>requests.exceptions.RequestException"
            }
        
        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")
        yield FunctionResult(results)
