import 'package:flutter/material.dart';
//import 'package:qr_flutter/qr_flutter.dart';

class Facility extends StatelessWidget {
  const Facility({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          toolbarHeight: 70,
          title: const Text('Facility'),
          centerTitle: true,
          elevation: 3,
        ),
        body: Column(children: [
          Expanded(
              child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 10,
                  right: 10,
                  bottom: 2.5,
                ),
                child: Card(
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: Theme.of(context).colorScheme.outline,
                    ),
                    borderRadius: const BorderRadius.all(Radius.circular(12)),
                  ),
                  child: SizedBox(
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        topRight: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                      child: Material(
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                              padding: const EdgeInsets.only(
                                top: 0,
                                bottom: 0,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    right: 0, left: 0, top: 0, bottom: 0),
                                child: SizedBox(
                                  width: MediaQuery.of(context).size.width - 60,
                                  child: Padding(
                                      padding: const EdgeInsets.only(
                                        top: 0,
                                        left: 0,
                                        right: 0,
                                        bottom: 0,
                                      ),
                                      child: Container(
                                        decoration: const BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(0)),
                                        ),
                                        child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              ClipRRect(
                                                borderRadius:
                                                    const BorderRadius.only(
                                                  bottomRight:
                                                      Radius.circular(12),
                                                  bottomLeft:
                                                      Radius.circular(12),
                                                ),
                                                child: Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                    image: DecorationImage(
                                                        image: AssetImage(
                                                            "assets/ch.jpg"),
                                                        fit: BoxFit.cover),
                                                  ),
                                                  child: SizedBox.fromSize(
                                                    size: const Size(400, 140),
                                                    child: const ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.only(
                                                        bottomRight:
                                                            Radius.circular(0),
                                                        bottomLeft:
                                                            Radius.circular(0),
                                                      ),
                                                      child: Material(
                                                        color: Color.fromARGB(
                                                            117, 67, 97, 141),
                                                        child: Column(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .center,
                                                          children: <Widget>[
                                                            Padding(
                                                              padding:
                                                                  EdgeInsets
                                                                      .only(
                                                                top: 0,
                                                                left: 0,
                                                                right: 0,
                                                                bottom: 00,
                                                              ),
                                                              child: Column(
                                                                  children: []),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                              const Padding(
                                                  padding: EdgeInsets.only(
                                                    top: 10,
                                                    left: 10,
                                                    right: 0,
                                                    bottom: 10,
                                                  ),
                                                  child: Text("Test"))
                                            ]),
                                      )),
                                ),
                              )),
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              //1237518273658
            ],
          ))
        ]));
  }
}
