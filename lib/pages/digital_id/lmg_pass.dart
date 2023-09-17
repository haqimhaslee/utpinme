import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LmgPass extends StatelessWidget {
  LmgPass({super.key});

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(children: [
        Padding(
            padding: const EdgeInsets.only(
              top: 30,
              bottom: 20,
              left: 20,
              right: 20,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.primaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromARGB(0, 0, 0, 0),
                    offset: Offset(
                      5.0,
                      5.0,
                    ),
                    blurRadius: 20.0,
                    spreadRadius: 2.0,
                  ), //BoxShadow
                ],
              ),
              width: 350,
              //height: 500,
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 15,
                          left: 0,
                          right: 0,
                          bottom: 15,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Universiti Teknologi PETRONAS",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox.fromSize(
                        size: const Size(300, 1),
                        child: const ClipRRect(
                          child: Material(
                            color: Color.fromARGB(75, 255, 255, 255),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(
                          top: 10,
                          left: 00,
                          right: 00,
                          bottom: 10,
                        ),
                        child: Column(
                          children: [
                            CircleAvatar(
                              radius: 50,
                              backgroundImage:
                                  AssetImage("assets/profile_pic.png"),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 0,
                          left: 0,
                          right: 0,
                          bottom: 5,
                        ),
                        child: Column(
                          children: [
                            Text(
                              "Name",
                              style: Theme.of(context).textTheme.bodySmall,
                            ),
                            Text(
                              "<name>",
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ],
                        ),
                      ),
                      SizedBox.fromSize(
                        size: const Size(300, 0.5),
                        child: const ClipRRect(
                          child: Material(
                            color: Color.fromARGB(97, 255, 255, 255),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                            ),
                          ),
                        ),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 8,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "Course",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    "<course>",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                top: 5,
                                bottom: 8,
                              ),
                              child: Column(
                                children: [
                                  Text(
                                    "ID",
                                    style:
                                        Theme.of(context).textTheme.bodySmall,
                                  ),
                                  Text(
                                    "<ID>",
                                    style:
                                        Theme.of(context).textTheme.bodyLarge,
                                  ),
                                ],
                              ),
                            ),
                          ]),
                      Container(
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 255, 255, 255),
                          borderRadius: BorderRadius.all(Radius.circular(15)),
                        ),
                        child: Column(children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 1,
                              left: 1,
                              right: 1,
                              bottom: 1,
                            ),
                            child: QrImageView(
                              data: user.email!,
                              version: QrVersions.auto,
                              size: 100,
                              gapless: true,
                            ),
                          )
                        ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 10,
                          right: 10,
                          bottom: 5,
                        ),
                        child: Text(
                          user.email!,
                          textAlign: TextAlign.center,
                        ),
                      ),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 0,
                          ),
                          child: Container(
                            decoration: const BoxDecoration(
                              color: Color.fromARGB(0, 255, 89, 89),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(0)),
                            ),
                            child: Column(children: [
                              ClipRRect(
                                borderRadius: const BorderRadius.only(
                                  bottomRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30),
                                ),
                                child: Container(
                                  decoration: const BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage("assets/ch.jpg"),
                                        fit: BoxFit.cover),
                                  ),
                                  child: SizedBox.fromSize(
                                    size: const Size(400, 90),
                                    child: ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                        bottomRight: Radius.circular(30),
                                        bottomLeft: Radius.circular(30),
                                      ),
                                      child: Material(
                                        color: const Color.fromARGB(
                                            117, 67, 97, 141),
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 0,
                                                left: 0,
                                                right: 0,
                                                bottom: 00,
                                              ),
                                              child: Column(
                                                children: [
                                                  SizedBox.fromSize(
                                                    size: const Size(180, 70),
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          const BorderRadius
                                                              .all(
                                                              Radius.circular(
                                                                  50)),
                                                      child: Material(
                                                        color: const Color
                                                            .fromARGB(
                                                            255, 255, 255, 255),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Image.asset(
                                                              'assets/UTP-logo.png',
                                                              width: 140,
                                                              height: 55,
                                                              fit: BoxFit.cover,
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ]),
                          )),
                    ],
                  )),
            )),
        const Text("Universiti Teknologi PETRONAS©️"),
      ]),
    ));
  }
}
