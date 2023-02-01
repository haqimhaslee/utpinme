import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  bool theme = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //leading: BackButton(color: Color.fromARGB(255, 73, 73, 73)),
        title: const Text(
          'Profile',
          //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
        ),
        //elevation: 0,
        //centerTitle: true,
        //backgroundColor: Color.fromARGB(255, 224, 234, 255),
      ),
      body: ListView(children: [
        Column(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
              Column(children: [
                Padding(
                    padding: const EdgeInsets.only(
                      top: 30,
                      left: 15,
                      right: 15,
                      bottom: 30,
                    ),
                    child: Container(
                      decoration: const BoxDecoration(
                        color: Color.fromARGB(255, 138, 171, 223),
                        borderRadius: BorderRadius.all(Radius.circular(30)),
                      ),
                      width: 400,
                      //height: 180,
                      child: Align(
                          alignment: Alignment.center,
                          child: Column(
                            children: [
                              const Text(" "),
                              const Text(" "),
                              const Text(
                                "<profile_pic>",
                                style: TextStyle(
                                  fontSize: 20,
                                  color: Color.fromARGB(255, 255, 255, 255),
                                ),
                              ),
                              const Text(" "),
                              Container(
                                decoration: const BoxDecoration(
                                  color: Color.fromARGB(255, 255, 255, 255),
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(100)),
                                ),
                                width: 100,
                                height: 100,
                                child: Column(children: const [
                                  Text(" "),
                                  Text(" "),
                                ]),
                              ),
                              const Text(" "),
                              const Text(
                                "<student_email_azure>",
                                textAlign: TextAlign.center,
                              ),
                              const Text(" "),
                              const Text(" "),
                            ],
                          )),
                    )),
              ]),
              Column(
                children: const [
                  Text(" "),
                  Text(" "),
                  Text("Universiti Teknologi PETRONAS©️"),
                  Text("Version : 23.2.02380617"),
                ],
              ),
            ])
          ],
        ),
      ]),
    );
  }
}
