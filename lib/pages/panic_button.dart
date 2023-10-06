import 'package:flutter/material.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:awesome_ripple_animation/awesome_ripple_animation.dart';

class PanicButton extends StatelessWidget {
  const PanicButton({super.key});

  @override
  Widget build(BuildContext context) {
    void srcutpWeb() async {
      try {
        launch(
          'https://srcutp.org',
          customTabsOption: CustomTabsOption(
            toolbarColor: Theme.of(context).colorScheme.background,
            showPageTitle: true,
            //enableDefaultShare: false
          ),
          safariVCOption: const SafariViewControllerOption(
            preferredBarTintColor: Colors.blue,
            preferredControlTintColor: Colors.white,
            barCollapsingEnabled: true,
            entersReaderIfAvailable: true,
            dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
          ),
        );
      } catch (e) {
        debugPrint(e.toString());
      }
    }

    void ucsWeb() async {
      try {
        launch(
          'https://ucs.utp.edu.my/',
          customTabsOption: CustomTabsOption(
            toolbarColor: Theme.of(context).colorScheme.background,
            showPageTitle: true,
            //enableDefaultShare: false
          ),
          safariVCOption: const SafariViewControllerOption(
            preferredBarTintColor: Colors.blue,
            preferredControlTintColor: Colors.white,
            barCollapsingEnabled: true,
            entersReaderIfAvailable: true,
            dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
          ),
        );
      } catch (e) {
        debugPrint(e.toString());
      }
    }

    return Scaffold(
      appBar: AppBar(
        elevation: 3,
        scrolledUnderElevation: 3,
        centerTitle: true,
        title: const Text(
          'Emergency',
        ),
      ),
      body: ListView(
        children: [
          Container(
              color: const Color.fromARGB(0, 255, 255, 255),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 20,
                          left: 15,
                          right: 15,
                          bottom: 50,
                        ),
                        child: Container(
                            decoration: BoxDecoration(
                              color: Theme.of(context)
                                  .colorScheme
                                  .tertiaryContainer,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(10)),
                            ),
                            width: MediaQuery.of(context).size.width - 30,
                            //height: 150,
                            child: Align(
                              alignment: Alignment.center,
                              child: Column(children: [
                                Row(
                                  children: [
                                    const Padding(
                                      padding: EdgeInsets.only(
                                        top: 0,
                                        left: 15,
                                        right: 15,
                                        bottom: 0,
                                      ),
                                      child: Icon(
                                        Icons.warning_rounded,
                                      ),
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                100,
                                        child: Column(
                                          children: [
                                            const Text(
                                              "",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 5,
                                              ),
                                            ),
                                            Text(
                                              "This Emergency Call is specifically used to report emergency case only such as:-",
                                              textAlign: TextAlign.left,
                                              softWrap: true,
                                              style: TextStyle(
                                                fontSize: 13,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onTertiaryContainer,
                                              ),
                                            ),
                                            Text(
                                              "Fire • Gas leak • Chemical Spill • Threat • Security • Threat-Incident • Power Failure • Trap • Wild Animal",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 13,
                                                fontWeight: FontWeight.w600,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .onTertiaryContainer,
                                              ),
                                            ),
                                            const Text(
                                              "",
                                              textAlign: TextAlign.center,
                                              style: TextStyle(
                                                fontSize: 5,
                                              ),
                                            ),
                                          ],
                                        ))
                                  ],
                                )
                              ]),
                            )),
                      )
                    ]),
                    Column(children: [
                      RippleAnimation(
                        repeat: true,
                        color: Theme.of(context).colorScheme.error,
                        minRadius: 53,
                        ripplesCount: 5,
                        size: const Size(150, 150),
                        child: SizedBox.fromSize(
                          size: const Size(135, 135),
                          child: ClipOval(
                            child: Material(
                              color: Theme.of(context).colorScheme.error,
                              child: InkWell(
                                splashColor: Theme.of(context)
                                    .colorScheme
                                    .errorContainer,
                                onTap: () {},
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Icon(
                                      Icons.emergency,
                                      size: 40,
                                      color:
                                          Theme.of(context).colorScheme.onError,
                                    ),
                                    Text(
                                      "Emergency",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onError,
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
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 50,
                            left: 15,
                            right: 15,
                            bottom: 25,
                          ),
                          child: Container(
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .colorScheme
                                    .tertiaryContainer,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                              ),
                              width: MediaQuery.of(context).size.width - 30,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: Column(children: [
                                  Row(
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(
                                          top: 0,
                                          left: 15,
                                          right: 15,
                                          bottom: 0,
                                        ),
                                        child: Icon(
                                          Icons.emoji_objects_rounded,
                                        ),
                                      ),
                                      SizedBox(
                                          width: MediaQuery.of(context)
                                                  .size
                                                  .width -
                                              100,
                                          child: Column(
                                            children: [
                                              const Text(
                                                "",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 5,
                                                ),
                                              ),
                                              Text(
                                                "For non-emergency cases, please log a report in Unified Customer Services (UCS) portal",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .onTertiaryContainer,
                                                ),
                                              ),
                                              const Text(
                                                "",
                                                textAlign: TextAlign.center,
                                                style: TextStyle(
                                                  fontSize: 5,
                                                ),
                                              ),
                                            ],
                                          ))
                                    ],
                                  )
                                ]),
                              )),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ElevatedButton(
                              onPressed: ucsWeb,
                              child: const Text('UCS'),
                            ),
                            const Text("    "),
                            ElevatedButton(
                              onPressed: srcutpWeb,
                              child: const Text('SRCUTP'),
                            ),
                          ],
                        ),
                        const Text(" "),
                        const Divider(),
                        const Text(" "),
                        const Text(
                          "Hotline",
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 15,
                            right: 15,
                          ),
                          child: Card(
                            //elevation: 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Material(
                                color: const Color.fromARGB(0, 255, 193, 7),
                                child: InkWell(
                                  onTap: () {},
                                  child: const Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 10,
                                              bottom: 20,
                                            ),
                                            child: Icon(Icons.phone_rounded),
                                          ),
                                          Text("RV"),
                                          Flexible(
                                              fit: FlexFit.tight,
                                              child: SizedBox()),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: Card(
                            //elevation: 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Material(
                                color: const Color.fromARGB(0, 255, 193, 7),
                                child: InkWell(
                                  onTap: () {},
                                  child: const Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 10,
                                              bottom: 20,
                                            ),
                                            child: Icon(Icons.phone_rounded),
                                          ),
                                          Text("Security 1"),
                                          Flexible(
                                              fit: FlexFit.tight,
                                              child: SizedBox()),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 15,
                            right: 15,
                          ),
                          child: Card(
                            //elevation: 3,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: Material(
                                color: const Color.fromARGB(0, 255, 193, 7),
                                child: InkWell(
                                  onTap: () {},
                                  child: const Column(
                                    children: <Widget>[
                                      Row(
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.only(
                                              top: 20,
                                              left: 20,
                                              right: 10,
                                              bottom: 20,
                                            ),
                                            child: Icon(Icons.phone_rounded),
                                          ),
                                          Text("Security 2"),
                                          Flexible(
                                              fit: FlexFit.tight,
                                              child: SizedBox()),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]))
        ],
      ),
    );
  }
}
