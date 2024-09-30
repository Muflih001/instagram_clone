import 'package:flutter/material.dart';
import 'package:instagram_clone/view/screens/AddPostScreen.dart';
import 'package:instagram_clone/view/screens/LoginScreen.dart';
import 'package:instagram_clone/view/screens/FeedScreen.dart';
import 'package:instagram_clone/view/screens/SignUpScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
      routes: {
        'LoginScreen': (context) => LoginScreen(),
        'FeedScreen': (context) => const FeedScreen(),
        'SignUpScreen': (context) => const SignUpScreen(),
        'AddPostScreen': (context) => AddPostScreen(),
      },
    );
  }
}
