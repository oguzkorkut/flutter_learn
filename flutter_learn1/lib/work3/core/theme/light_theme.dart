import 'package:flutter/material.dart';
import 'package:flutter/src/material/theme_data.dart';

import 'ITheme.dart';

class LightTheme extends ITheme {
  static LightTheme? _instace;
  static LightTheme get instance {
    if (_instace != null) return _instace!;
    _instace = LightTheme._init();
    return _instace!;
  }

  LightTheme._init();

  final ThemeData _lightTheme = ThemeData.light();

  @override
  ThemeData get data => ThemeData(
      appBarTheme:
          _lightTheme.appBarTheme.copyWith(backgroundColor: Colors.white),
      // textTheme: TextTheme
      colorScheme: _lightTheme.colorScheme.copyWith(
        primary: Colors.white,
        onPrimary: colors.lynch,
        secondary: Colors.green
      ));
}


// .copyWith(secondary: Colors.green));



//   final ThemeData _lightTheme = ThemeData.light();

//   @override
//   ThemeData get data => ThemeData(
//       appBarTheme:
//           _lightTheme.appBarTheme.copyWith(backgroundColor: Colors.white), colorScheme: _lightTheme.colorScheme.copyWith(
//         primary: Colors.white,
//         onPrimary: colors.lynch,
//         secondary: Colors.green
//       ));
//       // .copyWith(secondary: Colors.green));
// }


//   final ThemeData _lightTheme = ThemeData.light();

//   @override
//   ThemeData get data => ThemeData(
//       appBarTheme:
//           _lightTheme.appBarTheme.copyWith(backgroundColor: Colors.white), colorScheme: _lightTheme.colorScheme.copyWith(
//         primary: Colors.white,
//         onPrimary: colors.lynch,
//       ).copyWith(secondary: Colors.green));
// }

// .copyWith(secondary: Colors.green));



// final ThemeData _lightTheme = ThemeData.light();

//   @override
//   ThemeData get data => ThemeData(
//       appBarTheme:
//           _lightTheme.appBarTheme.copyWith(backgroundColor: Colors.white),
//       // textTheme: TextTheme
//       accentColor: Colors.green,
//       colorScheme: _lightTheme.colorScheme.copyWith(
//         primary: Colors.white,
//         onPrimary: colors.lynch,
//       ));
// }