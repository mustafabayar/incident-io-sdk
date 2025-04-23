# IncidentIoSdk::IncidentRolesListResultV2

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **incident_roles** | [**Array&lt;IncidentRoleV2&gt;**](IncidentRoleV2.md) |  |  |

## Example

```ruby
require 'incident_io_sdk'

instance = IncidentIoSdk::IncidentRolesListResultV2.new(
  incident_roles: [{&quot;created_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;,&quot;description&quot;:&quot;The person currently coordinating the incident&quot;,&quot;id&quot;:&quot;01FCNDV6P870EA6S7TK1DSYDG0&quot;,&quot;instructions&quot;:&quot;Take point on the incident; Make sure people are clear on responsibilities&quot;,&quot;name&quot;:&quot;Incident Lead&quot;,&quot;role_type&quot;:&quot;lead&quot;,&quot;shortform&quot;:&quot;lead&quot;,&quot;updated_at&quot;:&quot;2021-08-17T13:28:57.801578Z&quot;}]
)
```

