import 'package:flutter/material.dart';
class AppTheme {
  ThemeData getThemeData(){
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: Color(0xFFFFFF00),
        onPrimary: Color(0xFFF7F7D8),
        secondary: Color(0xFFFFFF00),
        onSecondary: Color(0xFFF7F7D8),
        error: Color(0xFFBB1F22),
        onError: Color(0xFFBB1F22),
        surface: Color(0xFF000000),
        onSurface: Color(0xFF303030)
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: Colors.black,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: Color(0xFFFFFF00),
          fontSize: 20,
        ),
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: Color(0xFF000000),
          onPrimary: Color(0xFFF7F7D8),
          secondary: Color(0xFF000000),
          onSecondary: Color(0xFFF7F7D8),
          error: Color(0xFFBB1F22),
          onError: Color(0xFFBB1F22),
          surface: Color(0xFFFFFF00),
          onSurface: Color(0xFF303030)
        ),
        buttonColor: Color(0xFFFFFF00),
        minWidth: 30,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.grey; // Disabled color
              } else if (states.contains(MaterialState.pressed)) {
                return Color(0xFFFFFF7F); // Pressed color
              }
              return Color(0xFFFFFF00); // Default color
            }
          ),
          foregroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.grey[400]; // Disabled text color
              }
              return Colors.black; // Default text color
            }
          ),
          padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
            const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          ),
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          elevation: MaterialStateProperty.all<double>(4),
          minimumSize: MaterialStateProperty.resolveWith<Size?>(
            (Set<MaterialState> states) {
              return const Size(200, 60); // Default minimum size
            },
          ),
        ),
      ),
    );
  }
}
AppTheme appTheme=AppTheme();