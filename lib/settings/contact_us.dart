import 'package:flutter/material.dart';

class ContactUs extends StatefulWidget {
  const ContactUs({super.key});

  @override
  State<ContactUs> createState() => _ContactUsState();
}

class _ContactUsState extends State<ContactUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        const SliverAppBar.large(
          title: Text('Contact Us'),
        ),
        SliverToBoxAdapter(
          child: Column(
            children: [
              Padding(
                  padding: const EdgeInsets.only(
                    top: 15,
                    left: 15,
                    right: 15,
                    bottom: 15,
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Align(
                        //alignment: Alignment.center,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "HSE OFFICE UNIVERSITI TEKNOLOGI PETRONAS",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Text(
                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 20,
                              right: 20,
                              bottom: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.call_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.print_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mail_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
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
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Align(
                        //alignment: Alignment.center,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "HSE OFFICE UNIVERSITI TEKNOLOGI PETRONAS",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Text(
                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 20,
                              right: 20,
                              bottom: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.call_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.print_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mail_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
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
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Align(
                        //alignment: Alignment.center,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "HSE OFFICE UNIVERSITI TEKNOLOGI PETRONAS",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Text(
                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 20,
                              right: 20,
                              bottom: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.call_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.print_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mail_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
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
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Align(
                        //alignment: Alignment.center,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "HSE OFFICE UNIVERSITI TEKNOLOGI PETRONAS",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Text(
                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 20,
                              right: 20,
                              bottom: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.call_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.print_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mail_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
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
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Align(
                        //alignment: Alignment.center,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "HSE OFFICE UNIVERSITI TEKNOLOGI PETRONAS",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Text(
                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 20,
                              right: 20,
                              bottom: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.call_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.print_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mail_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
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
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Align(
                        //alignment: Alignment.center,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "HSE OFFICE UNIVERSITI TEKNOLOGI PETRONAS",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Text(
                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 20,
                              right: 20,
                              bottom: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.call_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.print_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mail_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
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
                      color: Theme.of(context).colorScheme.secondaryContainer,
                      borderRadius: const BorderRadius.all(Radius.circular(15)),
                    ),
                    child: Align(
                        //alignment: Alignment.center,
                        child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            top: 15,
                            left: 20,
                            right: 20,
                          ),
                          child: Text(
                            "HSE OFFICE UNIVERSITI TEKNOLOGI PETRONAS",
                            style: TextStyle(
                              fontSize: 20,
                              color: Theme.of(context)
                                  .colorScheme
                                  .onSecondaryContainer,
                            ),
                          ),
                        ),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 10,
                              left: 20,
                              right: 20,
                              bottom: 10,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Text(
                                    "Leading technologies including encryption software is used to safeguard any data given to us and strict security standards are maintained to prevent unauthorized access.",
                                    style: TextStyle(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ],
                              )),
                            )),
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 20,
                              right: 20,
                              bottom: 15,
                            ),
                            child: Container(
                              decoration: const BoxDecoration(),
                              child: Align(
                                  child: Column(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.call_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.print_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 5,
                                      right: 20,
                                    ),
                                    child: Row(
                                      children: [
                                        const Icon(Icons.mail_rounded),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                            top: 0,
                                            left: 10,
                                            right: 20,
                                          ),
                                          child: Text(
                                            "05-00xxxxxx",
                                            style: TextStyle(
                                              color: Theme.of(context)
                                                  .colorScheme
                                                  .onSecondaryContainer,
                                            ),
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )),
                            )),
                      ],
                    )),
                  )),
            ],
          ),
        )
      ],
    ));
  }
}
