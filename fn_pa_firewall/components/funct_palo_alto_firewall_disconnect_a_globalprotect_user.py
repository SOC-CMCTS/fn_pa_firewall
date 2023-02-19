# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError, validate_fields

PACKAGE_NAME = "fn_pa_firewall"
FN_NAME = "palo_alto_firewall_disconnect_a_globalprotect_user"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'palo_alto_firewall_disconnect_a_globalprotect_user'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):

        yield self.status_message(f"Starting App Function: '{FN_NAME}'")

        server_ip = str(self.options.get("server_palo_alto_ip", None))
        server_version = str(self.options.get("palo_alto_version", None))
        server_api = str(self.options.get("palo_alto_api_key", None))

        gateway = fn_inputs.palo_alto_firewall_gateway
        user = fn_inputs.palo_alto_firewall_user
        reason = fn_inputs.palo_alto_firewall_reason
        computer = fn_inputs.palo_alto_firewall_computer

        self.LOG.info("[+] Disconnect a GlobalProtect user: {0}".format(user))

        palo_alto_fw_api = Palo_Alto_Firewall_API(
            palo_alto_ip=server_ip, palo_alto_version=server_version, api_key=server_api)

        if palo_alto_fw_api.disconnect_a_GlobalProtect_user(gateway=gateway, user=user, reason=reason, computer=computer):
            self.LOG.info(
                "Create a new user \"{0}\" has succeeded.".format(user))
            results = {
                "status": "success",
                "message": "Create a new user \"{0}\" has succeeded.".format(user)
            }
        else:
            self.LOG.info("Create a new user \"{0}\" has failed.".format(user))
            results = {
                "status": "false",
                "message": "Create a new user \"{0}\" has failed.".format(disconnect_user)
            }

        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")

        # Note this is only used for demo purposes! Put your own key/value pairs here that you want to access on the Platform
        results = {"mock_key": "Mock Value!"}

        yield FunctionResult(results)
        # yield FunctionResult({}, success=False, reason="Bad call")
