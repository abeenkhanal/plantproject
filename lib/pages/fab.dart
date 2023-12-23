import 'package:flutter/material.dart';

class Fab extends StatefulWidget {
  const Fab({super.key});

  @override
  State<Fab> createState() => _FabState();
}

class _FabState extends State<Fab> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center( 
        child: Text("Favourate"),
      ),
    );
  }
}