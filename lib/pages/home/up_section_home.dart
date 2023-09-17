import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';
import 'package:utp_in_me/pages/digital_id/digital_id.dart';
import 'package:utp_in_me/pages/el_tigre_exemption/exemption.dart';
import 'package:utp_in_me/pages/panic_button.dart';
import 'package:utp_in_me/pages/parcel_hub.dart';
import 'package:utp_in_me/pages/shuttle_bus/shuttle_bus.dart';
import 'package:flutter_custom_tabs/flutter_custom_tabs.dart';
import 'package:utp_in_me/settings/profile.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UpSectionHome extends StatefulWidget {
  const UpSectionHome({super.key});

  @override
  State<UpSectionHome> createState() => _UpSectionHomeState();
}

class _UpSectionHomeState extends State<UpSectionHome> {
  final user = FirebaseAuth.instance.currentUser!;
  @override
  Widget build(BuildContext context) {
    void attenndanceWeb() async {
      try {
        launch(
          'https://apps.powerapps.com/play/e/default-84187be3-037e-41ec-889c-a150fe476432/a/afab9b41-ef46-4e5d-988b-2d0dce08234d?tenantId=84187be3-037e-41ec-889c-a150fe476432&source=portal',
          customTabsOption: CustomTabsOption(
            toolbarColor: Theme.of(context).colorScheme.background,
            showPageTitle: true,
            //enableDefaultShare: false
          ),
          safariVCOption: const SafariViewControllerOption(
            preferredBarTintColor: Colors.blue,
            preferredControlTintColor: Colors.white,
            barCollapsingEnabled: true,
            entersReaderIfAvailable: true,
            dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
          ),
        );
      } catch (e) {
        debugPrint(e.toString());
      }
    }

    void uLearnWeb() async {
      try {
        launch(
          'https://ulearn.utp.edu.my/login/index.php',
          customTabsOption: CustomTabsOption(
            toolbarColor: Theme.of(context).colorScheme.background,
            showPageTitle: true,
            //enableDefaultShare: false
          ),
          safariVCOption: const SafariViewControllerOption(
            preferredBarTintColor: Colors.blue,
            preferredControlTintColor: Colors.white,
            barCollapsingEnabled: true,
            entersReaderIfAvailable: true,
            dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
          ),
        );
      } catch (e) {
        debugPrint(e.toString());
      }
    }

    void ucampusWeb() async {
      try {
        launch(
          'https://ucampus.utp.edu.my/',
          customTabsOption: CustomTabsOption(
            toolbarColor: Theme.of(context).colorScheme.background,
            showPageTitle: true,
            //enableDefaultShare: false
          ),
          safariVCOption: const SafariViewControllerOption(
            preferredBarTintColor: Colors.blue,
            preferredControlTintColor: Colors.white,
            barCollapsingEnabled: true,
            entersReaderIfAvailable: true,
            dismissButtonStyle: SafariViewControllerDismissButtonStyle.close,
          ),
        );
      } catch (e) {
        debugPrint(e.toString());
      }
    }

    return Column(
      children: [
        Padding(
            padding: const EdgeInsets.only(
              top: 15,
              bottom: 15,
              left: 7,
              right: 7,
            ),
            child: Card(
              elevation: 2,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: SizedBox(
                width: MediaQuery.of(context).size.width - 10,
                height: 100,
                child: Center(
                    child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(
                        left: 10,
                        right: 10,
                      ),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundImage: AssetImage("assets/profile_pic.png"),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          '<name>',
                          style: Theme.of(context).textTheme.bodyLarge,
                        ),
                        Text(
                          user.email!,
                          style: Theme.of(context).textTheme.labelSmall,
                        )
                      ],
                    ),
                    const Flexible(fit: FlexFit.tight, child: SizedBox()),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10,
                      ),
                      child: SizedBox.fromSize(
                        size: const Size(55, 55),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Material(
                            color: Theme.of(context).colorScheme.error,
                            child: InkWell(
                              splashColor:
                                  Theme.of(context).colorScheme.errorContainer,
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
                                    Icons.emergency_rounded,
                                    size: 30,
                                    color:
                                        Theme.of(context).colorScheme.onError,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                )),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(
            left: 10,
            right: 10,
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: ImageSlideshow(
              indicatorColor: Theme.of(context).colorScheme.primary,
              indicatorBackgroundColor: Theme.of(context).colorScheme.surface,
              autoPlayInterval: 5000,
              indicatorRadius: 3.5,
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
              ],
            ),
          ),
        ),
        const Padding(
          padding: EdgeInsets.only(
            top: 15,
            left: 15,
            right: 15,
            bottom: 0,
          ),
          child: SizedBox(
            width: 380,
            child: Row(
              children: [
                Text("Quick Apps"),
              ],
            ),
          ),
        ),
        Padding(
            padding:
                const EdgeInsets.only(left: 10, right: 10, top: 15, bottom: 30),
            child: Container(
              alignment: Alignment.center,
              width: MediaQuery.of(context).size.width - 20,
              height: 160,
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondaryContainer,
                borderRadius: const BorderRadius.all(Radius.circular(20)),
              ),
              child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                            left: 0,
                            right: 0,
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      Profile()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.person_rounded,
                                              size: 30,
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
                              ),
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: ucampusWeb,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.school_rounded,
                                              size: 30,
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
                              ),
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: uLearnWeb,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.book_rounded,
                                              size: 30,
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
                              ),
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      DigitalId()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.badge_rounded,
                                              size: 30,
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
                              ),
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                            ],
                          )),
                      Padding(
                          padding: const EdgeInsets.only(
                            top: 0,
                            left: 0,
                            right: 0,
                            bottom: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: attenndanceWeb,
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.app_registration_rounded,
                                              size: 30,
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
                              ),
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ExemptionApp()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.check_circle_rounded,
                                              size: 30,
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
                              ),
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ParcelHub()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons.local_shipping_rounded,
                                              size: 30,
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
                              ),
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                              Padding(
                                padding: const EdgeInsets.only(),
                                child: SizedBox.fromSize(
                                  size: const Size(55, 55),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(20),
                                    child: Material(
                                      color: Theme.of(context)
                                          .colorScheme
                                          .onPrimaryContainer,
                                      child: InkWell(
                                        splashColor: Theme.of(context)
                                            .colorScheme
                                            .primary,
                                        onTap: () {
                                          Navigator.push(
                                              context,
                                              MaterialPageRoute(
                                                  builder: (context) =>
                                                      const ShuttleBus()));
                                        },
                                        child: Column(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Icon(
                                              Icons
                                                  .directions_bus_filled_rounded,
                                              size: 30,
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
                              ),
                              const Flexible(
                                  fit: FlexFit.tight, child: SizedBox()),
                            ],
                          )),
                    ],
                  )),
            )),
      ],
    );
  }
}
