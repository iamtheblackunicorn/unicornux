<p align="center">
 <img src="assets/images/banner.png"/>
</p>

# UNICORN UX

*UI components for designers committed to elegance.* :unicorn:

## About :books:

Because I found myself re-using and re-writing many components that I needed for writing new apps and maintaining old ones that were all carefully crafted for their respective purposes, I decided to write a package that unifies these components and gives me and everyone else one place from which to import and customize these components. Unicorn UX or Unicorn UI(X) is this package, bringing you many expertly-crafted, bespoke components for your Flutter apps!


## Installation :inbox_tray:

To add *Unicorn UX* to your app, add this line to your `pubspec.yaml`:

```YAML
unicornux:
  git: https://github.com/iamtheblackunicorn/unicornux
```

## Usage :hammer:

### Importing

To import all components into your app, add this line to the top of your app's main Dart source file:

```dart
import 'package:unicornux/unicornux.dart';
```

### API

To see detailed usage of all available widgets, please check the example provided [here](example/README.md).

#### Widget list

##### Card
A simple card with rounding and padding.
##### Gradient Card
A card that allows two colors to fade into each other.
##### Error
A widget to display when errors occur in your app.
##### Loading Animation
A widget to display when using futures or loading content.
##### Button
A simple button with rounding, padding and all other normal parts of a button.
##### Info Widget
A widget to display information about your app. `shouldWrap` should be set to `true`.
