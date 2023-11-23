import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class USummonAppeal extends StatelessWidget {
  USummonAppeal({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(children: [const Text('No appeal with '), Text(user.email!)]),
    ));
  }
}
