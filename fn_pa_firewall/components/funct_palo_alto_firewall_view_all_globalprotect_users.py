# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError, validate_fields
from fn_pa_firewall.components.modules import Palo_Alto_Firewall_API
import json

PACKAGE_NAME = "fn_pa_firewall"
FN_NAME = "palo_alto_firewall_view_all_globalprotect_users"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'palo_alto_firewall_view_all_globalprotect_users'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: None
        """

        yield self.status_message(f"Starting App Function: '{FN_NAME}'")

        server_ip = str(self.options.get("server_palo_alto_ip", None))
        server_version = str(self.options.get("palo_alto_version", None))
        server_api = str(self.options.get("palo_alto_api_key", None))

        self.LOG.info(
            "[+] Executing action: view all GlobalProtect users...")

        palo_alto_fw_api = Palo_Alto_Firewall_API.xmlAPI(
            palo_alto_ip=server_ip, api_key=server_api)

        list_users = palo_alto_fw_api.view_all_GlobalProtect_users()
        self.LOG.info(list_users)

        if list_users != None:
            self.LOG.info(
                "[+] Viewing all GlobalProtect users succeeded")
            results = {
                "status": "success",
                "message": "Viewing all GlobalProtect users succeeded. \n <br>{}".format(list_users)
            }
        else:
            self.LOG.info(
                "[!] Viewing all GlobalProtect users has failed.")
            results = {
                "status": "false",
                "message": "Viewing all GlobalProtect users has failed."
            }

        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")

        yield FunctionResult(results)
        # yield FunctionResult({}, success=False, reason="Bad call")
