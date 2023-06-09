# -*- coding: utf-8 -*-
# Generated with resilient-sdk v48.0.4034

"""Generate the Resilient customizations required for fn_pa_firewall"""

import base64
import os
import io
try:
    from resilient import ImportDefinition
except ImportError:
    # Support Apps running on resilient-circuits < v35.0.195
    from resilient_circuits.util import ImportDefinition

RES_FILE = "data/export.res"


def codegen_reload_data():
    """
    Parameters required reload codegen for the fn_pa_firewall package
    """
    return {
        "package": u"fn_pa_firewall",
        "message_destinations": [u"palo_alto_firewall_integration_for_soar"],
        "functions": [u"palo_alto_firewall_create_a_new_tag", u"palo_alto_firewall_create_an_ip_address_object", u"palo_alto_firewall_delete_an_ip_address_object", u"palo_alto_firewall_disconnect_a_globalprotect_user", u"palo_alto_firewall_view_all_globalprotect_users"],
        "workflows": [u"palo_alto_firewall_create_a_new_tag", u"palo_alto_firewall_create_an_ip_address_object", u"palo_alto_firewall_delete_an_ip_address_object", u"palo_alto_firewall_disconnect_a_globalprotect_user", u"palo_alto_firewall_view_all_globalprotect_users"],
        "actions": [u"Palo Alto Firewall: Create a new tag", u"Palo Alto Firewall: Create an IP Address Object", u"Palo Alto Firewall: Delete an IP Address Object", u"Palo Alto Firewall: Disconnect a GlobalProtect user", u"Palo Alto Firewall: View all GlobalProtect users"],
        "incident_fields": [],
        "incident_artifact_types": [],
        "incident_types": [],
        "datatables": [],
        "automatic_tasks": [],
        "scripts": [],
        "playbooks": []
    }


def customization_data(client=None):
    """
    Returns a Generator of ImportDefinitions (Customizations).
    Install them using `resilient-circuits customize`

    IBM SOAR Platform Version: 41.2.41

    Contents:
    - Message Destinations:
        - palo_alto_firewall_integration_for_soar
    - Functions:
        - palo_alto_firewall_create_a_new_tag
        - palo_alto_firewall_create_an_ip_address_object
        - palo_alto_firewall_delete_an_ip_address_object
        - palo_alto_firewall_disconnect_a_globalprotect_user
        - palo_alto_firewall_view_all_globalprotect_users
    - Workflows:
        - palo_alto_firewall_create_a_new_tag
        - palo_alto_firewall_create_an_ip_address_object
        - palo_alto_firewall_delete_an_ip_address_object
        - palo_alto_firewall_disconnect_a_globalprotect_user
        - palo_alto_firewall_view_all_globalprotect_users
    - Rules:
        - Palo Alto Firewall: Create a new tag
        - Palo Alto Firewall: Create an IP Address Object
        - Palo Alto Firewall: Delete an IP Address Object
        - Palo Alto Firewall: Disconnect a GlobalProtect user
        - Palo Alto Firewall: View all GlobalProtect users
    """

    res_file = os.path.join(os.path.dirname(__file__), RES_FILE)
    if not os.path.isfile(res_file):
        raise FileNotFoundError("{} not found".format(RES_FILE))

    with io.open(res_file, mode='rt') as f:
        b64_data = base64.b64encode(f.read().encode('utf-8'))
        yield ImportDefinition(b64_data)