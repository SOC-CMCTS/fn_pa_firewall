<!--
    DO NOT MANUALLY EDIT THIS FILE
    THIS FILE IS AUTOMATICALLY GENERATED WITH resilient-sdk codegen
    Generated with resilient-sdk v48.0.4034
-->

# Palo Alto Firewall: View all GlobalProtect users

## Function - Palo Alto Firewall: View all GlobalProtect users

### API Name
`palo_alto_firewall_view_all_globalprotect_users`

### Output Name
``

### Message Destination
`palo_alto_firewall_integration_for_soar`

### Pre-Processing Script
```python
None
```

### Post-Processing Script
```python
message = results.content['message']
message = message.replace(" ", "&nbsp;")

incident.addNote(message)
```

---
