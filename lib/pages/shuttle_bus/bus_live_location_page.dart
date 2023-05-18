import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/shuttle_bus/map_live_location_services.dart';

class BusLiveLocation extends StatelessWidget {
  const BusLiveLocation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const LiveBusPage(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Scaffold.of(context).showBottomSheet<void>(
            (BuildContext context) {
              return SizedBox(
                height: 300,
                //color: Colors.amber,
                child: Center(
                  child: Column(
                    //mainAxisAlignment: MainAxisAlignment.center,
                    //mainAxisSize: MainAxisSize.min,
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
                                size: const Size(55, 55),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Material(
                                    color: Theme.of(context)
                                        .colorScheme
                                        .onPrimaryContainer,
                                    child: InkWell(
                                      splashColor:
                                          Theme.of(context).colorScheme.primary,
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.directions_bus_filled_rounded,
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
                                      Row(
                                        children: [
                                          Text(
                                            "Internal",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                          ),
                                          Text(
                                            "  ",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .secondary,
                                            ),
                                          ),
                                          Text(
                                            "[ NOT AVAILABLE ]",
                                            textAlign: TextAlign.left,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .primary,
                                            ),
                                          ),
                                        ],
                                      )
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
                                size: const Size(55, 55),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Material(
                                    color:
                                        Theme.of(context).colorScheme.secondary,
                                    child: InkWell(
                                      splashColor:
                                          Theme.of(context).colorScheme.primary,
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.directions_bus_filled_rounded,
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
                                          Row(
                                            children: [
                                              Text(
                                                "External",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                ),
                                              ),
                                              Text(
                                                "  ",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .secondary,
                                                ),
                                              ),
                                              Text(
                                                "[ NOT AVAILABLE ]",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  fontSize: 15,
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .primary,
                                                ),
                                              ),
                                            ],
                                          )
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
                                size: const Size(55, 55),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(50),
                                  child: Material(
                                    color:
                                        Theme.of(context).colorScheme.tertiary,
                                    child: InkWell(
                                      splashColor:
                                          Theme.of(context).colorScheme.primary,
                                      onTap: () {},
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: <Widget>[
                                          Icon(
                                            Icons.directions_bus_filled_rounded,
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
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            Text(
                                              "Weekend",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                              ),
                                            ),
                                            Text(
                                              "  ",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                              ),
                                            ),
                                            Text(
                                              "[ NOT AVAILABLE ]",
                                              textAlign: TextAlign.left,
                                              style: TextStyle(
                                                fontSize: 15,
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .primary,
                                              ),
                                            ),
                                          ],
                                        )
                                      ]))
                                ],
                              )
                            ],
                          )),
                      //const Text('BottomSheet'),
                      OutlinedButton.icon(
                        icon: const Icon(
                          Icons.close_rounded,
                        ),
                        label: const Text(
                            '                  Close panel                   '),
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
        child: const Icon(Icons.directions_bus_filled_rounded),
      ),
    );
  }
}
