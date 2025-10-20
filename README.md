# Simeioseis

Academic notes template for Typst

## Installation
To install locally on macOS:

```
./install.sh
```

This copies the package into Typst’s local directory:

```
~/Library/Application Support/typst/packages/local/simeioseis/1.0.0
```

## Usage

Import the package in your Typst document:

```typst
#import "@local/simeioseis:1.0.0": conf

#show: simeioseis.with(
  title: "Calculus Notes",
  author: "Thrasos Charalambous"
)

= Limits
#lorem(100)

= Differentiation
#lorem(100)

= Integration
#lorem(100)

= Partial Derivatives
#lorem(100)
```