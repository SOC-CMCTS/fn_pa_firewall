{
  "action_order": [],
  "actions": [
    {
      "automations": [],
      "conditions": [],
      "enabled": true,
      "export_key": "Palo Alto Firewall: Block external IP",
      "id": 116,
      "logic_type": "all",
      "message_destinations": [
        "Palo Alto Firewall Integration for SOAR"
      ],
      "name": "Palo Alto Firewall: Block external IP",
      "object_type": "artifact",
      "tags": [],
      "timeout_seconds": 86400,
      "type": 1,
      "uuid": "28a09fcd-fc57-4e84-9ebd-924fded788fd",
      "view_items": [],
      "workflows": [
        "palo_alto_firewall_block_external_ip"
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
    }
  ],
  "apps": [],
  "automatic_tasks": [],
  "export_date": 1676447234849,
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
      "export_key": "__function/palo_alto_tag",
      "hide_notification": false,
      "id": 1185,
      "input_type": "text",
      "internal": false,
      "is_tracked": false,
      "name": "palo_alto_tag",
      "operation_perms": {},
      "operations": [],
      "placeholder": "",
      "prefix": null,
      "read_only": false,
      "required": "always",
      "rich_text": false,
      "tags": [],
      "templates": [],
      "text": "palo_alto_tag",
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
      "display_name": "Palo Alto Firewall: Block external IP",
      "export_key": "palo_alto_firewall_block_external_ip",
      "id": 46,
      "last_modified_by": {
        "display_name": "Administrator Local",
        "id": 1,
        "name": "admin@sctssg.vn",
        "type": "user"
      },
      "last_modified_time": 1676446170172,
      "name": "palo_alto_firewall_block_external_ip",
      "tags": [],
      "uuid": "5514ee8f-86e1-499d-ae59-3a959bf925a3",
      "version": 1,
      "view_items": [],
      "workflows": [
        {
          "actions": [],
          "description": null,
          "name": "Palo Alto Firewall: Block external IP",
          "object_type": "artifact",
          "programmatic_name": "palo_alto_firewall_block_external_ip",
          "tags": [],
          "uuid": null,
          "workflow_id": 60
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
    }
  ],
  "geos": null,
  "groups": null,
  "id": 92,
  "inbound_destinations": [],
  "inbound_mailboxes": null,
  "incident_artifact_types": [],
  "incident_types": [
    {
      "create_date": 1676447233827,
      "description": "Customization Packages (internal)",
      "enabled": false,
      "export_key": "Customization Packages (internal)",
      "hidden": false,
      "id": 0,
      "name": "Customization Packages (internal)",
      "parent_id": null,
      "system": false,
      "update_date": 1676447233827,
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
        "version": 3,
        "workflow_id": "palo_alto_firewall_create_a_new_tag",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_create_a_new_tag\" isExecutable=\"true\" name=\"Palo Alto Firewall: Create a new tag\"\u003e\u003cdocumentation/\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0ev08f5\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_0fvsu1l\" name=\"Palo Alto: Create a new tag\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"5af191f7-2b15-4475-b199-661cd6416e04\"\u003e{\"inputs\":{},\"pre_processing_script\":\"inputs.palo_alto_tag = rule.properties.palo_alto_firewall_tag_name\",\"pre_processing_script_language\":\"python3\"}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0ev08f5\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_1kffwf0\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0ev08f5\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_0fvsu1l\"/\u003e\u003cendEvent id=\"EndEvent_0kdf06z\"\u003e\u003cincoming\u003eSequenceFlow_1kffwf0\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_1kffwf0\" sourceRef=\"ServiceTask_0fvsu1l\" targetRef=\"EndEvent_0kdf06z\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_140m9lm\"\u003e\u003ctext\u003e\u003c![CDATA[End your workflow here\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_0ubn6sq\" sourceRef=\"EndEvent_0kdf06z\" targetRef=\"TextAnnotation_140m9lm\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_0fvsu1l\" id=\"ServiceTask_0fvsu1l_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"301\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0ev08f5\" id=\"SequenceFlow_0ev08f5_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"301\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"249.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_0kdf06z\" id=\"EndEvent_0kdf06z_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"527.2420731707317\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"545.2420731707317\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_1kffwf0\" id=\"SequenceFlow_1kffwf0_di\"\u003e\u003comgdi:waypoint x=\"401\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"527\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"464\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_140m9lm\" id=\"TextAnnotation_140m9lm_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"550\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_0ubn6sq\" id=\"Association_0ubn6sq_di\"\u003e\u003comgdi:waypoint x=\"557\" xsi:type=\"omgdc:Point\" y=\"219\"/\u003e\u003comgdi:waypoint x=\"587\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 3,
      "description": "",
      "export_key": "palo_alto_firewall_create_a_new_tag",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1676444080725,
      "name": "Palo Alto Firewall: Create a new tag",
      "object_type": "incident",
      "programmatic_name": "palo_alto_firewall_create_a_new_tag",
      "tags": [],
      "uuid": "455dbfc8-dc1b-4598-9584-5b16686a97b1",
      "workflow_id": 59
    },
    {
      "actions": [],
      "content": {
        "version": 3,
        "workflow_id": "palo_alto_firewall_block_external_ip",
        "xml": "\u003c?xml version=\"1.0\" encoding=\"UTF-8\"?\u003e\u003cdefinitions xmlns=\"http://www.omg.org/spec/BPMN/20100524/MODEL\" xmlns:bpmndi=\"http://www.omg.org/spec/BPMN/20100524/DI\" xmlns:omgdc=\"http://www.omg.org/spec/DD/20100524/DC\" xmlns:omgdi=\"http://www.omg.org/spec/DD/20100524/DI\" xmlns:resilient=\"http://resilient.ibm.com/bpmn\" xmlns:xsd=\"http://www.w3.org/2001/XMLSchema\" xmlns:xsi=\"http://www.w3.org/2001/XMLSchema-instance\" targetNamespace=\"http://www.camunda.org/test\"\u003e\u003cprocess id=\"palo_alto_firewall_block_external_ip\" isExecutable=\"true\" name=\"Palo Alto Firewall: Block external IP\"\u003e\u003cdocumentation/\u003e\u003cstartEvent id=\"StartEvent_155asxm\"\u003e\u003coutgoing\u003eSequenceFlow_0s9smna\u003c/outgoing\u003e\u003c/startEvent\u003e\u003cserviceTask id=\"ServiceTask_150rh7z\" name=\"Palo Alto Firewall: Block externa...\" resilient:type=\"function\"\u003e\u003cextensionElements\u003e\u003cresilient:function uuid=\"5514ee8f-86e1-499d-ae59-3a959bf925a3\"\u003e{\"inputs\":{}}\u003c/resilient:function\u003e\u003c/extensionElements\u003e\u003cincoming\u003eSequenceFlow_0s9smna\u003c/incoming\u003e\u003coutgoing\u003eSequenceFlow_0vatpi9\u003c/outgoing\u003e\u003c/serviceTask\u003e\u003csequenceFlow id=\"SequenceFlow_0s9smna\" sourceRef=\"StartEvent_155asxm\" targetRef=\"ServiceTask_150rh7z\"/\u003e\u003cendEvent id=\"EndEvent_18aa5u2\"\u003e\u003cincoming\u003eSequenceFlow_0vatpi9\u003c/incoming\u003e\u003c/endEvent\u003e\u003csequenceFlow id=\"SequenceFlow_0vatpi9\" sourceRef=\"ServiceTask_150rh7z\" targetRef=\"EndEvent_18aa5u2\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1kxxiyt\"\u003e\u003ctext\u003eStart your workflow here\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_1seuj48\" sourceRef=\"StartEvent_155asxm\" targetRef=\"TextAnnotation_1kxxiyt\"/\u003e\u003ctextAnnotation id=\"TextAnnotation_1a0n3q0\"\u003e\u003ctext\u003e\u003c![CDATA[End your workflow here\n]]\u003e\u003c/text\u003e\u003c/textAnnotation\u003e\u003cassociation id=\"Association_068yuep\" sourceRef=\"EndEvent_18aa5u2\" targetRef=\"TextAnnotation_1a0n3q0\"/\u003e\u003c/process\u003e\u003cbpmndi:BPMNDiagram id=\"BPMNDiagram_1\"\u003e\u003cbpmndi:BPMNPlane bpmnElement=\"undefined\" id=\"BPMNPlane_1\"\u003e\u003cbpmndi:BPMNShape bpmnElement=\"StartEvent_155asxm\" id=\"StartEvent_155asxm_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"162\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"0\" width=\"90\" x=\"157\" y=\"223\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1kxxiyt\" id=\"TextAnnotation_1kxxiyt_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"99\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_1seuj48\" id=\"Association_1seuj48_di\"\u003e\u003comgdi:waypoint x=\"169\" xsi:type=\"omgdc:Point\" y=\"220\"/\u003e\u003comgdi:waypoint x=\"153\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"ServiceTask_150rh7z\" id=\"ServiceTask_150rh7z_di\"\u003e\u003comgdc:Bounds height=\"80\" width=\"100\" x=\"321\" y=\"166\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0s9smna\" id=\"SequenceFlow_0s9smna_di\"\u003e\u003comgdi:waypoint x=\"198\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"321\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"259.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"EndEvent_18aa5u2\" id=\"EndEvent_18aa5u2_di\"\u003e\u003comgdc:Bounds height=\"36\" width=\"36\" x=\"542\" y=\"188\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"560\" y=\"227\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"SequenceFlow_0vatpi9\" id=\"SequenceFlow_0vatpi9_di\"\u003e\u003comgdi:waypoint x=\"421\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003comgdi:waypoint x=\"542\" xsi:type=\"omgdc:Point\" y=\"206\"/\u003e\u003cbpmndi:BPMNLabel\u003e\u003comgdc:Bounds height=\"13\" width=\"0\" x=\"481.5\" y=\"184\"/\u003e\u003c/bpmndi:BPMNLabel\u003e\u003c/bpmndi:BPMNEdge\u003e\u003cbpmndi:BPMNShape bpmnElement=\"TextAnnotation_1a0n3q0\" id=\"TextAnnotation_1a0n3q0_di\"\u003e\u003comgdc:Bounds height=\"30\" width=\"100\" x=\"573\" y=\"254\"/\u003e\u003c/bpmndi:BPMNShape\u003e\u003cbpmndi:BPMNEdge bpmnElement=\"Association_068yuep\" id=\"Association_068yuep_di\"\u003e\u003comgdi:waypoint x=\"572\" xsi:type=\"omgdc:Point\" y=\"218\"/\u003e\u003comgdi:waypoint x=\"608\" xsi:type=\"omgdc:Point\" y=\"254\"/\u003e\u003c/bpmndi:BPMNEdge\u003e\u003c/bpmndi:BPMNPlane\u003e\u003c/bpmndi:BPMNDiagram\u003e\u003c/definitions\u003e"
      },
      "content_version": 3,
      "description": "",
      "export_key": "palo_alto_firewall_block_external_ip",
      "last_modified_by": "admin@sctssg.vn",
      "last_modified_time": 1676446214832,
      "name": "Palo Alto Firewall: Block external IP",
      "object_type": "artifact",
      "programmatic_name": "palo_alto_firewall_block_external_ip",
      "tags": [],
      "uuid": "01de273a-9150-4183-9133-0cacebdf9690",
      "workflow_id": 60
    }
  ],
  "workspaces": []
}