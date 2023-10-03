import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utp_in_me/pages/digital_id/lmg_pass.dart';
import 'package:utp_in_me/pages/digital_id/student_id.dart';

class DigitalId extends StatelessWidget {
  DigitalId({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            //toolbarHeight: 70,
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
