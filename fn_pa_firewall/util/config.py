# -*- coding: utf-8 -*-

"""Generate a default configuration-file section for fn_pa_firewall"""


def config_section_data():
    """
    Produce add the default configuration section to app.config,
    for fn_pa_firewall when called by `resilient-circuits config [-c|-u]`
    """
    config_data = None

    config_data = u"""[fn_pa_firewall]
palo_alto_ip_address = <<Enter your server ip>>
palo_alto_version = <<Enter your version>>
palo_alto_api_key = <<Enter your API key!>>
palo_alto_verify = <<Enter path to cert file | False>>
"""
    return config_data
