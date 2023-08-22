import 'package:flutter/material.dart';
import 'package:utp_in_me/pages/news_and_announcement.dart';

class BottomSectionHome extends StatefulWidget {
  const BottomSectionHome({super.key});

  @override
  State<BottomSectionHome> createState() => _BottomSectionHomeState();
}

class _BottomSectionHomeState extends State<BottomSectionHome> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: const EdgeInsets.only(
          top: 0,
          left: 15,
          right: 15,
          bottom: 0,
        ),
        child: Row(
          children: [
            const Text("News and announcement"),
            const Flexible(fit: FlexFit.tight, child: SizedBox()),
            TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const NewsAnnouncement()));
                },
                child: const Text("View More"))
          ],
        ),
      ),
      Padding(
          padding: const EdgeInsets.only(
            top: 5,
            left: 5,
            right: 5,
            bottom: 5,
          ),
          child: Container(
            width: 450,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onInverseSurface,
              borderRadius: const BorderRadius.all(Radius.circular(8)),
            ),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 10,
                          right: 10,
                          bottom: 15,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 18,
                                        backgroundImage: AssetImage(
                                            "assets/profile_pic.png"),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 0,
                                                left: 10,
                                                right: 0,
                                                bottom: 0,
                                              ),
                                              child: Text(
                                                "Developer Update",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .inverseSurface,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 0,
                                                left: 10,
                                                right: 0,
                                                bottom: 0,
                                              ),
                                              child: Text(
                                                "01 Jan 2023, 10:10am",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .inverseSurface,
                                                    fontSize: 10),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const Flexible(
                                          fit: FlexFit.tight,
                                          child: SizedBox()),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.more_vert_rounded))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      left: 0,
                                      right: 0,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "UPDATE NEWSLETTER",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inverseSurface,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "This is news detail for UTPinMe application news function",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inverseSurface,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 0,
                                        right: 0,
                                        bottom: 10,
                                      ),
                                      child: Container(
                                        width: 450,
                                        constraints:
                                            const BoxConstraints.expand(
                                                height: 200.0),
                                        child: FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.asset(
                                                "assets/ch.jpg",
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                      )),
                                  Container(
                                      height: 40,
                                      // width: 400,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onInverseSurface,
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.thumb_up_alt_rounded),
                                            iconSize: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.thumb_down_rounded),
                                            iconSize: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon:
                                                const Icon(Icons.share_rounded),
                                            iconSize: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.bookmark_rounded),
                                            iconSize: 20,
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                        )),
                  ],
                )),
          )),
      Padding(
          padding: const EdgeInsets.only(
            top: 10,
            left: 5,
            right: 5,
            bottom: 5,
          ),
          child: Container(
            width: 450,
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.onInverseSurface,
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            child: Align(
                alignment: Alignment.centerLeft,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                        padding: const EdgeInsets.only(
                          top: 10,
                          left: 10,
                          right: 10,
                          bottom: 15,
                        ),
                        child: Container(
                          decoration: const BoxDecoration(),
                          child: Align(
                              alignment: Alignment.centerLeft,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 18,
                                        backgroundImage: AssetImage(
                                            "assets/profile_pic.png"),
                                      ),
                                      Align(
                                        alignment: Alignment.centerLeft,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: <Widget>[
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 0,
                                                left: 10,
                                                right: 0,
                                                bottom: 0,
                                              ),
                                              child: Text(
                                                "Developer Update",
                                                textAlign: TextAlign.left,
                                                style: TextStyle(
                                                  color: Theme.of(context)
                                                      .colorScheme
                                                      .inverseSurface,
                                                ),
                                              ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                top: 0,
                                                left: 10,
                                                right: 0,
                                                bottom: 0,
                                              ),
                                              child: Text(
                                                "02 Jan 2023, 10:10am",
                                                style: TextStyle(
                                                    color: Theme.of(context)
                                                        .colorScheme
                                                        .inverseSurface,
                                                    fontSize: 10),
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                      const Flexible(
                                          fit: FlexFit.tight,
                                          child: SizedBox()),
                                      IconButton(
                                          onPressed: () {},
                                          icon: const Icon(
                                              Icons.more_vert_rounded))
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                      top: 15,
                                      left: 0,
                                      right: 0,
                                      bottom: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "UPDATE NEWSLETTER",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inverseSurface,
                                            fontSize: 16,
                                          ),
                                        ),
                                        Text(
                                          "This is news detail for UTPinMe application news function",
                                          textAlign: TextAlign.left,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .inverseSurface,
                                            fontSize: 13,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                      padding: const EdgeInsets.only(
                                        top: 10,
                                        left: 0,
                                        right: 0,
                                        bottom: 10,
                                      ),
                                      child: Container(
                                        constraints:
                                            const BoxConstraints.expand(
                                                height: 200.0),
                                        child: FittedBox(
                                          fit: BoxFit.fitWidth,
                                          child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              child: Image.asset(
                                                "assets/ch.jpg",
                                                fit: BoxFit.fill,
                                              )),
                                        ),
                                      )),
                                  Container(
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Theme.of(context)
                                            .colorScheme
                                            .onInverseSurface,
                                      ),
                                      child: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.thumb_up_alt_rounded),
                                            iconSize: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.thumb_down_rounded),
                                            iconSize: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon:
                                                const Icon(Icons.share_rounded),
                                            iconSize: 20,
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                                Icons.bookmark_rounded),
                                            iconSize: 20,
                                          ),
                                        ],
                                      ))
                                ],
                              )),
                        )),
                  ],
                )),
          )),
    ]);
  }
}
