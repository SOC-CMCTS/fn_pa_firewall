#!/usr/bin/env python
# -*- coding: utf-8 -*-

from setuptools import setup, find_packages
import glob
import ntpath


def get_module_name(module_path):
    """
    Return the module name of the module path
    """
    return ntpath.split(module_path)[1].split(".")[0]


def snake_to_camel(word):
    """
    Convert a word from snake_case to CamelCase
    """
    return ''.join(x.capitalize() or '_' for x in word.split('_'))


setup(
    name="fn_pa_firewall",
    display_name="Palo Alto Firewall",
    version="1.0.0",
    license="MIT",
    author="CMC TS SOC",
    author_email="scenterportal@cmc.com.vn",
    url="https://cmctssg.vn",
    description="SOAR Components to Integrate with the Palo Alto Firewall",
    long_description="""This integration contains Functions to interact with address groups, addresses, Global Protect User within Palo Alto Firewall.""",
    install_requires=[
        "resilient-circuits>=47.1.0"
    ],
    python_requires='>=3.6',
    packages=find_packages(),
    include_package_data=True,
    platforms="any",
    classifiers=[
        "Programming Language :: Python",
    ],
    entry_points={
        "resilient.circuits.components": [
            # When setup.py is executed, loop through the .py files in the components directory and create the entry points.
            "{}FunctionComponent = fn_pa_firewall.components.{}:FunctionComponent".format(snake_to_camel(get_module_name(filename)), get_module_name(filename)) for filename in glob.glob("./fn_pa_firewall/components/[a-zA-Z]*.py")
        ]
        ,
        "resilient.circuits.configsection": ["gen_config = fn_pa_firewall.util.config:config_section_data"],
        "resilient.circuits.customize": ["customize = fn_pa_firewall.util.customize:customization_data"],
        "resilient.circuits.selftest": ["selftest = fn_pa_firewall.util.selftest:selftest_function"]
    }
)
