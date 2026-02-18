# NetVibe CLI

This tap provides the  **NetVibe CLI**  and runs it as a background service using Homebrew.

## 🚀 Installation

```sh
brew tap Manni-MinM/homebrew-netvibe
brew install netvibe-cli
```

## 🧰 Initial Setup

After installation, run the setup command:

```sh
netvibe-cli setup
```

You will be prompted to enter:

-   **Vibepass**
    

This configures your NetVibe CLI environment.

## 🔄 Start / Restart the Service

After setup, restart the service:

```sh
brew services restart netvibe-cli
```

## ✅ Verify the Service

Check that everything is running correctly:

```sh
brew services info netvibe-cli
```

A healthy setup should show green checkmarks similar to:

```
netvibe-cli (homebrew.mxcl.netvibe-cli)
Running: ✔
Loaded:  ✔
```

## 📦 Upgrade

To upgrade the CLI:

```sh
brew update
brew upgrade netvibe-cli
```

## 🗑 Uninstall

```sh
brew uninstall netvibe-cli
brew untap Manni-MinM/homebrew-netvibe
```
