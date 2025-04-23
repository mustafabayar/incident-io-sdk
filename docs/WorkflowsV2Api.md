# IncidentIoSdk::WorkflowsV2Api

All URIs are relative to *https://api.incident.io*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**workflows_v2_create_workflow**](WorkflowsV2Api.md#workflows_v2_create_workflow) | **POST** /v2/workflows | CreateWorkflow Workflows V2 |
| [**workflows_v2_destroy_workflow**](WorkflowsV2Api.md#workflows_v2_destroy_workflow) | **DELETE** /v2/workflows/{id} | DestroyWorkflow Workflows V2 |
| [**workflows_v2_list_workflows**](WorkflowsV2Api.md#workflows_v2_list_workflows) | **GET** /v2/workflows | ListWorkflows Workflows V2 |
| [**workflows_v2_show_workflow**](WorkflowsV2Api.md#workflows_v2_show_workflow) | **GET** /v2/workflows/{id} | ShowWorkflow Workflows V2 |
| [**workflows_v2_update_workflow**](WorkflowsV2Api.md#workflows_v2_update_workflow) | **PUT** /v2/workflows/{id} | UpdateWorkflow Workflows V2 |


## workflows_v2_create_workflow

> <WorkflowsCreateWorkflowResultV2> workflows_v2_create_workflow(workflows_create_workflow_payload_v2)

CreateWorkflow Workflows V2

Create a new workflow

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::WorkflowsV2Api.new
workflows_create_workflow_payload_v2 = IncidentIoSdk::WorkflowsCreateWorkflowPayloadV2.new({condition_groups: [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}], continue_on_step_error: true, expressions: [{"else_branch": {"result": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}, "label": "Team Slack channel", "operations": [{"branches": {"branches": [{"condition_groups": [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}], "result": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}], "returns": {"array": true, "type": "IncidentStatus"}}, "filter": {"condition_groups": [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}]}, "navigate": {"reference": "catalog_attribute[\"01FCNDV6P870EA6S7TK1DSYD5H\"]"}, "operation_type": "navigate", "parse": {"returns": {"array": true, "type": "IncidentStatus"}, "source": "metadata.annotations[\"github.com/repo\"]"}}], "reference": "abc123", "root_reference": "incident.status"}], include_private_incidents: true, name: 'My little workflow', once_for: ["incident.url"], runs_on_incident_modes: ["standard", "test", "retrospective"], runs_on_incidents: 'newly_created', steps: [{"for_each": "abc123", "id": "abc123", "name": "pagerduty.escalate", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}]}], trigger: 'incident.updated'}) # WorkflowsCreateWorkflowPayloadV2 | 

begin
  # CreateWorkflow Workflows V2
  result = api_instance.workflows_v2_create_workflow(workflows_create_workflow_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_create_workflow: #{e}"
end
```

#### Using the workflows_v2_create_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowsCreateWorkflowResultV2>, Integer, Hash)> workflows_v2_create_workflow_with_http_info(workflows_create_workflow_payload_v2)

```ruby
begin
  # CreateWorkflow Workflows V2
  data, status_code, headers = api_instance.workflows_v2_create_workflow_with_http_info(workflows_create_workflow_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowsCreateWorkflowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_create_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **workflows_create_workflow_payload_v2** | [**WorkflowsCreateWorkflowPayloadV2**](WorkflowsCreateWorkflowPayloadV2.md) |  |  |

### Return type

[**WorkflowsCreateWorkflowResultV2**](WorkflowsCreateWorkflowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json


## workflows_v2_destroy_workflow

> workflows_v2_destroy_workflow(id)

DestroyWorkflow Workflows V2

Archives a workflow

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::WorkflowsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the workflow

begin
  # DestroyWorkflow Workflows V2
  api_instance.workflows_v2_destroy_workflow(id)
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_destroy_workflow: #{e}"
end
```

#### Using the workflows_v2_destroy_workflow_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> workflows_v2_destroy_workflow_with_http_info(id)

```ruby
begin
  # DestroyWorkflow Workflows V2
  data, status_code, headers = api_instance.workflows_v2_destroy_workflow_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_destroy_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the workflow |  |

### Return type

nil (empty response body)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: Not defined


## workflows_v2_list_workflows

> <WorkflowsListWorkflowsResultV2> workflows_v2_list_workflows

ListWorkflows Workflows V2

List all workflows

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::WorkflowsV2Api.new

begin
  # ListWorkflows Workflows V2
  result = api_instance.workflows_v2_list_workflows
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_list_workflows: #{e}"
end
```

#### Using the workflows_v2_list_workflows_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowsListWorkflowsResultV2>, Integer, Hash)> workflows_v2_list_workflows_with_http_info

```ruby
begin
  # ListWorkflows Workflows V2
  data, status_code, headers = api_instance.workflows_v2_list_workflows_with_http_info
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowsListWorkflowsResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_list_workflows_with_http_info: #{e}"
end
```

### Parameters

This endpoint does not need any parameter.

### Return type

[**WorkflowsListWorkflowsResultV2**](WorkflowsListWorkflowsResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflows_v2_show_workflow

> <WorkflowsShowWorkflowResultV2> workflows_v2_show_workflow(id, opts)

ShowWorkflow Workflows V2

Show a workflow by ID

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::WorkflowsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | Unique identifier for the workflow
opts = {
  skip_step_upgrades: false # Boolean | Skips workflow step upgrades, when the parameters for an existing workflow step change
}

begin
  # ShowWorkflow Workflows V2
  result = api_instance.workflows_v2_show_workflow(id, opts)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_show_workflow: #{e}"
end
```

#### Using the workflows_v2_show_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowsShowWorkflowResultV2>, Integer, Hash)> workflows_v2_show_workflow_with_http_info(id, opts)

```ruby
begin
  # ShowWorkflow Workflows V2
  data, status_code, headers = api_instance.workflows_v2_show_workflow_with_http_info(id, opts)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowsShowWorkflowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_show_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the workflow |  |
| **skip_step_upgrades** | **Boolean** | Skips workflow step upgrades, when the parameters for an existing workflow step change | [optional] |

### Return type

[**WorkflowsShowWorkflowResultV2**](WorkflowsShowWorkflowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json


## workflows_v2_update_workflow

> <WorkflowsUpdateWorkflowResultV2> workflows_v2_update_workflow(id, workflows_update_workflow_payload_v2)

UpdateWorkflow Workflows V2

Updates a workflow

### Examples

```ruby
require 'time'
require 'incident_io_sdk'

api_instance = IncidentIoSdk::WorkflowsV2Api.new
id = '01FCNDV6P870EA6S7TK1DSYDG0' # String | ID of the workflow to update
workflows_update_workflow_payload_v2 = IncidentIoSdk::WorkflowsUpdateWorkflowPayloadV2.new({condition_groups: [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}], continue_on_step_error: true, expressions: [{"else_branch": {"result": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}, "label": "Team Slack channel", "operations": [{"branches": {"branches": [{"condition_groups": [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}], "result": {"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}}], "returns": {"array": true, "type": "IncidentStatus"}}, "filter": {"condition_groups": [{"conditions": [{"operation": "one_of", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}], "subject": "incident.severity"}]}]}, "navigate": {"reference": "catalog_attribute[\"01FCNDV6P870EA6S7TK1DSYD5H\"]"}, "operation_type": "navigate", "parse": {"returns": {"array": true, "type": "IncidentStatus"}, "source": "metadata.annotations[\"github.com/repo\"]"}}], "reference": "abc123", "root_reference": "incident.status"}], include_private_incidents: true, name: 'My little workflow', once_for: ["incident.url"], runs_on_incident_modes: ["standard", "test", "retrospective"], runs_on_incidents: 'newly_created', steps: [{"for_each": "abc123", "id": "abc123", "name": "pagerduty.escalate", "param_bindings": [{"array_value": [{"literal": "SEV123", "reference": "incident.severity"}], "value": {"literal": "SEV123", "reference": "incident.severity"}}]}]}) # WorkflowsUpdateWorkflowPayloadV2 | 

begin
  # UpdateWorkflow Workflows V2
  result = api_instance.workflows_v2_update_workflow(id, workflows_update_workflow_payload_v2)
  p result
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_update_workflow: #{e}"
end
```

#### Using the workflows_v2_update_workflow_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkflowsUpdateWorkflowResultV2>, Integer, Hash)> workflows_v2_update_workflow_with_http_info(id, workflows_update_workflow_payload_v2)

```ruby
begin
  # UpdateWorkflow Workflows V2
  data, status_code, headers = api_instance.workflows_v2_update_workflow_with_http_info(id, workflows_update_workflow_payload_v2)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkflowsUpdateWorkflowResultV2>
rescue IncidentIoSdk::ApiError => e
  puts "Error when calling WorkflowsV2Api->workflows_v2_update_workflow_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | ID of the workflow to update |  |
| **workflows_update_workflow_payload_v2** | [**WorkflowsUpdateWorkflowPayloadV2**](WorkflowsUpdateWorkflowPayloadV2.md) |  |  |

### Return type

[**WorkflowsUpdateWorkflowResultV2**](WorkflowsUpdateWorkflowResultV2.md)

### Authorization

No authorization required

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

