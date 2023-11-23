import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';

class KnowledgeHub extends StatelessWidget {
  KnowledgeHub({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(children: [Text("No FAQs with${user.email!}")]),
      ),
    );
  }
}
