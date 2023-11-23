import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class USummonSummon extends StatelessWidget {
  USummonSummon({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Row(children: [const Text('No summon with '), Text(user.email!)]),
    ));
  }
}
