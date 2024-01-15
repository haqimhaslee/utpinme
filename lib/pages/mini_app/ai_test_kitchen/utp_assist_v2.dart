import 'package:utp_in_me/pages/mini_app/ai_test_kitchen/chat_input_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gemini/flutter_gemini.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

class SectionChat extends StatefulWidget {
  const SectionChat({super.key});

  @override
  State<SectionChat> createState() => _SectionChatState();
}

class _SectionChatState extends State<SectionChat> {
  final controller = TextEditingController();
  final gemini = Gemini.instance;
  bool _loading = false;

  bool get loading => _loading;

  set loading(bool set) => setState(() => _loading = set);
  final List<Content> chats = [];

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
        body: Column(
          children: [
            Expanded(
                child: chats.isNotEmpty
                    ? Align(
                        alignment: Alignment.bottomCenter,
                        child: SingleChildScrollView(
                          reverse: true,
                          child: ListView.builder(
                            itemBuilder: chatItem,
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: chats.length,
                            reverse: false,
                          ),
                        ),
                      )
                    : const Center(child: Text('Ask UAssist anything'))),
            if (loading)
              Row(
                children: [
                  Expanded(
                    child: Card(
                      elevation: 0,
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              //height: 15,
                              child: LoadingAnimationWidget.staggeredDotsWave(
                                color: Theme.of(context).colorScheme.tertiary,
                                size: 40,
                              ),
                            ),
                            const Text('Generating answer'),
                            const SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ChatInputBox(
              controller: controller,
              onSend: () {
                if (controller.text.isNotEmpty) {
                  final searchedText = controller.text;
                  chats.add(Content(
                      role: 'user', parts: [Parts(text: searchedText)]));
                  controller.clear();
                  loading = true;

                  gemini.chat(chats).then((value) {
                    chats.add(Content(
                        role: 'model', parts: [Parts(text: value?.output)]));
                    loading = false;
                  });
                }
              },
            ),
          ],
        ));
  }

  Widget chatItem(BuildContext context, int index) {
    final Content content = chats[index];

    return Card(
      elevation: 0,
      color: content.role == 'model'
          ? Theme.of(context).colorScheme.primaryContainer
          : Theme.of(context).colorScheme.tertiaryContainer,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 10, left: 2),
                  child: SizedBox(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 10,
                          backgroundImage: AssetImage(content.role == 'model'
                              ? "assets/utp-single-logo.png"
                              : "assets/profile_pic.png"),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                  content.role == 'model' ? 'UAssist' : 'User',
                ),
              ],
            ),
            Markdown(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                data: content.parts?.lastOrNull?.text ??
                    'Cannot generate data! Visit ucs.utp.edu.my to learn more'),
          ],
        ),
      ),
    );
  }
}
