import 'package:flutter/material.dart';

class ChatInputBox extends StatelessWidget {
  final TextEditingController? controller;
  final VoidCallback? onSend, onClickCamera;

  const ChatInputBox({
    super.key,
    this.controller,
    this.onSend,
    this.onClickCamera,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //color: Color.fromRGBO(242, 242, 242, 0.988)
      margin: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Divider(),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                  width: MediaQuery.of(context).size.width - 80,
                  child: Padding(
                    padding: const EdgeInsets.all(5),
                    child: TextField(
                      controller: controller,
                      minLines: 1,
                      maxLines: 6,
                      cursorColor: Theme.of(context).colorScheme.inversePrimary,
                      textInputAction: TextInputAction.newline,
                      keyboardType: TextInputType.multiline,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20.0),
                        ),
                        labelText: 'Enter your prompt',
                      ),
                      onTapOutside: (event) =>
                          FocusManager.instance.primaryFocus?.unfocus(),
                    ),
                  )),
              Padding(
                padding: const EdgeInsets.all(5),
                child: FloatingActionButton(
                  shape: const CircleBorder(),
                  elevation: 0,
                  onPressed: onSend,
                  child: const Icon(Icons.send_rounded),
                ),
              )
            ],
          ),
          const Text(
              "*UAssist may display inaccurate info, including about people, so double-check its responses",
              textAlign: TextAlign.center,
              style: TextStyle(
                //fontWeight: FontWeight.w600,
                fontSize: 11,
              ))
        ],
      ),
    );
  }
}
