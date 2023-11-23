import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:utp_in_me/pages/home/news/more_news.dart';
import 'package:utp_in_me/pages/home/upcoming_events/more_upcoming_events.dart';
import 'package:utp_in_me/pages/home/news/viewer_news.dart';
import 'package:utp_in_me/pages/home/panic_button.dart';
import 'package:utp_in_me/pages/mini_app/digital_id/digital_id.dart';

class UpSectionHome extends StatefulWidget {
  const UpSectionHome({super.key});

  @override
  State<UpSectionHome> createState() => _UpSectionHomeState();
}

class _UpSectionHomeState extends State<UpSectionHome> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 5,
            right: 5,
            bottom: 5,
          ),
          child: Card(
            elevation: 1,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            child: SizedBox(
              child: ClipRRect(
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                child: Material(
                  color: const Color.fromARGB(0, 255, 193, 7),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => DigitalId()));
                    },
                    child: Padding(
                      padding: const EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Padding(
                            padding: EdgeInsets.only(right: 15, left: 15),
                            child: SizedBox(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage:
                                        AssetImage("assets/profile_pic.png"),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 180,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.person_rounded,
                                      size: 18,
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                199,
                                        child: const Padding(
                                            padding: EdgeInsets.only(
                                                right: 5, left: 5),
                                            child: Text("Admin",
                                                style: TextStyle(
                                                  fontWeight: FontWeight.w600,
                                                ))))
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Icon(
                                      Icons.mail_rounded,
                                      size: 18,
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                199,
                                        child: Padding(
                                            padding: const EdgeInsets.only(
                                                right: 5, left: 5),
                                            child: Text(user.email!)))
                                  ],
                                ),
                                Row(
                                  children: [
                                    const Icon(
                                      Icons.book_rounded,
                                      size: 18,
                                    ),
                                    SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width -
                                                199,
                                        child: const Padding(
                                            padding: EdgeInsets.only(
                                                right: 5, left: 5),
                                            child: Text("-")))
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox.fromSize(
                            size: const Size(60, 60),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(15.0),
                              child: Material(
                                color: Theme.of(context).colorScheme.error,
                                child: InkWell(
                                  splashColor: Theme.of(context)
                                      .colorScheme
                                      .errorContainer,
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const PanicButton()));
                                  },
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Icon(
                                        Icons.emergency,
                                        size: 35,
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onError,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 10,
            right: 10,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: ImageSlideshow(
              indicatorColor: Theme.of(context).colorScheme.primary,
              indicatorBackgroundColor:
                  Theme.of(context).colorScheme.surfaceVariant,
              autoPlayInterval: 6000,
              indicatorRadius: 4,
              //disableUserScrolling: true,
              isLoop: true,
              width: MediaQuery.of(context).size.width - 20,
              height: ((MediaQuery.of(context).size.width - 20) / 16) * 9,
              children: [
                Image.asset(
                  'assets/carousel_pic/ulife_live.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/carousel_pic/1.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/carousel_pic/2.png',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/prototype/3.jpg',
                  fit: BoxFit.cover,
                ),
                Image.asset(
                  'assets/prototype/4.jpg',
                  fit: BoxFit.cover,
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
            //bottom: 5,
          ),
          child: SizedBox(
            width: 380,
            child: Row(
              children: [
                const Text(
                  "News",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                const Flexible(fit: FlexFit.tight, child: SizedBox()),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const MoreNews()));
                    },
                    child: const Text('View More'))
              ],
            ),
          ),
        ),
        SizedBox(
            height: 160,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: SizedBox.fromSize(
                    size: const Size(270, 80),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        child: InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const ViewerNews()));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                  ),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)),
                                    ),
                                    child: Column(children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/prototype/1.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                          child: SizedBox.fromSize(
                                            size: const Size(300, 80),
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                              child: Material(
                                                color: const Color.fromARGB(
                                                    30, 67, 97, 141),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 0,
                                                        left: 0,
                                                        right: 0,
                                                        bottom: 00,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          SizedBox.fromSize(
                                                            size: const Size(
                                                                180, 70),
                                                          ),
                                                        ],
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
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 8,
                                  right: 8,
                                  bottom: 0,
                                ),
                                child: Text(
                                  'Dr Phil Considine, Director of Strathclyde Executive Education and Development, Strathclyde Business School, University of Strathclyde',
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                  softWrap: false,
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              const Padding(
                                  padding: EdgeInsets.only(
                                    top: 5,
                                    left: 8,
                                    right: 8,
                                    bottom: 0,
                                  ),
                                  child: Row(
                                    children: [
                                      Text(
                                        '11 September 2023',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        ' | ',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      Text(
                                        'CORP',
                                        textAlign: TextAlign.left,
                                        style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    ],
                                  ))
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: SizedBox.fromSize(
                    size: const Size(270, 80),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                  ),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)),
                                    ),
                                    child: Column(children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/prototype/2.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                          child: SizedBox.fromSize(
                                            size: const Size(300, 80),
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                              child: Material(
                                                color: const Color.fromARGB(
                                                    30, 67, 97, 141),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 0,
                                                        left: 0,
                                                        right: 0,
                                                        bottom: 00,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          SizedBox.fromSize(
                                                            size: const Size(
                                                                180, 70),
                                                          ),
                                                        ],
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
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 8,
                                  right: 8,
                                  bottom: 0,
                                ),
                                child: Text(
                                  'Visit by University Nottingham Malaysia (UNM)',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 8,
                                  right: 8,
                                  bottom: 0,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '28 July 2023',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      ' | ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      'CORP',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: SizedBox.fromSize(
                    size: const Size(270, 80),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                  ),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)),
                                    ),
                                    child: Column(children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/prototype/3.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                          child: SizedBox.fromSize(
                                            size: const Size(300, 80),
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                              child: Material(
                                                color: const Color.fromARGB(
                                                    30, 67, 97, 141),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 0,
                                                        left: 0,
                                                        right: 0,
                                                        bottom: 00,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          SizedBox.fromSize(
                                                            size: const Size(
                                                                180, 70),
                                                          ),
                                                        ],
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
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 8,
                                  right: 8,
                                  bottom: 0,
                                ),
                                child: Text(
                                  'UTP’s CONVORIDE 2023 IS NOW OPEN FOR REGISTRATION!',
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 8,
                                  right: 8,
                                  bottom: 0,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '03 July 2023',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      ' | ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '-',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: SizedBox.fromSize(
                    size: const Size(270, 80),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        child: InkWell(
                          onTap: () {},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                  padding: const EdgeInsets.only(
                                    top: 0,
                                    left: 0,
                                    right: 0,
                                    bottom: 0,
                                  ),
                                  child: Container(
                                    decoration: const BoxDecoration(
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(0)),
                                    ),
                                    child: Column(children: [
                                      ClipRRect(
                                        borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(15),
                                          topRight: Radius.circular(15),
                                        ),
                                        child: Container(
                                          decoration: const BoxDecoration(
                                            image: DecorationImage(
                                                image: AssetImage(
                                                    "assets/prototype/4.jpg"),
                                                fit: BoxFit.cover),
                                          ),
                                          child: SizedBox.fromSize(
                                            size: const Size(300, 80),
                                            child: ClipRRect(
                                              borderRadius:
                                                  const BorderRadius.only(
                                                topLeft: Radius.circular(15),
                                                topRight: Radius.circular(15),
                                              ),
                                              child: Material(
                                                color: const Color.fromARGB(
                                                    30, 67, 97, 141),
                                                child: Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: <Widget>[
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 0,
                                                        left: 0,
                                                        right: 0,
                                                        bottom: 00,
                                                      ),
                                                      child: Column(
                                                        children: [
                                                          SizedBox.fromSize(
                                                            size: const Size(
                                                                180, 70),
                                                          ),
                                                        ],
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
                                  )),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 8,
                                  right: 8,
                                  bottom: 0,
                                ),
                                child: Text(
                                  "UTP's CONVORIDE ROUTES",
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w800),
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(
                                  top: 5,
                                  left: 8,
                                  right: 8,
                                  bottom: 0,
                                ),
                                child: Row(
                                  children: [
                                    Text(
                                      '03 July 2023',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      ' | ',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                    Text(
                                      '-',
                                      textAlign: TextAlign.left,
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 15,
            right: 15,
            //bottom: 5,
          ),
          child: SizedBox(
            width: 380,
            child: Row(
              children: [
                const Text(
                  "Upcoming events",
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
                ),
                const Flexible(fit: FlexFit.tight, child: SizedBox()),
                TextButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const MoreUpcomingEvents()));
                    },
                    child: const Text('View More'))
              ],
            ),
          ),
        ),
        SizedBox(
            height: 115,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: SizedBox.fromSize(
                    size: const Size(280, 60),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        child: InkWell(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  child: SizedBox(
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "20",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 30,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        Text(
                                          "SEPT",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "1 Day",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 192,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, top: 6),
                                        child: Text(
                                          "TECHNOLOGY, EDUCATION & CAREER (TEC) 2023",
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
                                            Icons.timer_outlined,
                                            size: 18,
                                          ),
                                          Text(" 9:00 AM -5:00 PM")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: SizedBox.fromSize(
                    size: const Size(280, 60),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        child: InkWell(
                          //splashColor:Color.fromARGB(255, 191, 217, 255),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,

                              //bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  child: SizedBox(
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "30",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 30,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        Text(
                                          "SEPT",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "10 Days",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 192,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, top: 6),
                                        child: Text(
                                          "LAUNCH OF UTP ROOFTOP SOLAR PANEL",
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
                                            Icons.timer_outlined,
                                            size: 18,
                                          ),
                                          Text(" 9:00 AM - 2:00 PM")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: SizedBox.fromSize(
                    size: const Size(280, 60),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        child: InkWell(
                          //splashColor:Color.fromARGB(255, 191, 217, 255),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,

                              //bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  child: SizedBox(
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "14",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 30,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        Text(
                                          "OCT",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "14 Days",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 192,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, top: 6),
                                        child: Text(
                                          "PSYCHOLOGY AND COUNSELLING EXPLORACE",
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
                                            Icons.timer_outlined,
                                            size: 18,
                                          ),
                                          Text(" 10:00 AM - 2:00 PM")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Card(
                  elevation: 1,
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(15)),
                  ),
                  child: SizedBox.fromSize(
                    size: const Size(280, 60),
                    child: ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15),
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15),
                      ),
                      child: Material(
                        color: const Color.fromARGB(0, 255, 193, 7),
                        child: InkWell(
                          //splashColor:Color.fromARGB(255, 191, 217, 255),
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.only(
                              top: 10,

                              //bottom: 5,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.only(
                                      right: 15, left: 15),
                                  child: SizedBox(
                                    width: 50,
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          "15",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 30,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                          ),
                                        ),
                                        Text(
                                          "OCT",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w900,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                        Text(
                                          "15 Days",
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 13,
                                            color: Theme.of(context)
                                                .colorScheme
                                                .onSecondaryContainer,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  width: 192,
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.only(
                                            bottom: 10, top: 6),
                                        child: Text(
                                          "UTP PSYCHOLOGICAL AND COUNSELLING DAY",
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
                                            Icons.timer_outlined,
                                            size: 18,
                                          ),
                                          Text(" 11:00 AM -5:00 PM")
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        const Text(' '),
      ],
    );
  }
}
