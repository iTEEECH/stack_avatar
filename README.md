# Stack avatar

## Summary
- 🚀 Platforms
- 📃 Description
- ⚙️ Setup
- 💻 Use case

## Platforms
| Android | iOS | Web |
|:-------:|:---:|:---:|
|    ✅    |  ✅  |  ✅   |

## Description

This package provides a set of circular avatar stacks, with an optional counter to indicate the total number of avatars or users.

## Setup

Add in this file ```pubspec.yaml```.

```yaml
  validator:
    git:
      url: git@github.com:iTEEECH/stack_avatar.git
      ref: main
```

## Use case

**Import**

```dart
import 'package:stack_avatar/stack_avatar.dart';
```

**Code**

```dart
return Column(
  children: <Widget>[
    SizedBox(
      height: 100.0,
      child: StackAvatar(
        counter: 3,
        images: [
          for (int index = 0; index <= 5; index++) NetworkImage('https://i.pravatar.cc/150?img=$index'),
        ],
      ),
    ),
  ],
);
```
