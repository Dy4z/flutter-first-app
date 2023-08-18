import 'package:flutter/material.dart';

class Minuman extends StatefulWidget {
  const Minuman({super.key});

  @override
  State<Minuman> createState() => _MinumanState();
}

class _MinumanState extends State<Minuman> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('hola'),
        backgroundColor: Colors.blue,
        elevation: 3,
      ),
      body: const Text ('Minuman'),

    );
  }
}