import logging
import requests

class Palo_Alto_Firewall_API:
    def __init__(self, palo_alto_ip, palo_alto_version, api_key):
        self.api_key = api_key
        self.LOG = logging.getLogger(__name__)

        self.server_url = "https://{0}/restapi/v{1}".format(palo_alto_ip, palo_alto_version)
        self.header = {
            "Content-type": "application/json",
            "X-PAN-KEY": api_key
        }
    
    def getAddresses(self, address_name):
        requests.packages.urllib3.disable_warnings()

        path = "/Objects/Addresses?location=vsys&vsys=vsys1&name={0}".format(address_name)
        try:
            response = requests.get(self.server_url + path, headers=self.header, verify=False)
            return response.json()
        except:
            return None

    def createNewTag(self, tagName):
        requests.packages.urllib3.disable_warnings()
        path = "/objects/tags?location=vsys&vsys=vsys1&name={0}".format(tagName)
        data = {
            "entry": {
                "@name": "{0}".format(tagName),
                "comments": ""
            }
        }
        try:
            response = requests.post(self.server_url + path, headers=self.header, json=data, verify=False)
            if response.json()["@status"] == "success":
                return True
            return response.json()
        except:
            return False


