<!--
  This README.md is generated by running:
  "resilient-sdk docgen -p fn_pa_firewall"

  This file was generated with resilient-sdk v48.0.4034

  It is best edited using a Text Editor with a Markdown Previewer. VS Code
  is a good example. Checkout https://guides.github.com/features/mastering-markdown/
  for tips on writing with Markdown

  All fields followed by "::CHANGE_ME::"" should be manually edited

  If you make manual edits and run docgen again, a .bak file will be created

  Store any screenshots in the "doc/screenshots" directory and reference them like:
  ![screenshot: screenshot_1](./screenshots/screenshot_1.png)

  NOTE: If your app is available in the container-format only, there is no need to mention the integration server in this readme.
-->

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
- [Function - Palo Alto Firewall: Disconnect a GlobalProtect user](#function---palo-alto-firewall-disconnect-a-globalprotect-user)
- [Function - Palo Alto Firewall: View all GlobalProtect users](#function---palo-alto-firewall-view-all-globalprotect-users)
- [Rules](#rules)
- [Troubleshooting & Support](#troubleshooting--support)

---

## Release Notes
<!--
  Specify all changes in this release. Do not remove the release 
  notes of a previous release
-->
| Version | Date | Notes |
| ------- | ---- | ----- |
| 1.0.0 | 03/2023 | Initial Release | <!-- ::CHANGE_ME:: -->

---

## Overview
<!--
  Provide a high-level description of the function itself and its remote software or application.
  The text below is parsed from the "description" and "long_description" attributes in the setup.py file
-->
**SOAR Components to Integrate with the Palo Alto Firewall**

 ![screenshot: main](./doc/screenshots/main.png) <!-- ::CHANGE_ME:: -->

This integration contains Functions to interact with Tag Name, Address Object, GlobalProtect User within Palo Alto Firewall.

### Key Features
<!--
  List the Key Features of the Integration
-->
* Create a new tag
* Create an IP Address Object
* Delete an IP Address Object
* View all GlobalProtect users
* Disconnect a GlobalProtect user

---

## Requirements
<!--
  List any Requirements 
--> 
<!-- ::CHANGE_ME:: -->
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
  <!-- ::CHANGE_ME:: -->

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
| **palo_alto_api_key** | Yes | `LUFRPT*base64 encoded string*` | *Enter the **X-PAN-KEY**.* <!-- ::CHANGE_ME:: --> |
| **palo_alto_version** | Yes | `10.1` | *Enter the Palo Alto Firewall **Version**. Versions from **10.1** to the latest are supported.* <!-- ::CHANGE_ME:: --> |
| **palo_alto_ip_address** | Yes | `192.168.1.1` | *Enter the Palo Alto Firewall **IP Address**.* <!-- ::CHANGE_ME:: --> |


---

## Function - Palo Alto Firewall: Create a new tag
Function to create a new tag on Palo Alto Firewall.

* We created a new tag, then create dynamic address groups and define the tags to filter on the firewall. 
* Finally, Use dynamic address groups in policy.

*Usecase*: 
> We want to create a **blacklist** address group. In the Palo Alto Firewall, we can use a dynamic address group with a tag name **blacklist**. Please refer link: [Use Dynamic Address Groups in Policy](https://docs.paloaltonetworks.com/pan-os/10-1/pan-os-admin/policy/monitor-changes-in-the-virtual-environment/use-dynamic-address-groups-in-policy)

> To do this, we create a tag first, then create a dynamic group with the match criteria '**blacklist**'. Then, for any new address that we want to add automatically to the dynamic group, we just create a new address with the **blacklist** tag.

 ![screenshot: fn-palo-alto-firewall-create-a-new-tag ](./doc/screenshots/fn-palo-alto-firewall-create-a-new-tag.png) <!-- ::CHANGE_ME:: -->

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

<!-- ::CHANGE_ME:: -->
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

 ![screenshot: fn-palo-alto-firewall-create-an-ip-address-object ](./doc/screenshots/fn-palo-alto-firewall-create-an-ip-address-object.png) <!-- ::CHANGE_ME:: -->

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

<!-- ::CHANGE_ME:: -->
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

 ![screenshot: fn-palo-alto-firewall-delete-an-ip-address-object ](./doc/screenshots/fn-palo-alto-firewall-delete-an-ip-address-object.png) <!-- ::CHANGE_ME:: -->

<details><summary>Inputs:</summary>
<p>

| Name | Type | Required | Example | Tooltip |
| ---- | :--: | :------: | ------- | ------- |
| `palo_alto_firewall_address_objects_name` | `text` | Yes | `-` | - |

</p>
</details>

<details><summary>Outputs:</summary>
<p>

> **NOTE:** This example might be in JSON format, but `results` is a Python Dictionary on the SOAR platform.

<!-- ::CHANGE_ME:: -->
```python
Result: {
  'version': 2.0, 
  'success': True, 
  'reason': None, 
  'content': {
    'status': 'success', 
    'message': 'Delete IP address object "blacklist-192.168.1.1" succeeded.'
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
## Function - Palo Alto Firewall: Disconnect a GlobalProtect user
Function to disconnect a GlobalProtect user on Palo Alto Firewall.

 ![screenshot: fn-palo-alto-firewall-disconnect-a-globalprotect-user ](./doc/screenshots/fn-palo-alto-firewall-disconnect-a-globalprotect-user.png) <!-- ::CHANGE_ME:: -->

<details><summary>Inputs:</summary>
<p>

| Name | Type | Required | Example | Tooltip |
| ---- | :--: | :------: | ------- | ------- |
| `palo_alto_firewall_computer` | `text` | Yes | `-` | - |
| `palo_alto_firewall_gateway` | `text` | Yes | `-` | - |
| `palo_alto_firewall_user` | `text` | Yes | `-` | - |

</p>
</details>

<details><summary>Outputs:</summary>
<p>

> **NOTE:** This example might be in JSON format, but `results` is a Python Dictionary on the SOAR platform.

<!-- ::CHANGE_ME:: -->
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
## Function - Palo Alto Firewall: View all GlobalProtect users
Function to view all GlobalProtect Users logging on Palo Alto Firewall.

 ![screenshot: fn-palo-alto-firewall-view-all-globalprotect-users ](./doc/screenshots/fn-palo-alto-firewall-view-all-globalprotect-users.png) <!-- ::CHANGE_ME:: -->

<details><summary>Inputs:</summary>
<p>

| Name | Type | Required | Example | Tooltip |
| ---- | :--: | :------: | ------- | ------- |

</p>
</details>

<details><summary>Outputs:</summary>
<p>

> **NOTE:** This example might be in JSON format, but `results` is a Python Dictionary on the SOAR platform.

<!-- ::CHANGE_ME:: -->
```python
Result: {
  'version': 2.0, 
  'success': True, 
  'reason': None, 
  'content': {
    'status': 'success', 
    'message': 'Viewing all GlobalProtect users succeeded. \n <br><pre>|&nbsp;Username&nbsp;|&nbsp;Computer&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;Virtual&nbsp;IP&nbsp;&nbsp;|&nbsp;Public&nbsp;IP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;Login&nbsp;Time&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|<pre><br>|&nbsp;mg11_kim&nbsp;|&nbsp;SDS-7XD-3280&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;10.79.14.22&nbsp;|&nbsp;203.244.197.254&nbsp;|&nbsp;Mar.03&nbsp;04:31:07&nbsp;|<br><pre>+----------+-------------------+-------------+-----------------+-----------------+<pre><br>|&nbsp;dhhai&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;Dinhs-MacBook-Pro&nbsp;|&nbsp;10.79.14.12&nbsp;|&nbsp;171.252.154.150&nbsp;|&nbsp;Mar.03&nbsp;15:20:14&nbsp;|<br><pre>+----------+-------------------+-------------+-----------------+-----------------+<pre><br>|&nbsp;npdai&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;S-CSGLANBK-11&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;10.79.14.14&nbsp;|&nbsp;14.161.27.90&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;Mar.03&nbsp;09:47:37&nbsp;|<br><pre>+----------+-------------------+-------------+-----------------+-----------------+<pre><br>|&nbsp;bxthai&nbsp;&nbsp;&nbsp;|&nbsp;CSGLANBK-759&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;10.79.14.36&nbsp;|&nbsp;203.205.29.5&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;Mar.03&nbsp;08:07:30&nbsp;|<br><pre>+----------+-------------------+-------------+-----------------+-----------------+<pre><br>|&nbsp;dmlong&nbsp;&nbsp;&nbsp;|&nbsp;DMLONG-LAP&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;10.79.14.15&nbsp;|&nbsp;14.161.27.90&nbsp;&nbsp;&nbsp;&nbsp;|&nbsp;Mar.03&nbsp;13:59:05&nbsp;|<br><pre>+----------+-------------------+-------------+-----------------+-----------------+<pre><br>'
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

---





## Rules
| Rule Name | Object | Workflow Triggered |
| --------- | ------ | ------------------ |
| Palo Alto Firewall: Create a new tag | incident | `palo_alto_firewall_create_a_new_tag` |
| Palo Alto Firewall: Create an IP Address Object | artifact | `palo_alto_firewall_create_an_ip_address_object` |
| Palo Alto Firewall: Delete an IP Address Object | artifact | `palo_alto_firewall_delete_an_ip_address_object` |
| Palo Alto Firewall: Disconnect a GlobalProtect user | artifact | `palo_alto_firewall_disconnect_a_globalprotect_user` |
| Palo Alto Firewall: View all GlobalProtect users | incident | `palo_alto_firewall_view_all_globalprotect_users` |

---


## Troubleshooting & Support
Refer to the documentation listed in the Requirements section for troubleshooting information.

### For Support
This is a IBM Community provided App. Please search the Community [ibm.biz/soarcommunity](https://ibm.biz/soarcommunity) for assistance.
