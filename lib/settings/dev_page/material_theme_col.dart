import 'package:flutter/material.dart';

enum ExerciseFilter { chip1, chip2, chip3, chip4 }

class MaterialThemeColor extends StatefulWidget {
  const MaterialThemeColor({super.key});

  @override
  State<MaterialThemeColor> createState() => _MaterialThemeColorState();
}

class _MaterialThemeColorState extends State<MaterialThemeColor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      Column(
          //crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Primary'),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primary,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "primary",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.primaryContainer,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.primaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "primaryContainer",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "onPrimary",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "onPrimaryContainer",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            const Text(''),
            const Text(" "),
            const Text(" "),
            const Text('Secondary'),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondary,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "secondary",
                        style: TextStyle(
                          fontSize: 20,
                          color:
                              Theme.of(context).colorScheme.secondaryContainer,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.secondaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "secondaryContainer",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.secondary,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondary,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "onSecondary",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context)
                              .colorScheme
                              .onSecondaryContainer,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onSecondaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "onSecondaryContainer",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.onSecondary,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            const Text(''),
            const Text(" "),
            const Text(" "),
            const Text('Tertiary'),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiary,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "tertiary",
                        style: TextStyle(
                          fontSize: 20,
                          color:
                              Theme.of(context).colorScheme.tertiaryContainer,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.tertiaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "tertiaryContainer",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.tertiary,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 5,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onTertiary,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "onTertiary",
                        style: TextStyle(
                          fontSize: 20,
                          color:
                              Theme.of(context).colorScheme.onTertiaryContainer,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            Padding(
                padding: const EdgeInsets.only(
                  top: 5,
                  left: 15,
                  right: 15,
                  bottom: 20,
                ),
                child: Container(
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onTertiaryContainer,
                    borderRadius: const BorderRadius.all(Radius.circular(100)),
                  ),
                  width: 400,
                  //height: 150,
                  child:
                      //alignment: Alignment.center,
                      Column(
                    children: [
                      const Text(" "),
                      Text(
                        "onTertiaryContainer",
                        style: TextStyle(
                          fontSize: 20,
                          color: Theme.of(context).colorScheme.onTertiary,
                        ),
                      ),
                      const Text(" "),
                    ],
                  ),
                )),
            const Text(" "),
            const Text(" "),
            const Text("Powered by Google MD3 - m3.material.io"),
            const Text(" "),
            const Text("Universiti Teknologi PETRONAS©️"),
            const Text("Developers Preview"),
            const Text("Version : 23.2.90271620"),
            const Text(" "),
            const Text(" "),
          ])
    ]));
  }
}
