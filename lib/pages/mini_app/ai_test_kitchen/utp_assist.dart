// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class UtpAssist extends StatefulWidget {
  const UtpAssist({super.key});

  @override
  State<UtpAssist> createState() => _UtpAssistState();
}

class _UtpAssistState extends State<UtpAssist> {
  ChatUser stakeholder = ChatUser(id: '1', firstName: 'Stakeholder');
  ChatUser bot = ChatUser(
      id: '2',
      firstName: 'UAssist',
      profileImage: 'assets/utp-single-logo.png');
  List<ChatMessage> allMessages = [];
  List<ChatUser> typing = [];

  final apiurl =
      'https://generativelanguage.googleapis.com/v1beta/models/gemini-pro:generateContent?key=AIzaSyCVuAXlWbZuPj73dmddUPCRN-hPomjKmYU';
  final header = {'Content-Type': 'application/json'};
  getdata(ChatMessage m) async {
    typing.add(bot);
    allMessages.insert(0, m);
    setState(() {});

    var data = {
      "contents": [
        {
          "parts": [
            {"text": m.text}
          ]
        }
      ]
    };

    await http
        .post(Uri.parse(apiurl), headers: header, body: jsonEncode(data))
        .then((value) {
      if (value.statusCode == 200) {
        var result = jsonDecode(value.body);
        print(result['candidates'][0]['content']['parts'][0]['text']);
        ChatMessage m1 = ChatMessage(
            text: result['candidates'][0]['content']['parts'][0]['text'],
            user: bot,
            createdAt: DateTime.now());
        allMessages.insert(0, m1);
        setState(() {});
      } else {
        print('Error Occured');
      }
    }).catchError((e) {});
    typing.remove(bot);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('UAssist'),
          elevation: 3,
          actions: [
            IconButton(
              icon: const Icon(Icons.more_vert_rounded),
              onPressed: (() {}),
            ),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.only(
            //top: 20,
            // left: 20,
            //right: 0,
            bottom: 5,
          ),
          child: DashChat(
            typingUsers: typing,
            currentUser: stakeholder,
            onSend: (ChatMessage m) {
              getdata(m);
            },
            //messageOptions: MessageOptions(
            //containerColor: Colors.black,
            //textColor: Theme.of(context).colorScheme.primary,
            // ),
            messages: allMessages,
          ),
        ));
  }
}
