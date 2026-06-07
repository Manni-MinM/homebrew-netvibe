# NetVibe CLI

This Homebrew tap provides the NetVibe CLI and manages it as a background service using Homebrew.

## Install

Add the NetVibe tap and install NetVibe CLI:

```sh
brew tap Manni-MinM/homebrew-netvibe
brew install netvibe-cli
```

Verify the installation:

```sh
netvibe-cli --help
```

## Configure NetVibe CLI

Run the setup command and enter your Vibepass when prompted:

```sh
netvibe-cli setup
```

This configuration is stored locally and reused for future runs.

## Run NetVibe as a Service

NetVibe CLI runs as a Homebrew managed background service.

Start or restart the service:

```sh
brew services restart netvibe-cli
```

To start the service for the first time:

```sh
brew services start netvibe-cli
```

## Verify Service Status

Check the service status:

```sh
brew services info netvibe-cli
```

A healthy installation should report the service as running and loaded.

## Upgrade

Update Homebrew and upgrade NetVibe CLI:

```sh
brew update
brew upgrade netvibe-cli
```

## Uninstall

Stop and remove NetVibe CLI:

```sh
brew services stop netvibe-cli
brew uninstall netvibe-cli
brew untap Manni-MinM/homebrew-netvibe
```

## Troubleshooting

If the service fails to start, inspect the Homebrew service logs:

```sh
brew services info netvibe-cli
```

You can also restart the service:

```sh
brew services restart netvibe-cli
```
