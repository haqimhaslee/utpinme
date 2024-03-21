import 'package:flutter/material.dart';
import 'package:flutter_markdown/flutter_markdown.dart';
import 'package:google_generative_ai/google_generative_ai.dart';
import 'package:loading_animation_widget/loading_animation_widget.dart';

//import 'package:url_launcher/link.dart';

class ChatWidgetV3 extends StatefulWidget {
  const ChatWidgetV3({super.key});
  @override
  State<ChatWidgetV3> createState() => _ChatWidgetV3State();
}

class _ChatWidgetV3State extends State<ChatWidgetV3> {
  late final GenerativeModel _model;
  late final ChatSession _chat;
  final ScrollController _scrollController = ScrollController();
  final TextEditingController _textController = TextEditingController();
  final FocusNode _textFieldFocus = FocusNode(debugLabel: 'TextField');
  bool _loading = false;

  @override
  void initState() {
    super.initState();
    _model = GenerativeModel(
      model: 'gemini-pro',
      apiKey: 'AIzaSyCRKcnEzJwJJYalb1B4bAdVQqOsB_5W3lw',
    );
    _chat = _model.startChat();
  }

  void _scrollDown() {
    WidgetsBinding.instance.addPostFrameCallback(
      (_) => _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(
          milliseconds: 750,
        ),
        curve: Curves.easeOutCirc,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          elevation: 5,
          scrolledUnderElevation: 5,
          bottomOpacity: 1,
          title: Row(children: [
            const Text('UAssist'),
            Padding(
                padding: const EdgeInsets.only(
                  top: 0,
                  bottom: 0,
                  left: 10,
                  right: 0,
                ),
                child: Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Theme.of(context).colorScheme.primary,
                        width: 1.5,
                      ),
                      borderRadius: const BorderRadius.all(Radius.circular(6)),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 1,
                        left: 5,
                        right: 5,
                        bottom: 1,
                      ),
                      child: Text(
                        "v3_PREV - Gemini 1.0 Pro",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w900,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                    )))
          ])),
      body: Padding(
        padding: const EdgeInsets.only(top: 5, left: 5, right: 5),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: ListView.builder(
                controller: _scrollController,
                itemBuilder: (context, idx) {
                  var content = _chat.history.toList()[idx];
                  var text = content.parts
                      .whereType<TextPart>()
                      .map<String>((e) => e.text)
                      .join('');
                  return MessageWidget(
                    text: text,
                    isFromUser: content.role == 'user',
                  );
                },
                itemCount: _chat.history.length,
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 20,
                horizontal: 5,
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Expanded(
                        child: TextField(
                          autofocus: true,
                          focusNode: _textFieldFocus,
                          decoration:
                              textFieldDecoration(context, 'Enter a prompt...'),
                          controller: _textController,
                          onSubmitted: (String value) {
                            _sendChatMessage(value);
                          },
                        ),
                      ),
                      const SizedBox.square(
                        dimension: 5,
                      ),
                      if (!_loading)
                        IconButton(
                          onPressed: () async {
                            _sendChatMessage(_textController.text);
                          },
                          icon: Icon(
                            Icons.send,
                            color: Theme.of(context).colorScheme.primary,
                          ),
                        )
                      else
                        LoadingAnimationWidget.inkDrop(
                          color: Theme.of(context).colorScheme.primary,
                          size: 25,
                        ),
                    ],
                  ),
                  const Text(
                      "*UAssist may display inaccurate info, including about people, so double-check its responses",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 11,
                      ))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _sendChatMessage(String message) async {
    setState(() {
      _loading = true;
    });

    try {
      var response = await _chat.sendMessage(
        Content.text(message),
      );
      var text = response.text;

      if (text == null) {
        _showError('Empty response.');
        return;
      } else {
        setState(() {
          _loading = false;
          _scrollDown();
        });
      }
    } catch (e) {
      _showError(e.toString());
      setState(() {
        _loading = false;
      });
    } finally {
      _textController.clear();
      setState(() {
        _loading = false;
      });
      _textFieldFocus.requestFocus();
    }
  }

  void _showError(String message) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text('Something went wrong'),
          content: SingleChildScrollView(
            child: Text(message),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            )
          ],
        );
      },
    );
  }
}

class MessageWidget extends StatelessWidget {
  final String text;
  final bool isFromUser;

  const MessageWidget({
    super.key,
    required this.text,
    required this.isFromUser,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isFromUser ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: [
        Flexible(
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
            decoration: BoxDecoration(
              color: isFromUser
                  ? Theme.of(context).colorScheme.primaryContainer
                  : Theme.of(context).colorScheme.surfaceVariant,
              borderRadius: BorderRadius.circular(18),
            ),
            padding: const EdgeInsets.symmetric(
              vertical: 15,
              horizontal: 20,
            ),
            margin: const EdgeInsets.only(bottom: 8),
            child: MarkdownBody(data: text),
          ),
        ),
      ],
    );
  }
}

InputDecoration textFieldDecoration(BuildContext context, String hintText) =>
    InputDecoration(
      contentPadding: const EdgeInsets.all(15),
      hintText: hintText,
      border: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: const BorderRadius.all(
          Radius.circular(14),
        ),
        borderSide: BorderSide(
          color: Theme.of(context).colorScheme.secondary,
        ),
      ),
    );
