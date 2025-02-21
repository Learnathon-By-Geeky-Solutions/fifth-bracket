import 'package:flutter/material.dart';
class AppTheme {
  final Color _primaryColor=Color(0xFFFFFF00);
  final Color _onPrimaryColor=Color(0xFFF7F7D8);
  final Color _secondaryColor=Color(0xFFFFFF00);
  final Color _onSecondaryColor=Color(0xFFF7F7D8);
  final Color _bgColor=Color(0xFF000000);
  final Color _errorColor=Color(0xFFBB1F22);
  ThemeData getThemeData(){
    return ThemeData(
      colorScheme: ColorScheme(
        brightness: Brightness.light,
        primary: _primaryColor,
        onPrimary: _onPrimaryColor,
        secondary: _secondaryColor,
        onSecondary: _onSecondaryColor,
        error: _errorColor,
        onError: _errorColor,
        surface: _bgColor,
        onSurface: _bgColor,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: _bgColor,
        centerTitle: true,
        titleTextStyle: TextStyle(
          color: _primaryColor,
          fontSize: 20,
        ),
      ),
      buttonTheme: ButtonThemeData(
        colorScheme: ColorScheme(
          brightness: Brightness.light,
          primary: _primaryColor,
          onPrimary: _onPrimaryColor,
          secondary: _secondaryColor,
          onSecondary: _secondaryColor,
          error: _errorColor,
          onError: _errorColor,
          surface: _bgColor,
          onSurface: _bgColor
        ),
        buttonColor: _primaryColor,
        minWidth: 30,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.resolveWith<Color?>(
            (Set<MaterialState> states) {
              if (states.contains(MaterialState.disabled)) {
                return Colors.grey; // Disabled color
              } else if (states.contains(MaterialState.pressed)) {
                return _onPrimaryColor; // Pressed color
              }
              return _primaryColor; // Default color
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
  AppBar makeNormalAppBar(String title){
    return AppBar(
      title: Text(title),
      bottom: PreferredSize(
        preferredSize: const Size.fromHeight(1.0), // Set the height of the line
        child: Container(
          color: _primaryColor, // Set the color of the line
          height: 1.0, // Set the height of the line (thickness)
        ),
      ),
    );
  }
}
AppTheme appTheme=AppTheme();