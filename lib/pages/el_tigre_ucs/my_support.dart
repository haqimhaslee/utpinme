import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class MySupport extends StatelessWidget {
  MySupport({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(children: [Text("No case with${user.email!}")]),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.primary,
        //shape: CircleBorder(),
        foregroundColor: Theme.of(context).colorScheme.onPrimary,
        onPressed: () {},
        child: const Icon(Icons.add_rounded),
      ),
    );
  }
}
