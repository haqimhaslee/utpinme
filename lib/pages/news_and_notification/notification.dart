import 'package:flutter/material.dart';

class NewsNotification extends StatelessWidget {
  const NewsNotification({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: [
        Card(
          elevation: 3,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 10,
                              bottom: 5,
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NEWS Title 1"),
                            Text("News content"),
                            //Flexible(fit: FlexFit.tight, child: SizedBox()),
                            Text("Date : 12/12/2012"),
                          ],
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_rounded),
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          elevation: 3,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 10,
                              bottom: 5,
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NEWS Title 1"),
                            Text("News content"),
                            //Flexible(fit: FlexFit.tight, child: SizedBox()),
                            Text("Date : 12/12/2012"),
                          ],
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_rounded),
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          elevation: 3,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 10,
                              bottom: 5,
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NEWS Title 1"),
                            Text("News content"),
                            //Flexible(fit: FlexFit.tight, child: SizedBox()),
                            Text("Date : 12/12/2012"),
                          ],
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_rounded),
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          elevation: 3,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 10,
                              bottom: 5,
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NEWS Title 1"),
                            Text("News content"),
                            //Flexible(fit: FlexFit.tight, child: SizedBox()),
                            Text("Date : 12/12/2012"),
                          ],
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_rounded),
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          elevation: 3,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 10,
                              bottom: 5,
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NEWS Title 1"),
                            Text("News content"),
                            //Flexible(fit: FlexFit.tight, child: SizedBox()),
                            Text("Date : 12/12/2012"),
                          ],
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_rounded),
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        Card(
          elevation: 3,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(15),
              bottomLeft: Radius.circular(15),
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Material(
              child: InkWell(
                onTap: () {},
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 5,
                              left: 5,
                              right: 10,
                              bottom: 5,
                            ),
                            child: SizedBox(
                              width: 100,
                              height: 100,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("NEWS Title 1"),
                            Text("News content"),
                            //Flexible(fit: FlexFit.tight, child: SizedBox()),
                            Text("Date : 12/12/2012"),
                          ],
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 20,
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.bookmark_rounded),
                              iconSize: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
