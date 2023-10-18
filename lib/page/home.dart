import 'package:flutter/material.dart';
import 'package:flutter_application_3/components/grille.dart';
import 'package:flutter_application_3/components/navbar.dart';


class Home extends StatefulWidget {
  const Home({super.key, required this.title});

  final String title;

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
    
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: NavbarComponent(title: widget.title)
      ),
      body: const GrilleComponents(),
    );
  }
}