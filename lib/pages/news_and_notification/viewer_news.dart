import 'package:flutter/material.dart';

class ViewerNews extends StatelessWidget {
  const ViewerNews({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        //elevation: 3,
      ),
      body: ListView(children: [
        Card(
          elevation: 3,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
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
                              top: 8,
                              left: 8,
                              right: 15,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(15.0),
                                  child: Image.asset(
                                    'assets/ch.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        const Padding(
                          padding: EdgeInsets.only(
                            top: 10,
                            right: 15,
                            bottom: 10,
                          ),
                          child: SizedBox(
                            height: 80,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("NEWS Title 1"),
                                Text("News content"),
                                Flexible(fit: FlexFit.tight, child: SizedBox()),
                                Text("8 September 2023"),
                              ],
                            ),
                          ),
                        ),
                        const Flexible(fit: FlexFit.tight, child: SizedBox()),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(Icons.share_rounded),
                              iconSize: 25,
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
