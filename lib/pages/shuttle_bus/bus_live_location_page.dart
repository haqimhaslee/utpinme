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
                      "COMING SOON !",
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
        child: const Text('               Show Legend               '),
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
                                        const Color.fromARGB(255, 99, 0, 165),
                                    child: InkWell(
                                      splashColor: const Color.fromARGB(
                                          255, 137, 1, 228),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.directions_transit,
                                            size: 40,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
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
                                    left: 20,
                                  ),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Internal Bus",
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                          fontSize: 20,
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
                                    color: const Color.fromARGB(255, 0, 85, 11),
                                    child: InkWell(
                                      splashColor:
                                          const Color.fromARGB(255, 0, 194, 26),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons
                                                .directions_transit_filled_rounded,
                                            size: 40,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
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
                                              fontSize: 20,
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
                                        const Color.fromARGB(255, 179, 182, 0),
                                    child: InkWell(
                                      splashColor:
                                          const Color.fromARGB(255, 83, 85, 0),
                                      onTap: () {
                                        Navigator.pop(context);
                                      },
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons
                                                .directions_transit_filled_rounded,
                                            size: 40,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .background,
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
                                              fontSize: 20,
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

                      OutlinedButton(
                        child: const Text(
                            '                    Close                     '),
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
