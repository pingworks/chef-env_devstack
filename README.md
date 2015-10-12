# env_devstack-cookbook

Installs and configures env_devstack

## Supported Platforms

Ubuntu 14.04

## Attributes

<table>
  <tr>
    <th>Key</th>
    <th>Type</th>
    <th>Description</th>
    <th>Default</th>
  </tr>
  <tr>
    <td><tt>['env_devstack']['bacon']</tt></td>
    <td>Boolean</td>
    <td>whether to include bacon</td>
    <td><tt>true</tt></td>
  </tr>
</table>

## Usage

### env_devstack::default

Include `env_devstack` in your node's `run_list`:

```json
{
  "run_list": [
    "recipe[env_devstack::default]"
  ]
}
```

## License and Authors

Author:: Christoph Lukas (<christoph.lukas@gmx.net>)
