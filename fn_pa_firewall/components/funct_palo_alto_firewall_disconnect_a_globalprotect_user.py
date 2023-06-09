# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from fn_pa_firewall.components.modules import Palo_Alto_Firewall_API

PACKAGE_NAME = "fn_pa_firewall"
FN_NAME = "palo_alto_firewall_disconnect_a_globalprotect_user"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'palo_alto_firewall_disconnect_a_globalprotect_user'"""

    def __init__(self, opts):
        super().__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: Function to disconnect a GlobalProtect user on Palo Alto Firewall
        Inputs:
            -   fn_inputs.palo_alto_firewall_gateway
            -   fn_inputs.palo_alto_firewall_user
            -   fn_inputs.palo_alto_firewall_computer
        """
        yield self.status_message(f"Starting App Function: '{FN_NAME}'")

        server_ip = str(self.options.get("palo_alto_ip_address", None))
        server_api = str(self.options.get("palo_alto_api_key", None))
        cert_file = str(self.options.get("palo_alto_verify", None))

        gateway = fn_inputs.palo_alto_firewall_gateway
        user = fn_inputs.palo_alto_firewall_user
        computer = fn_inputs.palo_alto_firewall_computer

        self.LOG.info(f"[+] Disconnecting a GlobalProtect user: {user}")

        palo_alto_fw_api = Palo_Alto_Firewall_API.XmlAPI(
            palo_alto_ip=server_ip, api_key=server_api, verify=cert_file)

        if palo_alto_fw_api.disconnect_a_global_potect_user(gateway=gateway, user=user, computer=computer) is True:
            self.LOG.info(f"Disable the Global Protect \"{user}\" user has succeeded.")
            results = {
                "status": "success",
                "message": f"Disable the Global Protect \"{user}\" user has succeeded."
            }
        else:
            self.LOG.info("Disable the Global Protect \"{0}\" user has failed.".format(user))
            results = {
                "status": "false",
                "message": f"Disable the Global Protect \"{user}\" user has failed."
            }

        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")
        yield FunctionResult(results)
        self.LOG.info(results)
