# setup-vulkan-sdk
[![Main](https://github.com/TWoolhouse/setup-vulkan-sdk/actions/workflows/test.yml/badge.svg)](https://github.com/TWoolhouse/setup-vulkan-sdk/actions/workflows/test.yml)
Github Action to setup the Vulkan SDK

Supported Runners:
- Windows
- Linux
- ~~macOS~~

## Usage

### Inputs

- `version` - The version of the SDK. Use `latest` to get the latest release from lunarg.
- `components` - A space seperated list of optional components to install found on [lunarg](https://vulkan.lunarg.com/doc/sdk/1.3.224.1/windows/getting_started.html) under `Installing Optional Components`. E.g. "com.lunarg.vulkan.debug com.lunarg.vulkan.glm"

### Outputs

- `version` - The version of the installed SDK.

- `path` - The path to the Vulkan SDK installation.
