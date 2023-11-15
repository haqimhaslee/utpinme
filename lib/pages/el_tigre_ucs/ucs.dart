import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utp_in_me/pages/el_tigre_ucs/knowledge_hub.dart';
import 'package:utp_in_me/pages/el_tigre_ucs/my_support.dart';

class Ucs extends StatelessWidget {
  Ucs({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            toolbarHeight: 70,
            centerTitle: true,
            elevation: 3,
            title: const Text('Unified Customer Services'),
            bottom: const TabBar(
              isScrollable: true,
              tabs: [
                Tab(
                  text: "My Case",
                ),
                Tab(
                  text: "Knowledge Hub",
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              MySupport(),
              KnowledgeHub(),
            ],
          ),
        ));
  }
}
