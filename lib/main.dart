import 'package:flutter/material.dart';
import 'package:flutter_application_3/page/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 190, 213, 232)),
        useMaterial3: true,
      ),
      home: const Home(title: 'Clavier'),
    );
  }
}


