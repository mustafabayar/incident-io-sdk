
# Incident.io Ruby SDK

A comprehensive Ruby SDK for interacting with the [incident.io API](https://incident.io), generated using [OpenAPI Generator](https://openapi-generator.tech). This SDK provides full coverage of the REST API endpoints to integrate with the incident.io platform.

## Table of Contents

- [Installation](#installation)
- [Usage](#usage)
- [Development](#development)
- [Testing](#testing)
- [Contributing](#contributing)
- [License](#license)

## Installation

To install the gem, run the following command:

```bash
gem install incident_io_sdk
```

Alternatively, you can add it to your `Gemfile`:

```ruby
gem 'incident_io_sdk', '~> 0.1.0'
```

Then run:

```bash
bundle install
```

## Usage

### Initialization

First, you'll need to configure the SDK with your API key:

```ruby
require 'incident_io_sdk'

client = IncidentIoSdk::Client.new(api_key: 'your-api-key')
```

### Making Requests

Once the client is initialized, you can use it to interact with the API:

```ruby
# Example: Fetching an incident
incident = client.incidents.get(incident_id: '12345')

puts incident.details
```

### Available Endpoints

You can use the SDK to interact with the following endpoints (examples):

- **Get Incidents**: `client.incidents.get`
- **Create an Incident**: `client.incidents.create`

For full usage examples, refer to the [documentation](https://docs.incident.io).

## Development

### Prerequisites

Ensure that you have the following installed:

- Ruby (>= 2.7)
- Bundler (install with `gem install bundler`)
- Dependencies can be installed with:

```bash
bundle install
```

### Running the Development Server

For development purposes, you can run the SDK in a local environment:

1. Clone the repository:

   ```bash
   git clone https://github.com/mustafabayar/incident_io_ruby_sdk.git
   cd incident_io_ruby_sdk
   ```

2. Install dependencies:

   ```bash
   bundle install
   ```

## Testing

To run the test suite:

```bash
bundle exec rspec
```

This will run all tests under the `spec` directory.

## Contributing

We welcome contributions! If you'd like to help improve this SDK, please follow these steps:

1. Fork the repository
2. Create a new branch for your feature or fix
3. Write tests and documentation as needed
4. Ensure all tests pass
5. Submit a pull request

Please make sure to update tests as appropriate.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.
