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

[GitHub Repository]()
[Documentation]()
[Report Issues]()


# More Tools Coming Soon!
Stay tuned for additional CLI tools and utilities.

# Usage

Installing a Package
```bash
# Install directly (no need to tap first)
brew install rvbug/tap/doc2quarto
```

## Or tap first, then install
```bash
brew tap rvbug/tap
brew install rvbug/tap/doc2quarto
```

## Updating Packages
```bash
# Update Homebrew and upgrade packages
brew update
brew upgrade doc2quarto
```

## Uninstalling
```bash
# Uninstall a package
brew uninstall doc2quarto
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




