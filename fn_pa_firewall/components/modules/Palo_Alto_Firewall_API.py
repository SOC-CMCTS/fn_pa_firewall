# -*- coding: utf-8 -*-
# pragma pylint: disable=unused-argument, no-self-use, W1203, E1101, C0209
"""AppFunction implementation"""
import logging
import json
import requests
import defusedxml.ElementTree as ET



class RestAPI:
    """
    Component that implements functions:
        - get_address_object
        - get_tagName
        - create_a_new_tag
        - create_a_new_address
        - delete_address_object
    """
    def __init__(self, palo_alto_ip, palo_alto_version, api_key, verify):
        self.api_key = api_key
        self.log = logging.getLogger(__name__)
        self.verify = verify
        if verify == "False" or verify is None:
            self.verify = False
        self.server_url = f"https://{palo_alto_ip}/restapi/v{palo_alto_version}"
        self.header = {
            "Content-type": "application/json",
            "X-PAN-KEY": api_key
        }


    def get_address_object(self, address_object):
        """Get an address object"""
        requests.packages.urllib3.disable_warnings()
        path = f"/Objects/Addresses?location=vsys&vsys=vsys1&name={address_object}"
        try:
            response = requests.get(
                self.server_url + path, headers=self.header, timeout=5, verify=self.verify)
            self.log.info(response.json())
            if "@status" in response.json() and response.json()["@status"] == "success":
                return True
            return False

        except requests.exceptions.RequestException as error_message:
            self.log.info(f"Error in request. {error_message}")
            return None

    def get_tagName(self, tagName):
        """Get a tag name"""
        requests.packages.urllib3.disable_warnings()
        path = f"/objects/tags?location=vsys&vsys=vsys1&name={tagName}"

        try:
            response = requests.get(
                self.server_url + path, headers=self.header, timeout=5, verify=self.verify)
            if response.json()["@status"] == "success":
                return True
        except requests.exceptions.RequestException as error_message:
            self.log.info(f"Error in request. {error_message}")
            return None
    
    def create_a_new_tag(self, tagName):
        """Create a new tag"""
        requests.packages.urllib3.disable_warnings()
        path = f"/Objects/tags?location=vsys&vsys=vsys1&name={tagName}"
        body = {
            "entry": {
                "@name": f"{tagName}",
                "comments": ""
            }
        }
        try:
            response = requests.post(self.server_url + path, headers=self.header, data=json.dumps(body), timeout=5, verify=self.verify)
            if "@status" in response.json() and response.json()["@status"] == "success":
                return True
            return response.json()["message"]
        except requests.exceptions.RequestException as error_message:
            self.log.info(f"Error in request. {error_message}")
            return None

    def create_a_new_address(self, addressIP, objectName, tagName):
        """Create a new address"""
        requests.packages.urllib3.disable_warnings()
        path = f"/Objects/Addresses?location=vsys&vsys=vsys1&name={objectName}"

        body = {
            "entry": [
                {
                    "@location": "vsys",
                    "@name": f"{objectName}",
                    "description": f"{objectName}",
                    "ip-netmask": addressIP,
                    "tag": {
                    }
                }
            ]
        }

        if not tagName is None:
            body = {
                "entry": [
                    {
                        "@location": "vsys",
                        "@name": f"{objectName}",
                        "description": f"{objectName}",
                        "ip-netmask": addressIP,
                        "tag": {
                            "member": [
                                tagName
                            ]
                        }
                    }
                ]
            }

        try:
            response = requests.post(
                self.server_url + path, headers=self.header, data=json.dumps(body), timeout=5, verify=self.verify)
            if "@status" in response.json() and response.json()["@status"] == "success":
                return True
            return response.json()

        except requests.exceptions.RequestException as error_message:
            self.log.info(f"Error in request. {error_message}")
            return None

    def delete_address_object(self, address_name):
        """Delete an address object"""
        requests.packages.urllib3.disable_warnings()
        path = f"/Objects/Addresses?location=vsys&vsys=vsys1&name={address_name}"

        try:
            response = requests.delete(
                self.server_url + path, headers=self.header, timeout=5, verify=self.verify)
            if "@status" in response.json() and response.json()["@status"] == "success":
                return True
            return response.json()

        except requests.exceptions.RequestException as error_message:
            self.log.info(f"Error in request. {error_message}")
            return None


class XmlAPI:
    """
    Component that implements functions:
        - disconnect_a_global_potect_user
        - view_all_global_protect_users
    """
    def __init__(self, palo_alto_ip, api_key, verify):
        self.api_key = api_key
        self.log = logging.getLogger(__name__)
        self.verify = verify
        if verify == "False" or verify is None:
            self.verify = False

        self.server_url = f"https://{palo_alto_ip}/api/?type=op&cmd="
        self.header = {
            "Content-type": "application/json",
            "X-PAN-KEY": api_key
        }

    def disconnect_a_global_potect_user(self, gateway, user, computer):
        """Disconnect a global protect user"""
        requests.packages.urllib3.disable_warnings()
        body = """
            <request>
                <global-protect-gateway>
                    <client-logout>
                        <gateway>{0}</gateway>
                        <user>{1}</user>
                        <reason>force-logout</reason>
                        <computer>{2}</computer>
                    </client-logout>
                </global-protect-gateway>
            </request>
            """.format(gateway, user, computer)
        try:
            response = requests.post(
                self.server_url + (str(body)).strip(), headers=self.header, timeout=5, verify=self.verify)
            xml_response_data = ET.fromstring(response.content)
            # Check value of the 'status' attribute of the 'response' element
            if xml_response_data.find('result/response').get('status') == "success":
                return True
            return False
        except requests.exceptions.RequestException as error_message:
            self.log.info(f"Error in request. {error_message}")
            return None
        
    def view_all_global_protect_users(self):
        """View all global protect users"""
        requests.packages.urllib3.disable_warnings()
        body = "<show><global-protect-gateway><current-user/></global-protect-gateway></show>"
        try:
            response = requests.get(
                self.server_url + (str(body)).strip(), headers=self.header, timeout=5, verify=self.verify)
            # self.LOG.info(response.content)

            # parse the XML string
            xml_response = ET.fromstring(response.content)
            # self.LOG.info(xml_response.attrib['status'])

            if xml_response.attrib['status'] == "success":
                # extract the values of interest for each entry and store them in a list of dictionaries
                entries = []
                for entry_elem in xml_response.findall(".//entry"):
                    entry = {
                        "Username": entry_elem.find("username").text,
                        "Computer": entry_elem.find("computer").text,
                        "Virtual IP": entry_elem.find("virtual-ip").text,
                        "Public IP": entry_elem.find("public-ip").text,
                        "Login Time": entry_elem.find("login-time").text,
                    }
                    entries.append(entry)

                data = json.loads(json.dumps(entries))

                header = ["Username", "Computer",
                          "Virtual IP", "Public IP", "Login Time"]
                col_widths = [max(len(header[i]), max(
                    len(str(row[header[i]])) for row in data)) for i in range(len(header))]

                # print the header row
                results_table = ("<pre>| {} |<pre><br>".format(" | ".join("{:<{width}}".format(
                    header[i], width=col_widths[i]) for i in range(len(header)))))
                
                # print the data rows
                for row in data:
                    results_table += ("| {} |".format(" | ".join("{:<{width}}".format(
                        str(row[header[i]]), width=col_widths[i]) for i in range(len(header)))))
                    results_table += ("<br><pre>+{}+<pre><br>".format(
                        "+".join("-" * (col_widths[i] + 2) for i in range(len(header)))))

                results_table = results_table.replace(" ", "&nbsp;")
                return results_table
            return False
        except requests.exceptions.RequestException as error_message:
            self.log.info(f"Error in request. {error_message}")
            return None
