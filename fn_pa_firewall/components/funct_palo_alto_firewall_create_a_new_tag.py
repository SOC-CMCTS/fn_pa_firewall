# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError, validate_fields
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
        Function: None
        Inputs:
            -   fn_inputs.palo_alto_firewall_tag_name
        """

        yield self.status_message(f"Starting App Function: '{FN_NAME}'")

        server_ip = str(self.options.get("server_palo_alto_ip", None))
        server_version = str(self.options.get("palo_alto_version", None))
        server_api = str(self.options.get("palo_alto_api_key", None))

        tag = fn_inputs.palo_alto_firewall_tag_name

        self.LOG.info("[+] A new tag: {0}".format(tag))

        palo_alto_fw_api = Palo_Alto_Firewall_API.restAPI(palo_alto_ip=server_ip, palo_alto_version=server_version, api_key=server_api)

        response = palo_alto_fw_api.createNewTag(tagName=tag)
        if response:
            self.LOG.info("Create a new tag \"{0}\" succeeded.".format(tag))
            results = {
                "status": "success",
                "message": "Create a new tag \"{0}\" succeeded.".format(tag)
            }
        else:
            self.LOG.info("Create a new tag \"{0}\" has failed. {1}".format(tag, response['message']))
            results = {
                "status": "false",
                "message": "Create a new tag \"{0}\" has failed. {1}".format(tag, response['message'])
            }

        
        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")
        yield FunctionResult(results)
