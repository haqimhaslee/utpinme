import 'package:flutter/material.dart';

class Directory extends StatefulWidget {
  const Directory({super.key});
  @override
  State<Directory> createState() => _DirectoryState();
}

class _DirectoryState extends State<Directory> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 5,
          scrolledUnderElevation: 5,
          toolbarHeight: 70,
          title: const Text('Directory'),
        ),
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 10,
                left: 10,
                right: 10,
                bottom: 5,
              ),
              child: SizedBox(
                height: 70,
                child: Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width - 100,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          labelText: 'Enter keyword',
                        ),
                      ),
                    ),
                    const Flexible(fit: FlexFit.tight, child: SizedBox()),
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 10,
                          right: 10,
                          bottom: 5,
                        ),
                        child: SizedBox(
                            width: 60,
                            height: 60,
                            child: IconButton(
                                onPressed: () {},
                                icon: const Icon(Icons.search_rounded)))),
                  ],
                ),
              ),
            ),
            const Padding(
                padding: EdgeInsets.only(
                  left: 20,
                  right: 20,
                ),
                child: Divider()),
            Expanded(
                child: ListView(children: const [
              Padding(
                  padding: EdgeInsets.only(
                    top: 15,
                    left: 10,
                    right: 10,
                    bottom: 5,
                  ),
                  child: Column(children: []))
            ]))
          ],
        ));
  }
}
