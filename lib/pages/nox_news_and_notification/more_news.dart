import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/nox_news_and_notification/viewer_news.dart';

class MoreNews extends StatelessWidget {
  const MoreNews({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('News'),
        centerTitle: true,
        elevation: 5,
        scrolledUnderElevation: 5,
      ),
      body: ListView(children: [
        Card(
          elevation: 0,
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
            child: Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ViewerNews()));
                },
                child: Column(
                  children: <Widget>[
                    Row(
                      children: [
                        Padding(
                            padding: const EdgeInsets.only(
                              top: 8,
                              left: 8,
                              right: 10,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/prototype/1.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 195,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  child: Text(
                                    "Dr Phil Considine, Director of Strathclyde Executive Education and Development, Strathclyde Business School, University of Strathclyde",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("11 September 2023"))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.account_circle_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("-"))
                                  ],
                                )
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
        const Divider(),
        Card(
          elevation: 0,
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
                              right: 10,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/prototype/2.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 195,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  child: Text(
                                    "Visit by University Nottingham Malaysia (UNM)",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("28 July 2023"))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.account_circle_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("-"))
                                  ],
                                )
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
        const Divider(),
        Card(
          elevation: 0,
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
                              right: 10,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/prototype/3.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 195,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  child: Text(
                                    "UTP’s CONVORIDE 2023 IS NOW OPEN FOR REGISTRATION!",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("03 July 2023"))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.account_circle_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("-"))
                                  ],
                                )
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
        const Divider(),
        Card(
          elevation: 0,
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
                              right: 10,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/prototype/5.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 195,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  child: Text(
                                    "Delving Beyond Hydrocarbons",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("21 June 2023"))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.account_circle_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("-"))
                                  ],
                                )
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
        const Divider(),
        Card(
          elevation: 0,
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
                              right: 10,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/prototype/6.png',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 195,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  child: Text(
                                    "UTP Student Jocelyn Teh Shuang Ru Emerges as Champion in Intel AI Design Competition",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("17 June 2023"))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.account_circle_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("-"))
                                  ],
                                )
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
        const Divider(),
        Card(
          elevation: 0,
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
                              right: 10,
                              bottom: 8,
                            ),
                            child: SizedBox(
                              width: 110,
                              height: 110,
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10.0),
                                  child: Image.asset(
                                    'assets/prototype/7.jpg',
                                    fit: BoxFit.cover,
                                  )),
                            )),
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: SizedBox(
                            width: MediaQuery.of(context).size.width - 195,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      bottom: 10, top: 10),
                                  child: Text(
                                    "UTP and Petroleum Technology Development Fund Strengthen Partnership through Postgraduate Sponsorship Programmes",
                                    textAlign: TextAlign.left,
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                      fontSize: 14,
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onSecondaryContainer,
                                    ),
                                  ),
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.calendar_month_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("15 June 2023"))
                                  ],
                                ),
                                const Row(
                                  children: [
                                    Icon(
                                      Icons.account_circle_rounded,
                                      size: 18,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 5),
                                        child: Text("-"))
                                  ],
                                )
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
        const Divider(),
      ]),
    );
  }
}
