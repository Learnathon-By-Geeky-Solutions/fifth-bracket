import 'package:flutter/material.dart';
import 'package:navify/authentication/login_page.dart';
import 'package:navify/authentication/register_page.dart';

class CheckAuthentication extends StatefulWidget {
  const CheckAuthentication({super.key});

  @override
  State<CheckAuthentication> createState() => _CheckAuthenticationState();
}

class _CheckAuthenticationState extends State<CheckAuthentication> {
  ///Initially -> Show login page then alter to registration page
  bool showLoginPage = true;

  void toggleScreens(){
    setState(() {
      showLoginPage = !showLoginPage;
    });
  }
  @override
  Widget build(BuildContext context) {
  if(showLoginPage){
    return LoginPage(showRegisterPage: toggleScreens);
  }
  else{
    return RegisterPage(showLoginPage: toggleScreens);
  }
  }
}
