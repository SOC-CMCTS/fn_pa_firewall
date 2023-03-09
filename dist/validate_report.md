

# Validation Report for Palo Alto Firewall

| SDK Version       | Generation Time          | Command Line Arguments Provided |
| :---------------- | ------------------------ | ------------------------------- |
| 48.0.4034 | 2023/03/09 13:52:14 | `cmd`: validate, `package`: fn_pa_firewall, `tests`: True |

## Results
| **Severity** | **Count** |
| :----------- | --------- |
| Critical Issues:    | <span style="color:red"> 1 </span> |
| Warnings:           | <span style="color:orange"> 0 </span>  |
| Validations Passed: | <span style="color:green"> 3  </span>   |


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
| `url` | https://cmctssg.vn |
| `entry_points` | {'resilient.circuits.configsection': 'D:\\Code '<br>                                     'CMC\\fn_pa_firewall\\fn_pa_firewall\\util\\config.py',<br> 'resilient.circuits.customize': 'D:\\Code '<br>                                 'CMC\\fn_pa_firewall\\fn_pa_firewall\\util\\customize.py',<br> 'resilient.circuits.selftest': 'D:\\Code '<br>                                'CMC\\fn_pa_firewall\\fn_pa_firewall\\util\\selftest.py'} |
| `python_requires` | >=3.6 |
| `SOAR version` | 41.2.41 |
| `Proxy support` | Proxies supported if running on AppHost>=1.6 |

---




 

 

 

## tox tests
<span style="color:red">CRITICAL</span>: Something went wrong... Details:

	py36: skipped because could not find python interpreter with spec(s): py36
	py36: SKIP ? in 0.56 seconds
	py39: skipped because could not find python interpreter with spec(s): py39
	  py36: SKIP (0.56 seconds)
	  py39: SKIP (0.02 seconds)
	  evaluation failed :( (0.92 seconds)
	


Run with the `-v` flag to see more information



---
 

 

 