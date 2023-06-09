{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Palo Alto Firewall: Create a new tag",
      "id": 135,
      "logic_type": "all",
      "message_destinations": [
        "Palo Alto Firewall Integration for SOAR"
      ],
      "name": "Palo Alto Firewall: Create a new tag",
      "object_type": "incident",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "11df9a27-f115-4705-97e1-f30e9d599528",
      "view_items": [
        {
          "content": "8ea45dcd-1ed0-46b2-9e5b-02bc279502fb",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "palo_alto_firewall_create_a_new_tag"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Palo Alto Firewall: Create an IP Address Object",
      "id": 136,
      "logic_type": "all",
      "message_destinations": [
        "Palo Alto Firewall Integration for SOAR"
      ],
      "name": "Palo Alto Firewall: Create an IP Address Object",
      "object_type": "artifact",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "ac1ab70c-e9b7-4bef-a67b-e46a39564601",
      "view_items": [
        {
          "content": "58573879-928f-466d-887e-f95b559ca1a1",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "8ea45dcd-1ed0-46b2-9e5b-02bc279502fb",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "palo_alto_firewall_create_an_ip_address_object"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Palo Alto Firewall: Delete an IP Address Object",
      "id": 137,
      "logic_type": "all",
      "message_destinations": [
        "Palo Alto Firewall Integration for SOAR"
      ],
      "name": "Palo Alto Firewall: Delete an IP Address Object",
      "object_type": "artifact",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "92e2079b-12f1-4eea-868d-c6055357b044",
      "view_items": [
        {
          "content": "58573879-928f-466d-887e-f95b559ca1a1",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "palo_alto_firewall_delete_an_ip_address_object"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Palo Alto Firewall: Disconnect a GlobalProtect user",
      "id": 138,
      "logic_type": "all",
      "message_destinations": [
        "Palo Alto Firewall Integration for SOAR"
      ],
      "name": "Palo Alto Firewall: Disconnect a GlobalProtect user",
      "object_type": "artifact",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "b3b35155-b12e-40e5-8101-588ac35609a9",
      "view_items": [
        {
          "content": "38badc22-e11b-4ade-b470-ffedf0d06d64",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "a42585ce-1042-4d0e-b7c3-1391cd50f44d",
          "element": "field_uuid",
          "field_type": "actioninvocation",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        "palo_alto_firewall_disconnect_a_globalprotect_user"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Palo Alto Firewall: View all GlobalProtect users",
      "id": 139,
      "logic_type": "all",
      "message_destinations": [
        "Palo Alto Firewall Integration for SOAR"
      ],
      "name": "Palo Alto Firewall: View all GlobalProtect users",
      "object_type": "incident",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "33d963d1-5e47-4ee2-a941-214736475317",
      "view_items": [],
      "workflows": [
        "palo_alto_firewall_view_all_globalprotect_users"
      ]
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1678436176032,
  "export_format_version": 2,
  "fields": [
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/palo_alto_firewall_address_objects_name",
      "hide_notification": false,
      "id": 1222,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_address_objects_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "palo_alto_firewall_address_objects_name",
      "tooltip": "",
      "type_id": 11,
      "uuid": "dcbbd8aa-f209-482b-b43b-d7de988eb63c",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/palo_alto_firewall_ip",
      "hide_notification": false,
      "id": 1223,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_ip",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "palo_alto_firewall_ip",
      "tooltip": "",
      "type_id": 11,
      "uuid": "e473e641-626c-424d-9c98-17a23a449795",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/palo_alto_firewall_tag_name",
      "hide_notification": false,
      "id": 1224,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_tag_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "palo_alto_firewall_tag_name",
      "tooltip": "",
      "type_id": 11,
      "uuid": "f3e65d85-8d17-48f3-a50e-477e7fb94270",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/palo_alto_firewall_user",
      "hide_notification": false,
      "id": 1225,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_user",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "palo_alto_firewall_user",
      "tooltip": "",
      "type_id": 11,
      "uuid": "0cc402ac-aa50-4213-833b-5daae2de1665",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/palo_alto_firewall_computer",
      "hide_notification": false,
      "id": 1226,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_computer",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "palo_alto_firewall_computer",
      "tooltip": "",
      "type_id": 11,
      "uuid": "10599e1e-9dd6-4fd1-b633-0a9b29e2462d",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "__function/palo_alto_firewall_gateway",
      "hide_notification": false,
      "id": 1227,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_gateway",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "palo_alto_firewall_gateway",
      "tooltip": "",
      "type_id": 11,
      "uuid": "18befdc2-1af8-4f38-b50d-1b87182c2456",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/palo_alto_firewall_tag_name",
      "hide_notification": false,
      "id": 1218,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_tag_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "Enter a tag name",
      "prefix": "properties",
      "read_only": false,
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "Palo Alto Firewall: Tag Name",
      "tooltip": "If you want to create a object with a tag name, please fill tag name into it.",
      "type_id": 6,
      "uuid": "8ea45dcd-1ed0-46b2-9e5b-02bc279502fb",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/palo_alto_firewall_computer",
      "hide_notification": false,
      "id": 1219,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_computer",
      "operation_perms": {},
      "operations": [],
      "placeholder": "Enter a computer name",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "Palo Alto Firewall: Computer",
      "tooltip": "",
      "type_id": 6,
      "uuid": "a42585ce-1042-4d0e-b7c3-1391cd50f44d",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/palo_alto_firewall_gateway",
      "hide_notification": false,
      "id": 1220,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_gateway",
      "operation_perms": {},
      "operations": [],
      "placeholder": "Enter a GlobalProtect Gateway",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "Palo Alto Firewall: Gateway",
      "tooltip": "",
      "type_id": 6,
      "uuid": "38badc22-e11b-4ade-b470-ffedf0d06d64",
      "values": []
    },
    {
      "allow_default_value": false,
      "blank_option": false,
      "calculated": false,
      "changeable": true,
      "chosen": false,
      "default_chosen_by_server": false,
      "deprecated": false,
      "export_key": "actioninvocation/palo_alto_firewall_object_name",
      "hide_notification": false,
      "id": 1221,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_object_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "Enter an Object Name",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "Palo Alto Firewall: Object Name",
      "tooltip": "",
      "type_id": 6,
      "uuid": "58573879-928f-466d-887e-f95b559ca1a1",
      "values": []
    },
    {
      "export_key": "incident/internal_customizations_field",
      "id": 0,
      "input_type": "text",
      "internal": true,
      "name": "internal_customizations_field",
      "read_only": true,
      "text": "Customizations Field (internal)",
      "type_id": 0,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa1"
    }
  ],
  "functions": [
    {
      "created_date": 1677837237928,
      "description": {
        "content": "Create a new tag on Palo Alto Firewall",
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: Create a new tag",
      "export_key": "palo_alto_firewall_create_a_new_tag",
      "id": 63,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 20,
        "name": "dmlong@cmc.com.vn",
        "type": "user"
      },
      "last_modified_time": 1677837464328,
      "name": "palo_alto_firewall_create_a_new_tag",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [],
      "uuid": "5af191f7-2b15-4475-b199-661cd6416e04",
      "version": 2,
      "view_items": [
        {
          "content": "f3e65d85-8d17-48f3-a50e-477e7fb94270",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Palo Alto Firewall: Create a new tag",
          "object_type": "incident",
          "programmatic_name": "palo_alto_firewall_create_a_new_tag",
          "tags": [],
          "uuid": null,
          "workflow_id": 82
        }
      ]
    },
    {
      "created_date": 1677837237993,
      "description": {
        "content": "Create an IP Address Object on Palo Alto Firewall.",
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: Create an IP Address Object",
      "export_key": "palo_alto_firewall_create_an_ip_address_object",
      "id": 64,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 20,
        "name": "dmlong@cmc.com.vn",
        "type": "user"
      },
      "last_modified_time": 1677837487863,
      "name": "palo_alto_firewall_create_an_ip_address_object",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [],
      "uuid": "12c44c81-e91b-45fa-bd12-b2a524d23134",
      "version": 2,
      "view_items": [
        {
          "content": "e473e641-626c-424d-9c98-17a23a449795",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "f3e65d85-8d17-48f3-a50e-477e7fb94270",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "dcbbd8aa-f209-482b-b43b-d7de988eb63c",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Palo Alto Firewall: Create an IP Address Object",
          "object_type": "artifact",
          "programmatic_name": "palo_alto_firewall_create_an_ip_address_object",
          "tags": [],
          "uuid": null,
          "workflow_id": 84
        }
      ]
    },
    {
      "created_date": 1677837238062,
      "description": {
        "content": "Delete an IP Address Object on Palo Alto Firewall.",
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: Delete an IP Address Object",
      "export_key": "palo_alto_firewall_delete_an_ip_address_object",
      "id": 65,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 20,
        "name": "dmlong@cmc.com.vn",
        "type": "user"
      },
      "last_modified_time": 1677837498422,
      "name": "palo_alto_firewall_delete_an_ip_address_object",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [],
      "uuid": "7d81ed68-1555-4573-9970-39a845a086c8",
      "version": 2,
      "view_items": [
        {
          "content": "dcbbd8aa-f209-482b-b43b-d7de988eb63c",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Palo Alto Firewall: Delete an IP Address Object",
          "object_type": "artifact",
          "programmatic_name": "palo_alto_firewall_delete_an_ip_address_object",
          "tags": [],
          "uuid": null,
          "workflow_id": 85
        }
      ]
    },
    {
      "created_date": 1677837238126,
      "description": {
        "content": "Disconnect a GlobalProtect user on Palo Alto Firewall.",
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: Disconnect a GlobalProtect user",
      "export_key": "palo_alto_firewall_disconnect_a_globalprotect_user",
      "id": 66,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 20,
        "name": "dmlong@cmc.com.vn",
        "type": "user"
      },
      "last_modified_time": 1677837507277,
      "name": "palo_alto_firewall_disconnect_a_globalprotect_user",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [],
      "uuid": "7a3ffcb7-e552-4705-898b-60e23153be22",
      "version": 2,
      "view_items": [
        {
          "content": "18befdc2-1af8-4f38-b50d-1b87182c2456",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "0cc402ac-aa50-4213-833b-5daae2de1665",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        },
        {
          "content": "10599e1e-9dd6-4fd1-b633-0a9b29e2462d",
          "element": "field_uuid",
          "field_type": "__function",
          "show_if": null,
          "show_link_header": false,
          "step_label": null
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Palo Alto Firewall: Disconnect a GlobalProtect user",
          "object_type": "artifact",
          "programmatic_name": "palo_alto_firewall_disconnect_a_globalprotect_user",
          "tags": [],
          "uuid": null,
          "workflow_id": 83
        }
      ]
    },
    {
      "created_date": 1677837238190,
      "description": {
        "content": "View all GlobalProtect Users are logging on Palo Alto Firewall.",
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: View all GlobalProtect users",
      "export_key": "palo_alto_firewall_view_all_globalprotect_users",
      "id": 67,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 20,
        "name": "dmlong@cmc.com.vn",
        "type": "user"
      },
      "last_modified_time": 1677837516989,
      "name": "palo_alto_firewall_view_all_globalprotect_users",
      "output_json_example": "{}",
      "output_json_schema": "{}",
      "tags": [],
      "uuid": "bdd86fac-4c56-4b60-bc3e-50664bb94e92",
      "version": 2,
      "view_items": [],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Palo Alto Firewall: View all GlobalProtect users",
          "object_type": "incident",
          "programmatic_name": "palo_alto_firewall_view_all_globalprotect_users",
          "tags": [],
          "uuid": null,
          "workflow_id": 86
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 165,
  "inbound_destinations": [],
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1678436174677,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1678436174677,
      "uuid": "bfeec2d4-3770-11e8-ad39-4a0004044aa0"
    }
  ],
  "industries": null,
  "layouts": [],
  "locale": null,
  "message_destinations": [
    {
      "api_keys": [],
      "destination_type": 0,
      "expect_ack": true,
      "export_key": "palo_alto_firewall_integration_for_soar",
      "name": "Palo Alto Firewall Integration for SOAR",
      "programmatic_name": "palo_alto_firewall_integration_for_soar",
      "tags": [],
      "users": [
        "admin@sctssg.vn"
      ],
      "uuid": "12bba083-4a12-452a-9fa9-d91d7b722b5d"
    }
  ],
  "notifications": null,
  "overrides": null,
  "phases": [],
  "regulators": null,
  "roles": [],
  "scripts": [],
  "server_version": {
    "build_number": 41,
    "major": 41,
    "minor": 2,
    "version": "41.2.41"
  },
  "tags": [],
  "task_order": [],
  "timeframes": null,
  "types": [],
  "workflows": [
    {
      "actions": [],
      "content": {
        "version": 7,
        "workflow_id": "palo_alto_firewall_view_all_globalprotect_users",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_view_all_globalprotect_users\" isExecutable=\"true\" name=\"Palo Alto Firewall: View all GlobalProtect users\"\u003e\u003cdocumentation\u003eView all GlobalProtect Users are logging on Palo Alto Firewall.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0r8a6tc\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0evoulf\" name=\"Palo Alto Firewall: View all Glob...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"bdd86fac-4c56-4b60-bc3e-50664bb94e92\"\u003e{\"inputs\":{},\"post_processing_script\":\"message = results.content[\u0027message\u0027]\\nmessage = message.replace(\\\" \\\", \\\"\u0026amp;nbsp;\\\")\\n\\nincident.addNote(message)\",\"post_processing_script_language\":\"python3\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0r8a6tc\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0libmyz\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0r8a6tc\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0evoulf\"/\u003e\u003cendEvent id=\"EndEvent_1r6y1k8\" name=\"\"\u003e\u003cincoming\u003eSequenceFlow_0libmyz\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0libmyz\" sourceRef=\"ServiceTask_0evoulf\" targetRef=\"EndEvent_1r6y1k8\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0wz4vqk\"\u003e\u003ctext\u003eEnd your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1o4l8bq\" sourceRef=\"EndEvent_1r6y1k8\" targetRef=\"TextAnnotation_0wz4vqk\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0evoulf\" id=\"ServiceTask_0evoulf_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"293\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0r8a6tc\" id=\"SequenceFlow_0r8a6tc_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"235\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"235\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"293\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"14\" width=\"90\" x=\"205\" y=\"199\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_1r6y1k8\" id=\"EndEvent_1r6y1k8_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"521\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"26\" width=\"0\" x=\"540\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0libmyz\" id=\"SequenceFlow_0libmyz_di\"\u003e\u003comgdi:waypoint x=\"393\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"521\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"14\" width=\"0\" x=\"457\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0wz4vqk\" id=\"TextAnnotation_0wz4vqk_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"528\" y=\"244\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1o4l8bq\" id=\"Association_1o4l8bq_di\"\u003e\u003comgdi:waypoint x=\"549\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"567\" xsi:type=\"omgdc:Point\" y=\"244\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 7,
      "description": "View all GlobalProtect Users are logging on Palo Alto Firewall.",
      "export_key": "palo_alto_firewall_view_all_globalprotect_users",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1677837238886,
      "name": "Palo Alto Firewall: View all GlobalProtect users",
      "object_type": "incident",
      "programmatic_name": "palo_alto_firewall_view_all_globalprotect_users",
      "tags": [],
      "uuid": "e181759e-05b7-435b-bce4-57947dcc0e83",
      "workflow_id": 86
    },
    {
      "actions": [],
      "content": {
        "version": 6,
        "workflow_id": "palo_alto_firewall_disconnect_a_globalprotect_user",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_disconnect_a_globalprotect_user\" isExecutable=\"true\" name=\"Palo Alto Firewall: Disconnect a GlobalProtect user\"\u003e\u003cdocumentation\u003eDisconnect a GlobalProtect user on Palo Alto Firewall.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1pep2gp\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1cepmq4\" name=\"Palo Alto Firewall: Disconnect a ...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7a3ffcb7-e552-4705-898b-60e23153be22\"\u003e{\"inputs\":{},\"post_processing_script\":\"incident.addNote(results.content[\u0027message\u0027])\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.palo_alto_firewall_gateway = rule.properties.palo_alto_firewall_gateway\\ninputs.palo_alto_firewall_user = artifact.value\\ninputs.palo_alto_firewall_computer = rule.properties.palo_alto_firewall_computer\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1pep2gp\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0rsm7am\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1pep2gp\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1cepmq4\"/\u003e\u003cendEvent id=\"EndEvent_007hth8\"\u003e\u003cincoming\u003eSequenceFlow_0rsm7am\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0rsm7am\" sourceRef=\"ServiceTask_1cepmq4\" targetRef=\"EndEvent_007hth8\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0ncs99l\"\u003e\u003ctext\u003eEnd your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_05zz3iq\" sourceRef=\"EndEvent_007hth8\" targetRef=\"TextAnnotation_0ncs99l\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1cepmq4\" id=\"ServiceTask_1cepmq4_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"294\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1pep2gp\" id=\"SequenceFlow_1pep2gp_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"294\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"90\" x=\"201\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_007hth8\" id=\"EndEvent_007hth8_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"495\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"90\" x=\"468\" y=\"228\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0rsm7am\" id=\"SequenceFlow_0rsm7am_di\"\u003e\u003comgdi:waypoint x=\"394\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"495\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"90\" x=\"399.5\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0ncs99l\" id=\"TextAnnotation_0ncs99l_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"526\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_05zz3iq\" id=\"Association_05zz3iq_di\"\u003e\u003comgdi:waypoint x=\"525\" xsi:type=\"omgdc:Point\" y=\"219\"/\u003e\u003comgdi:waypoint x=\"561\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 6,
      "description": "Disconnect a GlobalProtect user on Palo Alto Firewall.",
      "export_key": "palo_alto_firewall_disconnect_a_globalprotect_user",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1677837238559,
      "name": "Palo Alto Firewall: Disconnect a GlobalProtect user",
      "object_type": "artifact",
      "programmatic_name": "palo_alto_firewall_disconnect_a_globalprotect_user",
      "tags": [],
      "uuid": "c6fde971-4284-4552-a8ce-bbf76263d38e",
      "workflow_id": 83
    },
    {
      "actions": [],
      "content": {
        "version": 9,
        "workflow_id": "palo_alto_firewall_create_a_new_tag",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_create_a_new_tag\" isExecutable=\"true\" name=\"Palo Alto Firewall: Create a new tag\"\u003e\u003cdocumentation\u003eCreates a new tag on Palo Alto Firewall.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0ev08f5\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0fvsu1l\" name=\"Palo Alto Firewall: Create a new ...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"5af191f7-2b15-4475-b199-661cd6416e04\"\u003e{\"inputs\":{},\"post_processing_script\":\"if not results.success:\\n  incident.addNote(\\\"Create a new tag has error.\\\")\\nelse:\\n  incident.addNote(results.content[\u0027message\u0027])\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.palo_alto_firewall_tag_name = rule.properties.palo_alto_firewall_tag_name\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0ev08f5\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1kffwf0\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0ev08f5\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0fvsu1l\"/\u003e\u003cendEvent id=\"EndEvent_0kdf06z\"\u003e\u003cincoming\u003eSequenceFlow_1kffwf0\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1kffwf0\" sourceRef=\"ServiceTask_0fvsu1l\" targetRef=\"EndEvent_0kdf06z\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_140m9lm\"\u003e\u003ctext\u003e\u003c![CDATA[End your workflow here\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0ubn6sq\" sourceRef=\"EndEvent_0kdf06z\" targetRef=\"TextAnnotation_140m9lm\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0fvsu1l\" id=\"ServiceTask_0fvsu1l_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"301\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ev08f5\" id=\"SequenceFlow_0ev08f5_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"301\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"249.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0kdf06z\" id=\"EndEvent_0kdf06z_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"527.2420731707317\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"545.2420731707317\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1kffwf0\" id=\"SequenceFlow_1kffwf0_di\"\u003e\u003comgdi:waypoint x=\"401\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"527\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"464\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_140m9lm\" id=\"TextAnnotation_140m9lm_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"550\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0ubn6sq\" id=\"Association_0ubn6sq_di\"\u003e\u003comgdi:waypoint x=\"557\" xsi:type=\"omgdc:Point\" y=\"219\"/\u003e\u003comgdi:waypoint x=\"587\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 9,
      "description": "Creates a new tag on Palo Alto Firewall.",
      "export_key": "palo_alto_firewall_create_a_new_tag",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1677837238448,
      "name": "Palo Alto Firewall: Create a new tag",
      "object_type": "incident",
      "programmatic_name": "palo_alto_firewall_create_a_new_tag",
      "tags": [],
      "uuid": "455dbfc8-dc1b-4598-9584-5b16686a97b1",
      "workflow_id": 82
    },
    {
      "actions": [],
      "content": {
        "version": 9,
        "workflow_id": "palo_alto_firewall_delete_an_ip_address_object",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_delete_an_ip_address_object\" isExecutable=\"true\" name=\"Palo Alto Firewall: Delete an IP Address Object\"\u003e\u003cdocumentation\u003eDelete an IP Address Object on Palo Alto Firewall.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1xpabd1\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1rsfy2w\" name=\"Palo Alto Firewall: Delete an IP ...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7d81ed68-1555-4573-9970-39a845a086c8\"\u003e{\"inputs\":{},\"post_processing_script\":\"incident.addNote(results.content[\u0027message\u0027])\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.palo_alto_firewall_address_objects_name = rule.properties.palo_alto_firewall_object_name\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1xpabd1\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1thjb8o\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1xpabd1\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1rsfy2w\"/\u003e\u003cendEvent id=\"EndEvent_159bzhv\"\u003e\u003cincoming\u003eSequenceFlow_1thjb8o\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1thjb8o\" sourceRef=\"ServiceTask_1rsfy2w\" targetRef=\"EndEvent_159bzhv\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_14xxotl\"\u003e\u003ctext\u003e\u003c![CDATA[End your workflow here\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1beefrz\" sourceRef=\"EndEvent_159bzhv\" targetRef=\"TextAnnotation_14xxotl\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1rsfy2w\" id=\"ServiceTask_1rsfy2w_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"334\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1xpabd1\" id=\"SequenceFlow_1xpabd1_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"334\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"266\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_159bzhv\" id=\"EndEvent_159bzhv_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"631.9058823529411\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"649.9058823529411\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1thjb8o\" id=\"SequenceFlow_1thjb8o_di\"\u003e\u003comgdi:waypoint x=\"434\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"632\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"533\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_14xxotl\" id=\"TextAnnotation_14xxotl_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"665\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1beefrz\" id=\"Association_1beefrz_di\"\u003e\u003comgdi:waypoint x=\"662\" xsi:type=\"omgdc:Point\" y=\"218\"/\u003e\u003comgdi:waypoint x=\"700\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 9,
      "description": "Delete an IP Address Object on Palo Alto Firewall.",
      "export_key": "palo_alto_firewall_delete_an_ip_address_object",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1677837238785,
      "name": "Palo Alto Firewall: Delete an IP Address Object",
      "object_type": "artifact",
      "programmatic_name": "palo_alto_firewall_delete_an_ip_address_object",
      "tags": [],
      "uuid": "717a1cf8-e60b-4975-bc7f-84577f4f6e4d",
      "workflow_id": 85
    },
    {
      "actions": [],
      "content": {
        "version": 8,
        "workflow_id": "palo_alto_firewall_create_an_ip_address_object",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_create_an_ip_address_object\" isExecutable=\"true\" name=\"Palo Alto Firewall: Create an IP Address Object\"\u003e\u003cdocumentation\u003eCreate an IP Address Object on Palo Alto Firewall.\u003c/documentation\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1s098wi\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_128wqe8\" name=\"Palo Alto Firewall: Create an IP ...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"12c44c81-e91b-45fa-bd12-b2a524d23134\"\u003e{\"inputs\":{},\"post_processing_script\":\"if not results.success:\\n  incident.addNote(\\\"Add IP has error.\\\")\\nelse:\\n  incident.addNote(results.content[\u0027message\u0027])\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.palo_alto_firewall_ip = artifact.value\\ninputs.palo_alto_firewall_tag_name = rule.properties.palo_alto_firewall_tag_name\\ninputs.palo_alto_firewall_address_objects_name = rule.properties.palo_alto_firewall_object_name\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1s098wi\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0koyccd\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1s098wi\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_128wqe8\"/\u003e\u003cendEvent id=\"EndEvent_18e2pml\"\u003e\u003cincoming\u003eSequenceFlow_0koyccd\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0koyccd\" sourceRef=\"ServiceTask_128wqe8\" targetRef=\"EndEvent_18e2pml\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1pnj687\"\u003e\u003ctext\u003e\u003c![CDATA[End your workflow here\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0ry70ga\" sourceRef=\"EndEvent_18e2pml\" targetRef=\"TextAnnotation_1pnj687\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_128wqe8\" id=\"ServiceTask_128wqe8_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"306\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1s098wi\" id=\"SequenceFlow_1s098wi_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"306\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"252\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_18e2pml\" id=\"EndEvent_18e2pml_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"545\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"563\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0koyccd\" id=\"SequenceFlow_0koyccd_di\"\u003e\u003comgdi:waypoint x=\"406\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"545\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"475.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1pnj687\" id=\"TextAnnotation_1pnj687_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"553\" y=\"244\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0ry70ga\" id=\"Association_0ry70ga_di\"\u003e\u003comgdi:waypoint x=\"574\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"592\" xsi:type=\"omgdc:Point\" y=\"244\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 8,
      "description": "Create an IP Address Object on Palo Alto Firewall.",
      "export_key": "palo_alto_firewall_create_an_ip_address_object",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1677837238672,
      "name": "Palo Alto Firewall: Create an IP Address Object",
      "object_type": "artifact",
      "programmatic_name": "palo_alto_firewall_create_an_ip_address_object",
      "tags": [],
      "uuid": "0c268f15-f0b7-4b76-9bf3-93dc0f4164d4",
      "workflow_id": 84
    }
  ],
  "workspaces": []
}
