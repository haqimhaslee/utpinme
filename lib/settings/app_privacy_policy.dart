import 'package:flutter/material.dart';

class PrivacyPolicy extends StatefulWidget {
  const PrivacyPolicy({super.key});

  @override
  State<PrivacyPolicy> createState() => _PrivacyPolicyState();
}

class _PrivacyPolicyState extends State<PrivacyPolicy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Licenses',
            //style: TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
          ),
          //backgroundColor: Color.fromARGB(255, 224, 234, 255),
        ),
        body: ListView(children: [
          Column(
            children: [
              Container(
                  color: const Color.fromARGB(0, 255, 255, 255),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Column(children: [
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 30,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        const Text(" "),
                                        Text(
                                          "GNU GENERAL PUBLIC LICENSE",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Text(
                                          " Version 2, June 1991",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "Made by SRCUTP 22/23",
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        const Text(" "),
                                      ],
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Text(
                              "Copyright (C) 1989, 1991 Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA Everyone is permitted to copy and distribute verbatim copies of this license document, but changing it is not allowed.",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Text(
                              "The licenses for most software are designed to take away your freedom to share and change it. By contrast, the GNU General Public License is intended to guarantee your freedom to share and change free software--to make sure the software is free for all its users. This General Public License applies to most of the Free Software Foundation's software and to any other program whose authors commit to using it. (Some other Free Software Foundation software is covered by the GNU Lesser General Public License instead.) You can apply it to your programs, too.",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Text(
                              "When we speak of free software, we are referring to freedom, not price. Our General Public Licenses are designed to make sure that you have the freedom to distribute copies of free software (and charge for this service if you wish), that you receive source code or can get it if you want it, that you can change the software or use pieces of it in new free programs; and that you know you can do these things.",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Text(
                              "To protect your rights, we need to make restrictions that forbid anyone to deny you these rights or to ask you to surrender the rights. These restrictions translate to certain responsibilities for you if you distribute copies of the software, or if you modify it.",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Column(
                                      children: [
                                        const Text(" "),
                                        Text(
                                          "GNU GENERAL PUBLIC LICENSE",
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        const Text(" "),
                                      ],
                                    )),
                              )),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Text(
                              "TERMS AND CONDITIONS FOR COPYING, DISTRIBUTION AND MODIFICATION",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Text(
                              "0. This License applies to any program or other work which contains a notice placed by the copyright holder saying it may be distributed under the terms of this General Public License.  The 'Program', below, refers to any such program or work, and a 'work based on the Program' means either the Program or any derivative work under copyright law: that is to say, a work containing the Program or a portion of it, either verbatim or with modifications and/or translated into another language.  (Hereinafter, translation is included without limitation in the term 'modification'.)  Each licensee is addressed as 'you'.",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                              top: 15,
                              left: 15,
                              right: 15,
                              bottom: 15,
                            ),
                            child: Text(
                              "Activities other than copying, distribution and modification are not covered by this License; they are outside its scope.  The act of running the Program is not restricted, and the output from the Program is covered only if its contents constitute a work based on the Program (independent of having been made by running the Program). Whether that is true depends on what the Program does.",
                              style: TextStyle(
                                color: Theme.of(context)
                                    .colorScheme
                                    .onSecondaryContainer,
                              ),
                            ),
                          ),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                          right: 20,
                                          bottom: 20,
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                              child: Column(
                                            children: [
                                              Text(
                                                "a) You must cause the modified files to carry prominent notices stating that you changed the files and the date of any change.",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              const Text(''),
                                              Text(
                                                "b) You must cause any work that you distribute or publish, that in whole or in part contains or is derived from the Program or any part thereof, to be licensed as a whole at no charge to all third parties under the terms of this License.",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              const Text(''),
                                              Text(
                                                "c) If the modified program normally reads commands interactively when run, you must cause it, when started running for such interactive use in the most ordinary way, to print or display an announcement including an appropriate copyright notice and a notice that there is no warranty (or else, saying that you provide a warranty) and that users may redistribute the program under these conditions, and telling the user how to view a copy of this License. (Exception: if the Program itself is interactive but does not normally print such an announcement, your work based on the Program is not required to print an announcement.)",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                            ],
                                          )),
                                        )),
                                  ],
                                )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                          right: 20,
                                          bottom: 20,
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                              child: Column(
                                            children: [
                                              Text(
                                                "a) Accompany it with the complete corresponding machine-readable source code, which must be distributed under the terms of Sections 1 and 2 above on a medium customarily used for software interchange; or,",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              const Text(''),
                                              Text(
                                                "b) Accompany it with a written offer, valid for at least three years, to give any third party, for a charge no more than your cost of physically performing source distribution, a complete machine-readable copy of the corresponding source code, to be distributed under the terms of Sections 1 and 2 above on a medium customarily used for software interchange; or,",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              const Text(''),
                                              Text(
                                                "c) Accompany it with the information you received as to the offer to distribute corresponding source code.  (This alternative is allowed only for noncommercial distribution and only if you received the program in object code or executable form with such an offer, in accord with Subsection b above.)",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                            ],
                                          )),
                                        )),
                                  ],
                                )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                          right: 20,
                                          bottom: 20,
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                              child: Column(
                                            children: [
                                              Text(
                                                "NO WARRANTY",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                            ],
                                          )),
                                        )),
                                  ],
                                )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                          right: 20,
                                          bottom: 20,
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                              child: Column(
                                            children: [
                                              Text(
                                                " END OF TERMS AND CONDITIONS",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              Text(
                                                "How to Apply These Terms to Your New Programs",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                            ],
                                          )),
                                        )),
                                  ],
                                )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                          right: 20,
                                          bottom: 20,
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                              child: Column(
                                            children: [
                                              Text(
                                                "<one line to give the program's name and a brief idea of what it does.>",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              Text(
                                                "Copyright (C) <year>  <name of author>",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              const Text(''),
                                              Text(
                                                "This program is free software; you can redistribute it and/or modify it under the terms of the GNU General Public License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later version.",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              const Text(''),
                                              Text(
                                                "This program is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for more details.",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              const Text(''),
                                              Text(
                                                "You should have received a copy of the GNU General Public License along with this program; if not, write to the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                            ],
                                          )),
                                        )),
                                  ],
                                )),
                              )),
                          Padding(
                              padding: const EdgeInsets.only(
                                top: 15,
                                left: 15,
                                right: 15,
                                bottom: 15,
                              ),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Theme.of(context)
                                      .colorScheme
                                      .secondaryContainer,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(15)),
                                ),
                                child: Align(
                                    child: Column(
                                  children: [
                                    Padding(
                                        padding: const EdgeInsets.only(
                                          top: 20,
                                          left: 20,
                                          right: 20,
                                          bottom: 20,
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(),
                                          child: Align(
                                              child: Column(
                                            children: [
                                              Text(
                                                "Gnomovision version 69, Copyright (C) year name of author",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              Text(
                                                "Gnomovision comes with ABSOLUTELY NO WARRANTY; for details type `show w'.",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                              const Text(''),
                                              Text(
                                                "This is free software, and you are welcome to redistribute it under certain conditions; type `show c' for details.",
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onSecondaryContainer,
                                                ),
                                              ),
                                            ],
                                          )),
                                        )),
                                  ],
                                )),
                              )),
                        ]),
                        Column(
                          children: const [
                            Text(" "),
                            Text(" "),
                          ],
                        ),
                      ]))
            ],
          ),
        ]));
  }
}
