import logging
import json
import requests
from xml.etree import ElementTree
from lxml import etree


class restAPI:
    def __init__(self, palo_alto_ip, palo_alto_version, api_key):
        self.api_key = api_key
        self.LOG = logging.getLogger(__name__)

        self.server_url = "https://{0}/restapi/v{1}".format(
            palo_alto_ip, palo_alto_version)
        self.header = {
            "Content-type": "application/json",
            "X-PAN-KEY": api_key
        }

    def getAddresses(self, address_name):
        requests.packages.urllib3.disable_warnings()

        path = "/Objects/Addresses?location=vsys&vsys=vsys1&name={0}".format(
            address_name)
        try:
            response = requests.get(
                self.server_url + path, headers=self.header, verify=False)
            return response.json()
        except:
            return None

    def getTagName(self, tagName):
        requests.packages.urllib3.disable_warnings()
        path = "/objects/tags?location=vsys&vsys=vsys1&name={0}".format(
            tagName)

        try:
            response = requests.get(
                self.server_url + path, headers=self.header, verify=False)
            if response.json()["@status"] == "success":
                return True
        except:
            return False

    def createNewTag(self, tagName):
        requests.packages.urllib3.disable_warnings()
        path = "/objects/tags?location=vsys&vsys=vsys1&name={0}".format(
            tagName)
        data = {
            "entry": {
                "@name": "{0}".format(tagName),
                "comments": ""
            }
        }
        try:
            response = requests.post(
                self.server_url + path, headers=self.header, json=data, verify=False)
            if "@status" in response.json() and response.json()["@status"] == "success":
                return True
            return response.json()
        except:
            return False

    def createNewAddress(self, addressIP, tagName):
        requests.packages.urllib3.disable_warnings()
        path = "/Objects/Addresses?location=vsys&vsys=vsys1&name=blacklist-{0}".format(
            addressIP)

        body = {
            "entry": [
                {
                    "@location": "vsys",
                    "@name": "blacklist-{0}".format(addressIP),
                    "description": "blacklist-{0}".format(addressIP),
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
                self.server_url + path, headers=self.header, data=json.dumps(body), verify=False)
            if "@status" in response.json() and response.json()["@status"] == "success":
                return True
            return response.json()

        except Exception as e:
            return "Error in request. {0}".format(e)


class xmlAPI:
    def __init__(self, palo_alto_ip, api_key):
        self.api_key = api_key
        self.LOG = logging.getLogger(__name__)

        self.server_url = "https://{0}/api/?type=op&cmd=".format(palo_alto_ip)
        self.header = {
            "Content-type": "application/json",
            "X-PAN-KEY": api_key
        }

    def disconnect_a_GlobalProtect_user(self, gateway, user, computer):
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
                self.server_url + (str(body)).strip(), headers=self.header, verify=False)
            xml_response_data = ElementTree.fromstring(response.content)
            # self.LOG.info("Request 1005: " + self.server_url + (str(body)).strip())
            if response.status_code == 200:
                for line in xml_response_data.findall('.//line'):
                    self.LOG.info(line.text)
            # self.LOG.info(xml_response_data.find('result/response').get('status'))
            if xml_response_data.find('result/response').get('status') == "success":
                return True
            return False
        except Exception as e:
            return "Error in request: {0}".format(e)
        
    def view_all_GlobalProtect_users(self):
        requests.packages.urllib3.disable_warnings()
        body = "<show><global-protect-gateway><current-user/></global-protect-gateway></show>"
        try:
            # send request
            response = requests.get(
                self.server_url + (str(body)).strip(), headers=self.header, verify=False)
            #self.LOG.info(response.content)

            # parse the XML string
            xml_response = etree.fromstring(response.content)
            #self.LOG.info(xml_response.attrib['status'])

            if xml_response.attrib['status'] == "success":
                # extract the values of interest for each entry and store them in a list of dictionaries
                entries = []
                for entry_elem in xml_response.findall(".//entry"):
                    entry = {
                        "username": entry_elem.find("username").text,
                        "computer": entry_elem.find("computer").text,
                        "virtual_ip": entry_elem.find("virtual-ip").text,
                        "public_ip": entry_elem.find("public-ip").text,
                        "login_time": entry_elem.find("login-time").text,
                    }
                    entries.append(entry)
                # display the results in a table
                #results = "{:<15} {:<20} {:<15} {:<15} {:<20} \n".format("Username", "Computer", "Virtual IP", "Public IP", "Login Time")
                #self.LOG.info("{:<15} {:<20} {:<15} {:<15} {:<20}".format("Username", "Computer", "Virtual IP", "Public IP", "Login Time"))
                for entry in entries:
                    self.LOG.info("{:<15} {:<20} {:<15} {:<15} {:<20}".format(entry["username"], entry["computer"], entry["virtual_ip"], entry["public_ip"], entry["login_time"]))
                    #results += "{:<15} {:<20} {:<15} {:<15} {:<20} \n".format(entry["username"], entry["computer"], entry["virtual_ip"], entry["public_ip"], entry["login_time"])
                return json.dumps(entries)
            return None
        except Exception as e:
            return "Error in request: {0}".format(e)
