import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utp_in_me/pages/mini_app/digital_id/lmg_pass.dart';
import 'package:utp_in_me/pages/mini_app/digital_id/student_id.dart';

class DigitalId extends StatelessWidget {
  DigitalId({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            elevation: 3,
            title: const Text('Digital ID'),
            bottom: const TabBar(
              tabs: [
                Tab(
                  text: "Student ID",
                ),
                Tab(
                  text: "LMG Pass",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              StudentId(),
              LmgPass(),
            ],
          ),
        ));
  }
}
