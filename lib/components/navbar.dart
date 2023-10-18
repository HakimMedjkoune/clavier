
import 'package:flutter/material.dart';

class NavbarComponent extends StatefulWidget {
  const NavbarComponent({super.key, required this.title});

  final String title;

  @override
  State<NavbarComponent> createState() => _NavbarComponentState();
}

class _NavbarComponentState extends State<NavbarComponent> {

  @override
  Widget build(BuildContext context) {
    
    return Column(
        children: [
          Text(widget.title)
        ]
    );
  }
}