import 'package:fl_components/theme/theme.dart';

class AppTheme {
  static const Color primary = Colors.amber;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: primary,
    //appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10,
    ),
    //TextButton Theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        // ignore: deprecated_member_use
        primary: primary,
      ),
    ),
    //FloatingActionButton Theme
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
      elevation: 5,
    ),
    //ElevateButtons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        // ignore: deprecated_member_use
        primary: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topRight: Radius.circular(10),
        ),
      ),
    ),
  );
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    //color primario
    primaryColor: primary,
    //appbar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 10,
    ),
  );
}
