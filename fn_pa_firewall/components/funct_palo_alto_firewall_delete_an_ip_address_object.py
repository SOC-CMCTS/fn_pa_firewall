# -*- coding: utf-8 -*-
# Generated with resilient-sdk v48.0.4034

"""AppFunction implementation"""

from resilient_circuits import AppFunctionComponent, app_function, FunctionResult
from fn_pa_firewall.components.modules import Palo_Alto_Firewall_API

PACKAGE_NAME = "fn_pa_firewall"
FN_NAME = "palo_alto_firewall_delete_an_ip_address_object"


class FunctionComponent(AppFunctionComponent):
    """Component that implements function 'palo_alto_firewall_delete_an_ip_address_object'"""

    def __init__(self, opts):
        super(FunctionComponent, self).__init__(opts, PACKAGE_NAME)

    @app_function(FN_NAME)
    def _app_function(self, fn_inputs):
        """
        Function: None
        Inputs:
            -   fn_inputs.palo_alto_firewall_address_objects_name
        """

        yield self.status_message(f"Starting App Function: '{FN_NAME}'")
        server_ip = str(self.options.get("palo_alto_ip_address", None))
        server_version = str(self.options.get("palo_alto_version", None))
        server_api = str(self.options.get("palo_alto_api_key", None))

        address_object_name = fn_inputs.palo_alto_firewall_address_objects_name

        self.LOG.info("Address Object Name: {}".format(address_object_name))

        pa_fw_api = Palo_Alto_Firewall_API.RestAPI(
            palo_alto_ip=server_ip, palo_alto_version=server_version, api_key=server_api)

        results = None

        # Check if the address object exists before deleting it
        if pa_fw_api.getAddressObject(addressObject=address_object_name) is not None:
            response = pa_fw_api.deleteAddressObject(
                addressName=address_object_name)
            if response is True:
                self.LOG.info(
                    f"[+] Delete IP address object \"{address_object_name}\" succeeded.")
                results = {
                    "status": "success",
                    "message": f"Delete IP address object \"{address_object_name}\" succeeded."
                }
            else:
                self.LOG.info(
                    f"[+] Delete IP address object \"{address_object_name}\" has failed."
                    f"{response['message']}")              
                results = {
                    "status": "false",
                    "message": f"Delete IP address object \"{address_object_name}\" has failed."
                    f"{response['message']}"
                }
        else:
            self.LOG.info(
                f"IP address object \"{address_object_name}\" does not exist.")
            results = {
                "status": "false",
                "message": f"IP address object \"{address_object_name}\" does not exist."
            }
            self.LOG.info(
                print (results)
            )

        yield self.status_message(f"Finished running App Function: '{FN_NAME}'")
<<<<<<< HEAD
=======

        # Note this is only used for demo purposes!
        # Put your own key/value pairs here that you want to access on the Platform
        results = {"mock_key": "Mock Value!"}

>>>>>>> c251951c8a4a8a9947b6554c87bc346a6a1a82eb
        yield FunctionResult(results)
