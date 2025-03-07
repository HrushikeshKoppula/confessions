import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'post_confession_screen.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Anonymous Confessions',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
      routes: {
        '/post': (context) => PostConfessionScreen(),
      },
    );
  }
}
