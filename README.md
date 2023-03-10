# Palo Alto Firewall

## Table of Contents
- [Release Notes](#release-notes)
- [Overview](#overview)
  - [Key Features](#key-features)
- [Requirements](#requirements)
  - [SOAR platform](#soar-platform)
  - [Cloud Pak for Security](#cloud-pak-for-security)
  - [Python Environment](#python-environment)
- [Installation](#installation)
  - [Install](#install)
  - [App Configuration](#app-configuration)
- [Function - Palo Alto Firewall: Create a new tag](#function---palo-alto-firewall-create-a-new-tag)
- [Function - Palo Alto Firewall: Create an IP Address Object](#function---palo-alto-firewall-create-an-ip-address-object)
- [Function - Palo Alto Firewall: Delete an IP Address Object](#function---palo-alto-firewall-delete-an-ip-address-object)
- [Function - Palo Alto Firewall: View all GlobalProtect users](#function---palo-alto-firewall-view-all-globalprotect-users)
- [Function - Palo Alto Firewall: Disconnect a GlobalProtect user](#function---palo-alto-firewall-disconnect-a-globalprotect-user)
- [Notes](#notes)
- [Rules](#rules)
- [Troubleshooting & Support](#troubleshooting--support)

---

## Release Notes
| Version | Date | Notes |
| ------- | ---- | ----- |
| 1.0.0 | 03/2023 | Initial Release |

---

## Overview
**SOAR Components to Integrate with the Palo Alto Firewall**

 ![screenshot: main](./doc/screenshots/main.png)

This integration contains Functions to interact with Tag Name, Address Object, GlobalProtect User within Palo Alto Firewall.

### Key Features
* Create a new tag
* Create an IP Address Object
* Delete an IP Address Object
* View all GlobalProtect users
* Disconnect a GlobalProtect user

---

## Requirements
This app supports the IBM Security QRadar SOAR Platform and the IBM Security QRadar SOAR for IBM Cloud Pak for Security.

### SOAR platform
The SOAR platform supports two app deployment mechanisms, Edge Gateway (formerly App Host) and integration server.

If deploying to a SOAR platform with an Edge Gateway, the requirements are:
* SOAR platform >= `41.2.41`.
* The app is in a container-based format (available from the AppExchange as a `zip` file).

If deploying to a SOAR platform with an integration server, the requirements are:
* SOAR platform >= `41.2.41`.
* The app is in the older integration format (available from the AppExchange as a `zip` file which contains a `tar.gz` file).
* Integration server is running `resilient-circuits>=47.1.0`.
* If using an API key account, make sure the account provides the following minimum permissions: 
  | Name | Permissions |
  | ---- | ----------- |
  | Org Data | Read |
  | Function | Read |
 

The following SOAR platform guides provide additional information: 
* _Edge Gateway Deployment Guide_ or _App Host Deployment Guide_: provides installation, configuration, and troubleshooting information, including proxy server settings. 
* _Integration Server Guide_: provides installation, configuration, and troubleshooting information, including proxy server settings.
* _System Administrator Guide_: provides the procedure to install, configure and deploy apps. 

The above guides are available on the IBM Documentation website at [ibm.biz/soar-docs](https://ibm.biz/soar-docs). On this web page, select your SOAR platform version. On the follow-on page, you can find the _Edge Gateway Deployment Guide_, _App Host Deployment Guide_, or _Integration Server Guide_ by expanding **Apps** in the Table of Contents pane. The System Administrator Guide is available by expanding **System Administrator**.

### Cloud Pak for Security
If you are deploying to IBM Cloud Pak for Security, the requirements are:
* IBM Cloud Pak for Security >= `1.8`.
* Cloud Pak is configured with an Edge Gateway.
* The app is in a container-based format (available from the AppExchange as a `zip` file).

The following Cloud Pak guides provide additional information: 
* _Edge Gateway Deployment Guide_ or _App Host Deployment Guide_: provides installation, configuration, and troubleshooting information, including proxy server settings. From the Table of Contents, select Case Management and Orchestration & Automation > **Orchestration and Automation Apps**.
* _System Administrator Guide_: provides information to install, configure, and deploy apps. From the IBM Cloud Pak for Security IBM Documentation table of contents, select Case Management and Orchestration & Automation > **System administrator**.

These guides are available on the IBM Documentation website at [ibm.biz/cp4s-docs](https://ibm.biz/cp4s-docs). From this web page, select your IBM Cloud Pak for Security version. From the version-specific IBM Documentation page, select Case Management and Orchestration & Automation.


### Python Environment
Python 3.6 and Python 3.9 are supported.
Additional package dependencies may exist for each of these packages:
* resilient-circuits>=47.1.0


---

## Installation

### Install
* To install or uninstall an App or Integration on the _SOAR platform_, see the documentation at [ibm.biz/soar-docs](https://ibm.biz/soar-docs).
* To install or uninstall an App on _IBM Cloud Pak for Security_, see the documentation at [ibm.biz/cp4s-docs](https://ibm.biz/cp4s-docs) and follow the instructions above to navigate to Orchestration and Automation.

### App Configuration
The following table provides the settings you need to configure the app. These settings are made in the app.config file. See the documentation discussed in the Requirements section for the procedure.

| Config | Required | Example | Description |
| ------ | :------: | ------- | ----------- |
| **palo_alto_api_key** | Yes | `LUFRPT*base64 encoded string*` | *Enter the **X-PAN-KEY**.* |
| **palo_alto_version** | Yes | `10.1` | *Enter the Palo Alto Firewall **Version**. Versions from **10.1** to the latest are supported.* |
| **palo_alto_ip_address** | Yes | `192.168.1.1` | *Enter the Palo Alto Firewall **IP Address**.* |
| **palo_alto_verify** | Yes | `/path/to/cert.cer \| False` | *Enter the path to certificate or **False**.* |


---

## Function - Palo Alto Firewall: Create a new tag
Function to create a new tag on Palo Alto Firewall.

* We created a new tag, then create dynamic address groups and define the tags to filter on the firewall. 
* Finally, Use dynamic address groups in policy.

*Usecase*: 
> We want to create a **blacklist** address group. In the Palo Alto Firewall, we can use a dynamic address group with a tag name **blacklist**. Please refer link: [Use Dynamic Address Groups in Policy](https://docs.paloaltonetworks.com/pan-os/10-1/pan-os-admin/policy/monitor-changes-in-the-virtual-environment/use-dynamic-address-groups-in-policy)

> To do this, we create a tag first, then create a dynamic group with the match criteria '**blacklist**'. Then, for any new address that we want to add automatically to the dynamic group, we just create a new address with the **blacklist** tag.

 ![screenshot: fn-palo-alto-firewall-create-a-new-tag ](./doc/screenshots/fn-palo-alto-firewall-create-a-new-tag.png)

<details><summary>Inputs:</summary>
<p>

| Name | Type | Required | Example | Tooltip |
| ---- | :--: | :------: | ------- | ------- |
| `palo_alto_firewall_tag_name` | `text` | Yes | `blacklist` | *Enter tag name you want to create on Palo Alto FW* |

</p>
</details>

<details><summary>Outputs:</summary>
<p>

> **NOTE:** This example might be in JSON format, but `results` is a Python Dictionary on the SOAR platform.

```python
Result: {
  'version': 2.0, 
  'success': True, 
  'reason': None, 
  'content': {
    'status': 'success', 
    'message': 'Create a new tag "blacklist" succeeded.'
  }
} 
```

</p>
</details>

<details><summary>Example Pre-Process Script:</summary>
<p>

```python
inputs.palo_alto_firewall_tag_name = rule.properties.palo_alto_firewall_tag_name
```

</p>
</details>

<details><summary>Example Post-Process Script:</summary>
<p>

```python
if not results.success:
  incident.addNote("Create a new tag has error.")
else:
  incident.addNote(results.content['message'])
```

</p>
</details>

---
## Function - Palo Alto Firewall: Create an IP Address Object
Function to create an IP Address Object on Palo Alto Firewall.

*Usecase*: 
> We want to create a **blacklist** address group. In the Palo Alto Firewall, we can use a dynamic address group with a tag name **blacklist**. Please refer link: [Use Dynamic Address Groups in Policy](https://docs.paloaltonetworks.com/pan-os/10-1/pan-os-admin/policy/monitor-changes-in-the-virtual-environment/use-dynamic-address-groups-in-policy)


> To do this, we create a tag first, then create a dynamic group with the match criteria '**blacklist**'. Then, for any new address that we want to add automatically to the dynamic group, we just create a new address with the **blacklist** tag.

 ![screenshot: fn-palo-alto-firewall-create-an-ip-address-object ](./doc/screenshots/fn-palo-alto-firewall-create-an-ip-address-object.png)

<details><summary>Inputs:</summary>
<p>

| Name | Type | Required | Example | Tooltip |
| ---- | :--: | :------: | ------- | ------- |
| `palo_alto_firewall_address_objects_name` | `text` | Yes | `Host_192.168.1.1` | Enter Address Object Name |
| `palo_alto_firewall_ip` | `text` | Yes | `192.168.1.1` | Enter IP Address |
| `palo_alto_firewall_tag_name` | `text` | No | `blacklist` | Enter Tag name (if you want to assign) |

</p>
</details>

<details><summary>Outputs:</summary>
<p>

> **NOTE:** This example might be in JSON format, but `results` is a Python Dictionary on the SOAR platform.

```python
Result: {
  'version': 2.0, 
  'success': True, 
  'reason': None, 
  'content': {
    'status': 'success', 
    'message': 'Add ip: "192.168.1.1" succeeded'
  }
}
```

</p>
</details>

<details><summary>Example Pre-Process Script:</summary>
<p>

```python
inputs.palo_alto_firewall_ip = artifact.value
inputs.palo_alto_firewall_tag_name = rule.properties.palo_alto_firewall_tag_name
```

</p>
</details>

<details><summary>Example Post-Process Script:</summary>
<p>

```python
if not results.success:
  incident.addNote("Add IP has error.")
else:
  incident.addNote(results.content['message'])
```

</p>
</details>

---
## Function - Palo Alto Firewall: Delete an IP Address Object
Function to delete an IP Address Object on Palo Alto Firewall.

 ![screenshot: fn-palo-alto-firewall-delete-an-ip-address-object ](./doc/screenshots/fn-palo-alto-firewall-delete-an-ip-address-object.png)

<details><summary>Inputs:</summary>
<p>

| Name | Type | Required | Example | Tooltip |
| ---- | :--: | :------: | ------- | ------- |
| `palo_alto_firewall_address_objects_name` | `text` | Yes | `Host_192.168.1.1` | Enter Address Object Name |

</p>
</details>

<details><summary>Outputs:</summary>
<p>

> **NOTE:** This example might be in JSON format, but `results` is a Python Dictionary on the SOAR platform.

```python
Result: {
  'version': 2.0, 
  'success': True, 
  'reason': None, 
  'content': {
    'status': 'success', 
    'message': 'Delete IP address object "Host_192.168.1.1" succeeded.'
  }
}
```

</p>
</details>

<details><summary>Example Pre-Process Script:</summary>
<p>

```python
inputs.palo_alto_firewall_address_objects_name = rule.properties.palo_alto_firewall_object_name
```

</p>
</details>

<details><summary>Example Post-Process Script:</summary>
<p>

```python
incident.addNote(results.content['message'])
```

</p>
</details>


---
## Function - Palo Alto Firewall: View all GlobalProtect users
Function to view all GlobalProtect Users logging on Palo Alto Firewall.

 ![screenshot: fn-palo-alto-firewall-view-all-globalprotect-users ](./doc/screenshots/fn-palo-alto-firewall-view-all-globalprotect-users.png)

</p>
</details>

<details><summary>Inputs:</summary>
<p>

```python
None
```

</p>
</details>

<details><summary>Outputs:</summary>
<p>

> **NOTE:** This example might be in JSON format, but `results` is a Python Dictionary on the SOAR platform.

```python
Result: {
  'version': 2.0, 
  'success': True, 
  'reason': None, 
  'content': {
    'status': 'success', 
    'message': 'Viewing all GlobalProtect users succeeded. \n 
    | Username | Computer   | Virtual IP  | Public IP      | Login Time      |
    | Johndoe  | John-PC    | 192.168.10.11 | 172.217.160.78 | Mar.03 04:31:07 |
    | Richard  | Richard-PC | 192.168.10.12 | 104.16.181.15  | Mar.03 15:20:14 |
    | Janie    | Janie-PC   | 192.168.10.14 | 15.162.27.93   | Mar.03 09:47:37 |'
  }
} 
```

</p>
</details>

<details><summary>Example Pre-Process Script:</summary>
<p>

```python
None
```

</p>
</details>

<details><summary>Example Post-Process Script:</summary>
<p>

```python
message = results.content['message']
message = message.replace(" ", "&nbsp;")

incident.addNote(message)
```

</p>
</details>

For the function: *Disconnect a GlobalProtect user*, the input: *palo_alto_firewall_gateway*, needs to have "**-N**" at the end of the GlobalProtect gateway name.
>  
> Example: 
> - If your GlobalProtect gateway name : **GlobalProtect-Gateway**
> - Then input needs to be change to:  **GlobalProtect-Gateway-N**
For the function: *Disconnect a GlobalProtect user*, the input: *palo_alto_firewall_gateway*, needs to have "**-N**" at the end of the GlobalProtect gateway name.
>  
> Example: 
> - If your GlobalProtect gateway name : **GlobalProtect-Gateway**
> - Then input needs to be change to:  **GlobalProtect-Gateway-N**
---
## Function - Palo Alto Firewall: Disconnect a GlobalProtect user
Function to disconnect a GlobalProtect user on Palo Alto Firewall.

 ![screenshot: fn-palo-alto-firewall-disconnect-a-globalprotect-user ](./doc/screenshots/fn-palo-alto-firewall-disconnect-a-globalprotect-user.png)

<details><summary>Inputs:</summary>
<p>

| Name | Type | Required | Example | Tooltip |
| ---- | :--: | :------: | ------- | ------- |
| `palo_alto_firewall_gateway` | `text` | Yes | `-` | Enter GlobalProtect Gateway name |
| `palo_alto_firewall_user` | `text` | Yes | `-` | Enter GlobalProtect User name |
| `palo_alto_firewall_computer` | `text` | Yes | `-` | Enter Computer Name  |
</p>
</details>

<details><summary>Outputs:</summary>
<p>

> **NOTE:** This example might be in JSON format, but `results` is a Python Dictionary on the SOAR platform.

```python
Result: {
  'version': 2.0, 
  'success': True, 
  'reason': None, 
  'content': {
    'status': 'success', 
    'message': 'Disable the Global Protect "test" user has succeeded.'
  }
} 
```

</p>
</details>

<details><summary>Example Pre-Process Script:</summary>
<p>

```python
inputs.palo_alto_firewall_gateway = rule.properties.palo_alto_firewall_gateway
inputs.palo_alto_firewall_user = artifact.value
inputs.palo_alto_firewall_computer = rule.properties.palo_alto_firewall_computer
```

</p>
</details>

<details><summary>Example Post-Process Script:</summary>
<p>

```python
incident.addNote(results.content['message'])
```

</p>
</details>

---
### Notes:
 The functions work with two types of API - Rest API and XML API - based on Palo Alto Firewall.

Rest API:
* Create a new tag
* Create an IP Address Object
* Delete an IP Address Object

XML API:
* View all GlobalProtect users
* Disconnect a GlobalProtect user

For the function using the Rest API, if you use more than one virtual system on a Palo Alto Firewall please edit **vsys1** in file path "*components > modules > Palo_Alto_Firewall_API.py*" to match your desired vsys.

For the function: *Disconnect a GlobalProtect user*, the input: *palo_alto_firewall_gateway*, needs to have "**-N**" at the end of the GlobalProtect gateway name.
>  
> Example: 
> - If your GlobalProtect gateway name : **GlobalProtect-Gateway**
> - Then input needs to be change to:  **GlobalProtect-Gateway-N**
---





## Rules
| Rule Name | Object | Workflow Triggered |
| --------- | ------ | ------------------ |
| Palo Alto Firewall: Create a new tag | incident | `palo_alto_firewall_create_a_new_tag` |
| Palo Alto Firewall: Create an IP Address Object | artifact | `palo_alto_firewall_create_an_ip_address_object` |
| Palo Alto Firewall: Delete an IP Address Object | artifact | `palo_alto_firewall_delete_an_ip_address_object` |
| Palo Alto Firewall: View all GlobalProtect users | incident | `palo_alto_firewall_view_all_globalprotect_users` |
| Palo Alto Firewall: Disconnect a GlobalProtect user | artifact | `palo_alto_firewall_disconnect_a_globalprotect_user` |


---


## Troubleshooting & Support
Refer to the documentation listed in the Requirements section for troubleshooting information.

### For Support
This is a IBM Community provided App. Please search the Community [ibm.biz/soarcommunity](https://ibm.biz/soarcommunity) for assistance.
Or contact us through github
