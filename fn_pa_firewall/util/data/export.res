{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Palo Alto Firewall: Block IP",
      "id": 116,
      "logic_type": "all",
      "message_destinations": [
        "Palo Alto Firewall Integration for SOAR"
      ],
      "name": "Palo Alto Firewall: Block IP",
      "object_type": "artifact",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "28a09fcd-fc57-4e84-9ebd-924fded788fd",
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
        "palo_alto_firewall_block_ip"
      ]
    },
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Palo Alto Firewall: Create a new tag",
      "id": 115,
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
      "export_key": "Palo Alto Firewall: Disconnect a GlobalProtect user",
      "id": 117,
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
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1677642164269,
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
      "export_key": "__function/palo_alto_firewall_ip",
      "hide_notification": false,
      "id": 1186,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_ip",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
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
      "id": 1185,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_tag_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
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
      "id": 1187,
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
      "id": 1191,
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
      "id": 1189,
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
      "id": 1184,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_tag_name",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": "properties",
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "Palo Alto Firewall: Tag Name",
      "tooltip": "Enter your a new tag",
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
      "id": 1195,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_computer",
      "operation_perms": {},
      "operations": [],
      "placeholder": "Laptop-A",
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
      "id": 1192,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_firewall_gateway",
      "operation_perms": {},
      "operations": [],
      "placeholder": "SOC_DC_Gateway-N",
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
      "created_date": 1676446170151,
      "description": {
        "content": null,
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: Block IP",
      "export_key": "palo_alto_firewall_block_ip",
      "id": 46,
      "last_modified_by": {
        "display_name": "Administrator Local",
        "id": 1,
        "name": "admin@sctssg.vn",
        "type": "user"
      },
      "last_modified_time": 1676451845776,
      "name": "palo_alto_firewall_block_ip",
      "tags": [],
      "uuid": "5514ee8f-86e1-499d-ae59-3a959bf925a3",
      "version": 3,
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
        }
      ],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Palo Alto Firewall: Block IP",
          "object_type": "artifact",
          "programmatic_name": "palo_alto_firewall_block_ip",
          "tags": [],
          "uuid": null,
          "workflow_id": 61
        }
      ]
    },
    {
      "created_date": 1676357898866,
      "description": {
        "content": null,
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: Create a new tag",
      "export_key": "palo_alto_firewall_create_a_new_tag",
      "id": 45,
      "last_modified_by": {
        "display_name": "Administrator Local",
        "id": 1,
        "name": "admin@sctssg.vn",
        "type": "user"
      },
      "last_modified_time": 1676447148344,
      "name": "palo_alto_firewall_create_a_new_tag",
      "tags": [],
      "uuid": "5af191f7-2b15-4475-b199-661cd6416e04",
      "version": 4,
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
          "workflow_id": 59
        }
      ]
    },
    {
      "created_date": 1676452319092,
      "description": {
        "content": null,
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: Disconnect a GlobalProtect user",
      "export_key": "palo_alto_firewall_disconnect_a_globalprotect_user",
      "id": 47,
      "last_modified_by": {
        "display_name": "Resilient Sysadmin",
        "id": 18,
        "name": "npdai@cmc.com.vn",
        "type": "user"
      },
      "last_modified_time": 1677243769211,
      "name": "palo_alto_firewall_disconnect_a_globalprotect_user",
      "tags": [],
      "uuid": "7a3ffcb7-e552-4705-898b-60e23153be22",
      "version": 9,
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
          "workflow_id": 64
        }
      ]
    },
    {
      "created_date": 1677639440306,
      "description": {
        "content": null,
        "format": "text"
      },
      "destination_handle": "palo_alto_firewall_integration_for_soar",
      "display_name": "Palo Alto Firewall: View all GlobalProtect users",
      "export_key": "palo_alto_firewall_view_all_globalprotect_users",
      "id": 50,
      "last_modified_by": {
        "display_name": "Administrator Local",
        "id": 1,
        "name": "admin@sctssg.vn",
        "type": "user"
      },
      "last_modified_time": 1677639440362,
      "name": "palo_alto_firewall_view_all_globalprotect_users",
      "tags": [],
      "uuid": "bdd86fac-4c56-4b60-bc3e-50664bb94e92",
      "version": 1,
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
          "workflow_id": 67
        }
      ]
    }
  ],
  "geos": null,
  "groups": null,
  "id": 122,
  "inbound_destinations": [],
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1677642162997,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1677642162997,
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
        "admin@sctssg.vn",
        "npdai@cmc.com.vn"
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
        "version": 17,
        "workflow_id": "palo_alto_firewall_disconnect_a_globalprotect_user",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_disconnect_a_globalprotect_user\" isExecutable=\"true\" name=\"Palo Alto Firewall: Disconnect a GlobalProtect user\"\u003e\u003cdocumentation/\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1pep2gp\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_1cepmq4\" name=\"Palo Alto Firewall: Disconnect a ...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"7a3ffcb7-e552-4705-898b-60e23153be22\"\u003e{\"inputs\":{},\"post_processing_script\":\"incident.addNote(results.content[\u0027message\u0027])\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.palo_alto_firewall_gateway = rule.properties.palo_alto_firewall_gateway\\ninputs.palo_alto_firewall_user = artifact.value\\ninputs.palo_alto_firewall_computer = rule.properties.palo_alto_firewall_computer\",\"pre_processing_script_language\":\"python3\",\"result_name\":\"\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1pep2gp\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0rsm7am\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1pep2gp\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_1cepmq4\"/\u003e\u003cendEvent id=\"EndEvent_007hth8\"\u003e\u003cincoming\u003eSequenceFlow_0rsm7am\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0rsm7am\" sourceRef=\"ServiceTask_1cepmq4\" targetRef=\"EndEvent_007hth8\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_0ncs99l\"\u003e\u003ctext\u003eEnd your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_05zz3iq\" sourceRef=\"EndEvent_007hth8\" targetRef=\"TextAnnotation_0ncs99l\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_1cepmq4\" id=\"ServiceTask_1cepmq4_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"247\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1pep2gp\" id=\"SequenceFlow_1pep2gp_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"247\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"222.5\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_007hth8\" id=\"EndEvent_007hth8_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"416.641\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"434.641\" y=\"228\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0rsm7am\" id=\"SequenceFlow_0rsm7am_di\"\u003e\u003comgdi:waypoint x=\"347\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"417\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"12\" width=\"0\" x=\"382\" y=\"185\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_0ncs99l\" id=\"TextAnnotation_0ncs99l_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"462.64099999999996\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_05zz3iq\" id=\"Association_05zz3iq_di\"\u003e\u003comgdi:waypoint x=\"448\" xsi:type=\"omgdc:Point\" y=\"217\"/\u003e\u003comgdi:waypoint x=\"494\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 17,
      "description": "",
      "export_key": "palo_alto_firewall_disconnect_a_globalprotect_user",
      "last_modified_by": "npdai@cmc.com.vn",
      "last_modified_time": 1677243742214,
      "name": "Palo Alto Firewall: Disconnect a GlobalProtect user",
      "object_type": "artifact",
      "programmatic_name": "palo_alto_firewall_disconnect_a_globalprotect_user",
      "tags": [],
      "uuid": "c6fde971-4284-4552-a8ce-bbf76263d38e",
      "workflow_id": 64
    },
    {
      "actions": [],
      "content": {
        "version": 3,
        "workflow_id": "palo_alto_firewall_block_ip",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_block_ip\" isExecutable=\"true\" name=\"Palo Alto Firewall: Block IP\"\u003e\u003cdocumentation/\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_1qvdzze\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_03rqne9\" name=\"Palo Alto Firewall: Block IP\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"5514ee8f-86e1-499d-ae59-3a959bf925a3\"\u003e{\"inputs\":{},\"post_processing_script\":\"if not results.success:\\n  incident.addNote(\\\"Block IP has error.\\\")\\nelse:\\n  incident.addNote(results.content[\u0027message\u0027])\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.palo_alto_firewall_ip = artifact.value\\ninputs.palo_alto_firewall_tag_name = rule.properties.palo_alto_firewall_tag_name\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_1qvdzze\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_19cqo0v\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_1qvdzze\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_03rqne9\"/\u003e\u003cendEvent id=\"EndEvent_0mgld7v\"\u003e\u003cincoming\u003eSequenceFlow_19cqo0v\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_19cqo0v\" sourceRef=\"ServiceTask_03rqne9\" targetRef=\"EndEvent_0mgld7v\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_08l1sng\"\u003e\u003ctext\u003e\u003c![CDATA[End your workflow here\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_10cdaoy\" sourceRef=\"EndEvent_0mgld7v\" targetRef=\"TextAnnotation_08l1sng\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_03rqne9\" id=\"ServiceTask_03rqne9_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"313\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1qvdzze\" id=\"SequenceFlow_1qvdzze_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"313\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"255.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0mgld7v\" id=\"EndEvent_0mgld7v_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"568\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"586\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_19cqo0v\" id=\"SequenceFlow_19cqo0v_di\"\u003e\u003comgdi:waypoint x=\"413\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"568\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"490.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_08l1sng\" id=\"TextAnnotation_08l1sng_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"587\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_10cdaoy\" id=\"Association_10cdaoy_di\"\u003e\u003comgdi:waypoint x=\"597\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"625\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 3,
      "description": "",
      "export_key": "palo_alto_firewall_block_ip",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1676537814053,
      "name": "Palo Alto Firewall: Block IP",
      "object_type": "artifact",
      "programmatic_name": "palo_alto_firewall_block_ip",
      "tags": [],
      "uuid": "970bbf15-99d6-425d-9641-29df61886700",
      "workflow_id": 61
    },
    {
      "actions": [],
      "content": {
        "version": 6,
        "workflow_id": "palo_alto_firewall_create_a_new_tag",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_create_a_new_tag\" isExecutable=\"true\" name=\"Palo Alto Firewall: Create a new tag\"\u003e\u003cdocumentation/\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0ev08f5\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0fvsu1l\" name=\"Palo Alto Firewall: Create a new ...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"5af191f7-2b15-4475-b199-661cd6416e04\"\u003e{\"inputs\":{},\"post_processing_script\":\"if not results.success:\\n  incident.addNote(\\\"Create a new tag has error.\\\")\\nelse:\\n  incident.addNote(results.content[\u0027message\u0027])\",\"post_processing_script_language\":\"python3\",\"pre_processing_script\":\"inputs.palo_alto_firewall_tag_name = rule.properties.palo_alto_firewall_tag_name\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0ev08f5\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1kffwf0\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0ev08f5\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0fvsu1l\"/\u003e\u003cendEvent id=\"EndEvent_0kdf06z\"\u003e\u003cincoming\u003eSequenceFlow_1kffwf0\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1kffwf0\" sourceRef=\"ServiceTask_0fvsu1l\" targetRef=\"EndEvent_0kdf06z\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_140m9lm\"\u003e\u003ctext\u003e\u003c![CDATA[End your workflow here\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0ubn6sq\" sourceRef=\"EndEvent_0kdf06z\" targetRef=\"TextAnnotation_140m9lm\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0fvsu1l\" id=\"ServiceTask_0fvsu1l_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"301\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ev08f5\" id=\"SequenceFlow_0ev08f5_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"301\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"249.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0kdf06z\" id=\"EndEvent_0kdf06z_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"527.2420731707317\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"545.2420731707317\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1kffwf0\" id=\"SequenceFlow_1kffwf0_di\"\u003e\u003comgdi:waypoint x=\"401\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"527\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"464\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_140m9lm\" id=\"TextAnnotation_140m9lm_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"550\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0ubn6sq\" id=\"Association_0ubn6sq_di\"\u003e\u003comgdi:waypoint x=\"557\" xsi:type=\"omgdc:Point\" y=\"219\"/\u003e\u003comgdi:waypoint x=\"587\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 6,
      "description": "",
      "export_key": "palo_alto_firewall_create_a_new_tag",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1676535980799,
      "name": "Palo Alto Firewall: Create a new tag",
      "object_type": "incident",
      "programmatic_name": "palo_alto_firewall_create_a_new_tag",
      "tags": [],
      "uuid": "455dbfc8-dc1b-4598-9584-5b16686a97b1",
      "workflow_id": 59
    }
  ],
  "workspaces": []
}
