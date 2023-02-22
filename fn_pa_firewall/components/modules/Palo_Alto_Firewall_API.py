import logging
import json
import requests


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

        self.server_url = "https://{0}/api/?type=op&cmd=".format(
            palo_alto_ip)
        self.header = {
            "Content-type": "application/json",
            "X-PAN-KEY": api_key
        }

    def disconnect_a_GlobalProtect_user(self, gateway, user, reason, computer):
        requests.packages.urllib3.disable_warnings()
        body = """
            <request>
                <global-protect-gateway>
                    <client-logout>
                        <gateway>{0}</gateway>
                        <user>{1}</user>
                        <reason>{2}</reason>
                        <computer>{3}</computer>
                    </client-logout>
                </global-protect-gateway>
            </request>
            """.format(gateway, user, reason, computer)
        response = requests.post(
            self.server_url + (str(body)).strip(), headers=self.header, verify=False)
        self.LOG.info("Ressponse: " + self.server_url + (str(body)).strip())
