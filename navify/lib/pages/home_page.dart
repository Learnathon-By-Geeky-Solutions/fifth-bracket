import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Signed in'),
              MaterialButton(onPressed: (){
                FirebaseAuth.instance.signOut();
              },
                color: Colors.grey[300],
                child: Text('Sign out'),
              ),
            ],
          )
      ),
    );
  }
}
