import 'package:flutter/material.dart';

class MyStats extends StatelessWidget {
  const MyStats({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: const Color.fromARGB(0, 255, 255, 255),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        left: 15,
                        right: 15,
                        bottom: 5,
                      ),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const SizedBox(
                          width: 500,
                          height: 200,
                          child: Center(child: Text('Your Stats 1')),
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15,
                        right: 15,
                        bottom: 5,
                      ),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const SizedBox(
                          width: 500,
                          height: 200,
                          child: Center(child: Text('Your Stats 1')),
                        ),
                      )),
                  Padding(
                      padding: const EdgeInsets.only(
                        top: 5,
                        left: 15,
                        right: 15,
                        bottom: 5,
                      ),
                      child: Card(
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                          borderRadius:
                              const BorderRadius.all(Radius.circular(20)),
                        ),
                        child: const SizedBox(
                          width: 500,
                          height: 200,
                          child: Center(child: Text('Your Stats 1')),
                        ),
                      )),
                ]),
          )
        ],
      ),
    );
  }
}
