# Border Toggle Switch

Border Toggle Switch - A simple beautiful bottom border toggle switch widget. It can be fully customized with desired colors, width, text, corner radius etc. It also maintains selection state and return function as a selected toggle.

## Getting Started

In the `pubspec.yaml` of your flutter project, add the following dependency:

```yaml
dependencies:
  ...
  border_toggle_switch: ^0.0.1
```

Import it:

```dart
import 'package:border_toggle_switch/border_toggle_switch.dart';
```

## Usage Examples

![img1](https://user-images.githubusercontent.com/61883398/179296814-e98e43e7-e9a7-4aec-a21d-708322b4349a.PNG)

![img2](https://user-images.githubusercontent.com/61883398/179296861-d20fcb60-12eb-4569-a514-cf5043aeed6f.PNG)


### With border color, border width, custom height and different active background colors , with return function

```dart
BorderToggleSwitch(
            bottomBorderColor: Colors.blue,
            activeToggleName: "Left",
            inActiveToggleName: "Right",
            isClicked: (value) {
              debugPrint(value);
            },
            isBorder: true,
            activeBackgroundColor: Colors.white,
            inActiveBackgroundColor: Colors.black12,
            height: 45,
            borderSize: 3,
            radius: 15,
            bottomRightRadius: 15,
            bottomLeftRadius: 15,
            topRightRadius: 15,
            topLeftRadius: 15,
            inActiveToggleNameStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
            activeToggleNameStyle: const TextStyle(fontWeight: FontWeight.bold,color: Colors.blue),
          ),
```

[Example code with explanation](https://github.com/crazy-diya/border_toggle_switch.git)

