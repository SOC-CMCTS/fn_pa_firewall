

# Validation Report for Palo Alto Firewall

| SDK Version       | Generation Time          | Command Line Arguments Provided |
| :---------------- | ------------------------ | ------------------------------- |
| 47.1.3780 | 2023/03/01 10:16:33 | `cmd`: validate, `package`: fn_pa_firewall, `validate`: True |

## App Details
| Attribute | Value |
| --------- | ----- |
| `display_name` | Palo Alto Firewall |
| `name` | fn_pa_firewall |
| `version` | 1.0.0 |
| `author` | CMCTSSG SOC |
| `author_email` | scenterportal@cmc.com.vn |
| `install_requires` | ['resilient-circuits>=47.1.0'] |
| `description` | SOAR Components to Integrate with the Palo Alto Firewall |
| `long_description` | This integration contains Functions to interact with address groups, addresses, Global Protect User within Palo Alto Firewall. |
| `url` | https;//cmctssg.v |
| `entry_points` | {'resilient.circuits.configsection': '/Users/dinhhai/VSCode '<br>                                     'Temp/SOAR/fn_pa_firewall/fn_pa_firewall/util/config.py',<br> 'resilient.circuits.customize': '/Users/dinhhai/VSCode '<br>                                 'Temp/SOAR/fn_pa_firewall/fn_pa_firewall/util/customize.py',<br> 'resilient.circuits.selftest': '/Users/dinhhai/VSCode '<br>                                'Temp/SOAR/fn_pa_firewall/fn_pa_firewall/util/selftest.py'} |
| `python_requires` | >=3.6 |
| `SOAR version` | 41.2.41 |
| `Proxy support` | Proxies supported if running on AppHost>=1.6 |

---


## `setup.py` file validation
| Severity | Name | Description | Solution |
| --- | --- | --- | --- |
| <span style="color:orange">WARNING</span> | invalid value in `setup.py` | `https;//cmctssg.v` is not a valid `url` | Include a valid URL for your organization |


---


## Package files validation

### `README.md`
<span style="color:red">CRITICAL</span>: `README.md` is still the `codegen` template

Be sure that you run ```resilient-sdk docgen -p /Users/dinhhai/VSCode Temp/SOAR/fn_pa_firewall``` when you are done developing


### LICENSE
<span style="color:red">CRITICAL</span>: `LICENSE` is the default license file

Provide a `LICENSE` file in your package directory. Suggested formats: MIT, Apache, and BSD


### `app_logo.png`
<span style="color:teal">INFO</span>: `app_logo.png` is the default icon. Consider using your own logo

Icons appear in SOAR when your app is installed with App Host


### `company_logo.png`
<span style="color:teal">INFO</span>: `company_logo.png` is the default icon. Consider using your own logo

Icons appear in SOAR when your app is installed with App Host


### `MANIFEST.in`
<span style="color:green">Pass</span>


### `apikey_permissions.txt`
<span style="color:green">Pass</span>


### `Dockerfile, template match`
<span style="color:green">Pass</span>


### `Dockerfile, base image`
<span style="color:green">Pass</span>


### `entrypoint.sh`
<span style="color:green">Pass</span>


### ``config.py``
<span style="color:green">Pass</span>


### ``customize.py``
<span style="color:green">Pass</span>

 
---
 

## Payload samples validation

### `payload_samples/palo_alto_firewall_block_ip`
<span style="color:red">CRITICAL</span>: `output_json_example.json` and `output_json_schema.json` for `palo_alto_firewall_block_ip` empty

Fill in values manually or by using ```resilient-sdk codegen -p /Users/dinhhai/VSCode Temp/SOAR/fn_pa_firewall --gather-results```


### `payload_samples/palo_alto_firewall_create_a_new_tag`
<span style="color:red">CRITICAL</span>: `output_json_example.json` and `output_json_schema.json` for `palo_alto_firewall_create_a_new_tag` empty

Fill in values manually or by using ```resilient-sdk codegen -p /Users/dinhhai/VSCode Temp/SOAR/fn_pa_firewall --gather-results```


### `payload_samples/palo_alto_firewall_disconnect_a_globalprotect_user`
<span style="color:red">CRITICAL</span>: `output_json_example.json` and `output_json_schema.json` for `palo_alto_firewall_disconnect_a_globalprotect_user` empty

Fill in values manually or by using ```resilient-sdk codegen -p /Users/dinhhai/VSCode Temp/SOAR/fn_pa_firewall --gather-results```

 
---
 

 

 

 

 