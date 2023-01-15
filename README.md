# Stack Avatar &middot; ![GitHub license](https://img.shields.io/badge/license-MIT-blue.svg)

## Description 

Example of an avatar stacking implementation like Facebook.

## How to use

```dart
    StackAvatar(
        counter: 3,
        images: [
            for (var n = 0; n <= 5; n++) NetworkImage('https://i.pravatar.cc/150?img=$n'),
        ,
    ),
```
