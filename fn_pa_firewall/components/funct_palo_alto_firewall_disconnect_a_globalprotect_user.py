# -*- coding: utf-8 -*-

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from resilient_lib import IntegrationError, validate_fields
from fn_pa_firewall.components.modules import Palo_Alto_Firewall_API

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
        computer = fn_inputs.palo_alto_firewall_computer

        self.LOG.info(
            "[+] Disconnecting a GlobalProtect user: {0}".format(user))

        palo_alto_fw_api = Palo_Alto_Firewall_API.xmlAPI(
            palo_alto_ip=server_ip, api_key=server_api)

        if palo_alto_fw_api.disconnect_a_GlobalProtect_user(gateway=gateway, user=user, computer=computer) == True:
            self.LOG.info(
                "Disable the Global Protect \"{0}\" user has succeeded.".format(user))
            results = {
                "status": "success",
                "message": "Disable the Global Protect \"{0}\" user has succeeded.".format(user)
            }
        else:
            self.LOG.info(
                "Disable the Global Protect \"{0}\" user has failed.".format(user))
            results = {
                "status": "false",
                "message": "Disable the Global Protect \"{0}\" user has failed.".format(user)
            }
        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")

        yield FunctionResult(results)
        self.LOG.info(results)