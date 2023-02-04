import 'package:flutter/material.dart';

class BusLiveLocation extends StatelessWidget {
  const BusLiveLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        /*appBar: AppBar(
        title: const Text(_title),
        elevation: 1,
      ),*/
        body: Column(children: [
      Padding(
          padding: const EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 25,
          ),
          child: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.tertiaryContainer,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            width: 400,
            //height: 150,
            child: Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(" "),
                    Text(
                      "COOMING SOON !",
                      style: TextStyle(
                        fontSize: 25,
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    const Text(" "),
                    Text(
                      "We are currently running this feature in pilot test and will roll out to everyone soon",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    const Text(" "),
                    Text(
                      "Stay tuned!",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.tertiary,
                      ),
                    ),
                    const Text(" "),
                  ],
                )),
          )),
      const MyStatelessWidget(),
    ]));
  }
}

class MyStatelessWidget extends StatelessWidget {
  const MyStatelessWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: const Text('Show Legend'),
        onPressed: () {
          Scaffold.of(context).showBottomSheet<void>(
            (BuildContext context) {
              return SizedBox(
                height: 300,
                //color: Colors.amber,
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              SizedBox.fromSize(
                                size: const Size(60, 60),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Material(
                                    color:
                                        const Color.fromARGB(85, 207, 207, 207),
                                    child: InkWell(
                                      splashColor:
                                          const Color.fromARGB(111, 77, 77, 77),
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.directions_transit,
                                            size: 50,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 15,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Internal Bus",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                      Text(
                                        "Not Available",
                                        style: TextStyle(
                                          fontSize: 15,
                                          color: Theme.of(context)
                                              .colorScheme
                                              .secondary,
                                        ),
                                      ),
                                    ],
                                  ))
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            left: 20,
                            right: 20,
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              SizedBox.fromSize(
                                size: const Size(60, 60),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Material(
                                    color:
                                        const Color.fromARGB(85, 207, 207, 207),
                                    child: InkWell(
                                      splashColor:
                                          const Color.fromARGB(111, 77, 77, 77),
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons
                                                .directions_transit_filled_rounded,
                                            size: 50,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                        top: 0,
                                        left: 20,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "External Bus",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                          ),
                                          Text(
                                            "Not Available",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              )
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            left: 20,
                            right: 20,
                            bottom: 10,
                          ),
                          child: Row(
                            children: [
                              SizedBox.fromSize(
                                size: const Size(60, 60),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Material(
                                    color:
                                        const Color.fromARGB(85, 207, 207, 207),
                                    child: InkWell(
                                      splashColor:
                                          const Color.fromARGB(111, 77, 77, 77),
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons
                                                .directions_transit_filled_rounded,
                                            size: 50,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                children: [
                                  Padding(
                                      padding: const EdgeInsets.only(
                                        top: 0,
                                        left: 20,
                                      ),
                                      child: Column(
                                        children: [
                                          Text(
                                            "Weekend Bus",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                          ),
                                          Text(
                                            "Not Available",
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                          ),
                                        ],
                                      ))
                                ],
                              )
                            ],
                          )),
                      //const Text('BottomSheet'),

                      TextButton(
                        child: const Text('Close'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
