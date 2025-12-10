<p align="center">
<img width="150" height="150" alt="homebrew-small" src="https://github.com/user-attachments/assets/f9eef3de-08d3-4d40-91d5-c7603940bb78" />
</p>

<p align="center">
<br>
<img src="https://img.shields.io/badge/mac%20os-000000?style=plastic&logo=macos&logoColor=F0F0F0">
<img height=20px src="https://img.shields.io/badge/Ubuntu-E95420?style=plastic&logo=ubuntu&logoColor=white">
</p>

# Personal homebrew-tap

Personal Homebrew tap for my CLI tools and utilities. This tap contains packages that I develop and maintain.

# Installation
Add this tap to your Homebrew:

```bash
$> brew tap rvbug/tap
```

# Available Packages

## **doc2quarto** 
Convert Docusaurus markdown files to Quarto format with ease.

# Install:
```bash
bashbrew install rvbug/tap/doc2quarto
```
# Features:

* Converts frontmatter (sidebar_position → order)
* Transforms admonitions to Quarto callout blocks
* Preserves directory structure
* Copies image folders automatically

# Links:

[Doc2Quarto GitHub Repository](https://github.com/rvbug/doc2quarto/)
[Doc2Quarto Documentation](https://qubitai.in/book/doc2quarto/)


## **ratcrate-cli** 
CLI tool to discover, search and list crates which uses Ratatui.

# Install:
```bash
bashbrew install rvbug/tap/ratcrate-cli
```

# Features:

* Discover, Search and displays crates which uses Ratatui  
* Refresh latest crates and runs offline
* Uses fzf 

# Links:

[ratcrate-cli GitHub Repository](https://github.com/ratcrate/ratcrate-cli/)
[ratcrate-cli  Documentation](https://qubitai.in/book/rat-cli/)


# More Tools Coming Soon!
Stay tuned for additional CLI tools and utilities.

# Usage

Installing a Package
```bash
# Install directly (no need to tap first)
brew install rvbug/tap/<package name>
```

## Or tap first, then install
```bash
brew tap rvbug/tap
brew install rvbug/tap/<package name>
```

## Updating Packages
```bash
# Update Homebrew and upgrade packages
brew update
brew upgrade <package name>
```

## Uninstalling
```bash
# Uninstall a package
brew uninstall <package name>
```

## Remove this tap

```bash
brew untap rvbug/tap
```

# For Developers

## Adding a New Formula
If you're contributing or want to understand the structure:

## Fork this repository
Create a new formula in Formula/
Test locally: brew install --build-from-source Formula/your-formula.rb
Submit a pull request

## Formula Structure
Formulae are located in the Formula/ directory. Each formula is a Ruby file that describes how to install the package.

Example:

```ruby
rubyclass MyTool < Formula
  desc "Description of my tool"
  homepage "https://github.com/rvbug/my-tool"
  version "0.1.0"
  license "MIT"
  
  # Platform-specific URLs and checksums
  on_macos do
    # ...
  end
  
  on_linux do
    # ...
  end
  
  def install
    bin.install "my-tool"
  end
end
```

# Support
For package-specific issues, please open an issue in the respective package repository:

[doc2quarto issues](https://github.com/rvbug/doc2quarto/issues)

For tap-related issues (formula problems, installation issues), open an issue [here](https://github.com/rvbug/homebrew-tap/issues).

# About
Maintained by [rvbug](https://github.com/rvbug/)

# License
Individual packages are licensed as noted in their respective repositories. This tap repository itself is MIT licensed.




