# akwap

A database of Uganda's districts, counties, sub-counties, parishes and villages, complete with full dart support.

## Usage

Import the library

```dart
import 'package:akwap/akwap.dart';
```

## Loading Locations

```dart
import 'package:akwap/akwap.dart';

const _districts = await districts;

// get first district
print(_districts.findByName('ABIM'));
// [{
//   id: 98,
//   name: 'ABIM',
//   counties: [...]   
// }]
```

## Example preview

| |
|--|
![01](screenshots/preview.gif) |

> Note: The package is not 100% accurate as we do not have a single source of truth for Ugandan locations. All corrections and additions are welcome.
