import 'dart:io';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path/path.dart' as p;
import '../entities/event_entity.dart';
import '../entities/package_entity.dart';
import '../services/image_services/image_services.dart';
import 'view_package.dart';

class AddEvent extends StatefulWidget {
  const AddEvent({super.key});

  @override
  State<AddEvent> createState() => _AddEventState();
}

class _AddEventState extends State<AddEvent> {
  // event/package view switching
  bool isEventDetailsVisible = true;

  // event details variables
  File? eventBannerFile;
  Uint8List? eventBannerBytes;

  var eventTitleController = TextEditingController();
  var eventDescController = TextEditingController();
  var ticketPriceController = TextEditingController();
  var eventLoactionController = TextEditingController();

  DateTime? dateSelection;
  Timestamp? timestamp;

  // packages details variables
  File? currentPackageFile;
  Uint8List? currentPackageBytes;

  List<File> merchPicFiles = [];

  var packageNameController = TextEditingController();
  var packageDescController = TextEditingController();
  var packagePriceController = TextEditingController();

  List<PackageEntity> packagesList = [];

  // image picking
  List<XFile>? _mediaFileList;

  dynamic _pickImageError;
  String? _retrieveDataError;

  final ImagePicker _picker = ImagePicker();
  final ImageServices imageServices = ImageServices();

  // crop selected image
  Future _cropImage(XFile pickedFile) async {
    try {
      CroppedFile? croppedFile = await ImageCropper().cropImage(
          sourcePath: pickedFile.path,
          maxHeight: 1080,
          maxWidth: 1080,
          compressFormat:
              ImageCompressFormat.jpg, // maybe change later, test quality first
          compressQuality: 20,
          aspectRatio: const CropAspectRatio(ratioX: 1.0, ratioY: 1.0));

      if (isEventDetailsVisible) {
        eventBannerFile = File(croppedFile!.path);
        eventBannerBytes = await eventBannerFile!.readAsBytes();

        debugPrint(eventBannerFile!.path); // TODO: delete in production
        debugPrint(eventBannerFile!
            .lengthSync()
            .toString()); // TODO: delete in production
      } else if (!isEventDetailsVisible) {
        currentPackageFile = File(croppedFile!.path);
        currentPackageBytes = await currentPackageFile!.readAsBytes();

        debugPrint(currentPackageFile!.path); // TODO: delete in production
        debugPrint(currentPackageFile!
            .lengthSync()
            .toString()); // TODO: delete in production
      }

      setState(() {});
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  // add selected image to list
  void _setImageFileListFromFile(XFile? value) {
    _mediaFileList = value == null ? null : <XFile>[value];
  }

  // pick image from gallery
  Future getImageFromGallery() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.gallery,
        //imageQuality: 5,
      );
      if (pickedFile != null) {
        _setImageFileListFromFile(pickedFile);
        _cropImage(pickedFile);
      }
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }

  // take picture with camera
  Future getImageFromCamera() async {
    try {
      final XFile? pickedFile = await _picker.pickImage(
        source: ImageSource.camera,
        //imageQuality: 5,
      );
      if (pickedFile != null) {
        _setImageFileListFromFile(pickedFile);
        _cropImage(pickedFile);
      }
    } catch (e) {
      setState(() {
        _pickImageError = e;
      });
    }
  }

  // ui component for pick image button
  Widget _pickImageContainer() {
    if (isEventDetailsVisible) {
      return eventBannerBytes == null
          ? Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.width * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: const Color(0xffFFC21A))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'You have not yet picked an image.',
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: IconButton(
                                onPressed: () async {
                                  //showOption(context);
                                  getImageFromGallery();
                                },
                                tooltip: 'Pick Image from gallery or Camera',
                                icon: const Icon(Icons.photo),
                              ),
                            ),
                            const Text("Gallery"),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: IconButton(
                                onPressed: () async {
                                  //showOption(context);
                                  getImageFromCamera();
                                },
                                icon: const Icon(Icons.camera),
                              ),
                            ),
                            const Text("Camera"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          : Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: MediaQuery.of(context).size.width * 0.7,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: const Color(0xffFFC21A))),
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: Image.memory(eventBannerBytes!),
                    ),
                  ),
                ),
                Positioned(
                  top: -12,
                  left: -12,
                  child: IconButton(
                    onPressed: () {
                      eventBannerFile = null;
                      eventBannerBytes = null;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.cancel,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                )
              ],
            );
    } else {
      return currentPackageBytes == null
          ? Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
              child: Container(
                padding: const EdgeInsets.all(8.0),
                height: MediaQuery.of(context).size.width * 0.7,
                width: MediaQuery.of(context).size.width * 0.7,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(16.0),
                    border: Border.all(color: const Color(0xffFFC21A))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    const Text(
                      'You have not yet picked an image.',
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: IconButton(
                                onPressed: () async {
                                  //showOption(context);
                                  getImageFromGallery();
                                },
                                tooltip: 'Pick Image from gallery or Camera',
                                icon: const Icon(Icons.photo),
                              ),
                            ),
                            const Text("Gallery"),
                          ],
                        ),
                        Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 8.0, right: 8.0),
                              child: IconButton(
                                onPressed: () async {
                                  //showOption(context);
                                  getImageFromCamera();
                                },
                                icon: const Icon(Icons.camera),
                              ),
                            ),
                            const Text("Camera"),
                          ],
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          : Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 5, 10, 10),
                  child: Container(
                    padding: const EdgeInsets.all(8.0),
                    height: MediaQuery.of(context).size.width * 0.7,
                    width: MediaQuery.of(context).size.width * 0.7,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(16.0),
                        border: Border.all(color: const Color(0xffFFC21A))),
                    child: Container(
                      height: 400,
                      width: 400,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          15,
                        ),
                      ),
                      child: Image.memory(currentPackageBytes!),
                    ),
                  ),
                ),
                Positioned(
                  top: -12,
                  left: -12,
                  child: IconButton(
                    onPressed: () {
                      currentPackageFile = null;
                      currentPackageBytes = null;
                      setState(() {});
                    },
                    icon: const Icon(
                      Icons.cancel,
                      color: Colors.red,
                      size: 25,
                    ),
                  ),
                )
              ],
            );
    }
  }

  // error handling image
  Widget _previewImages() {
    if (_retrieveDataError != null) {
      //return retrieveError;
    }
    if (_pickImageError != null) {
      // return Text(
      //   'Pick image error: $_pickImageError',
      //   textAlign: TextAlign.center,
      // );
    }
    return _pickImageContainer();
  }

  // incase app crashes, previous image data can be retrieved
  Future<void> retrieveLostData() async {
    final LostDataResponse response = await _picker.retrieveLostData();
    if (response.isEmpty) {
      return;
    }
    if (response.file != null) {
      setState(() {
        if (response.files == null) {
          _setImageFileListFromFile(response.file);
        } else {
          _mediaFileList = response.files;
        }
      });
    } else {
      _retrieveDataError = response.exception!.code;
    }
  }

  // pick date and time
  Future<DateTime?> showDateTimePicker({
    required BuildContext context,
  }) async {
    final DateTime? selectedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(10000, 1, 1),
    );

    if (selectedDate == null) return null;

    if (!context.mounted) return selectedDate;

    final TimeOfDay? selectedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.fromDateTime(selectedDate),
    );

    return selectedTime == null
        ? selectedDate
        : DateTime(
            selectedDate.year,
            selectedDate.month,
            selectedDate.day,
            selectedTime.hour,
            selectedTime.minute,
          );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            // image picking view/preview for add event
            Visibility(
              visible: isEventDetailsVisible,
              child: !kIsWeb && defaultTargetPlatform == TargetPlatform.android
                  ? FutureBuilder<void>(
                      future: retrieveLostData(),
                      builder:
                          (BuildContext context, AsyncSnapshot<void> snapshot) {
                        switch (snapshot.connectionState) {
                          case ConnectionState.none:
                          case ConnectionState.waiting:
                            return _pickImageContainer();
                          case ConnectionState.done:
                            return _previewImages();
                          case ConnectionState.active:
                            if (snapshot.hasError) {
                              /*return Text(
                                'Pick image error: ${snapshot.error}}',
                                textAlign: TextAlign.center,
                              );*/
                              debugPrint(snapshot.error.toString());
                              return _pickImageContainer();
                            } else {
                              return _pickImageContainer();
                            }
                          default:
                            return _pickImageContainer();
                        }
                      },
                    )
                  : _previewImages(),
            ),
            // image picking view/preview for add packages
            Visibility(
              visible: !isEventDetailsVisible,
              child: Column(
                children: [
                  !kIsWeb && defaultTargetPlatform == TargetPlatform.android
                      ? FutureBuilder<void>(
                          future: retrieveLostData(),
                          builder: (BuildContext context,
                              AsyncSnapshot<void> snapshot) {
                            switch (snapshot.connectionState) {
                              case ConnectionState.none:
                              case ConnectionState.waiting:
                                return _pickImageContainer();
                              case ConnectionState.done:
                                return _previewImages();
                              case ConnectionState.active:
                                if (snapshot.hasError) {
                                  /*return Text(
                                    'Pick image error: ${snapshot.error}}',
                                    textAlign: TextAlign.center,
                                  );*/
                                  debugPrint(snapshot.error.toString());
                                  return _pickImageContainer();
                                } else {
                                  return _pickImageContainer();
                                }
                              default:
                                return _pickImageContainer();
                            }
                          },
                        )
                      : _previewImages(),
                ],
              ),
            ),
            // navigating button between add event / add packages
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: isEventDetailsVisible ? 8 : 0),
                    onPressed: () {
                      setState(() {
                        isEventDetailsVisible = true;
                      });
                    },
                    child: const Text(
                      "Event Details",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25)),
                        elevation: isEventDetailsVisible ? 0 : 8),
                    onPressed: () {
                      setState(() {
                        isEventDetailsVisible = false;
                      });
                    },
                    child: const Text(
                      "Packages",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    )),
              ],
            ),
            // add event detail fields, post data to database in here
            Visibility(
              visible: isEventDetailsVisible,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: eventTitleController,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: 'Event Name'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: eventDescController,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: 'Event Description'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: ticketPriceController,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: 'Ticket Price',
                              prefixText: 'RM   ',
                              prefixStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: eventLoactionController,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: 'Location'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            color: Colors.blue[900],
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              if (dateSelection != null)
                                Text(
                                  dateSelection.toString(),
                                  style: const TextStyle(color: Colors.white),
                                ),
                              IconButton(
                                  onPressed: () async {
                                    DateTime? date = await showDateTimePicker(
                                      context: context,
                                    );

                                    if (date != null) {
                                      setState(() {
                                        dateSelection = date;
                                        timestamp = Timestamp.fromDate(date);
                                      });
                                    }
                                    debugPrint(
                                        "Datetime: ${date.toString()}"); // TODO: delete in production
                                    debugPrint(
                                        "Timestamp: ${timestamp.toString()}"); // TODO: delete in production
                                  },
                                  icon: const Icon(
                                    Icons.date_range,
                                    color: Colors.white,
                                  )),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        OutlinedButton(
                          onPressed: () async {
                            //TODO: add validation
                            if (eventBannerFile != null) {
                              try {
                                // get unique doc ref
                                final DocumentReference docReference =
                                    FirebaseFirestore.instance
                                        .collection("events")
                                        .doc();

                                // store merch
                                List<Map<String, dynamic>> merchData = [];
                                for (var package in packagesList) {
                                  package.merchImage = null;
                                  merchData.add(package.toMap());
                                }

                                // construct new event_entity to be posted
                                EventEntity eventEntity = EventEntity(
                                    id: docReference.id.toString(),
                                    title: eventTitleController.text,
                                    description: eventDescController.text,
                                    location: eventLoactionController.text,
                                    dateTime: dateSelection!,
                                    organizer:
                                        "SYNTECH", // get organizer from user_entity of registed clubs
                                    //tags: tagsSelection,
                                    status: "Upcoming",
                                    attendees: [],
                                    merchData: merchData,
                                    merchImages: [],
                                    bannerImageName: ("banner" +
                                        p.extension(eventBannerFile!.path)),
                                    bannerImage: null);

                                // post event to firestore
                                await docReference.set(eventEntity.toMap());

                                // adding event image
                                /* this line post to firebase*/
                                imageServices
                                    .postImage(
                                        eventEntity.bannerImageName,
                                        docReference.id.toString(),
                                        eventBannerFile!)
                                    .then((value) {
                                  // reset event text fields
                                  eventBannerFile = null;
                                  eventBannerBytes = null;
                                  eventTitleController.clear();
                                  eventDescController.clear();
                                  ticketPriceController.clear();
                                  eventLoactionController.clear();
                                  dateSelection = null;
                                  setState(() {});
                                });

                                // adding packages image
                                packagesList.asMap().forEach((index, package) {
                                  /* this line post to firebase*/
                                  imageServices.postImage(
                                      package.imageFileName,
                                      docReference.id.toString(),
                                      merchPicFiles[index]);

                                  // TODO: delete testing statements
                                  debugPrint(
                                      "File name: ${package.imageFileName} ### File loc: ${docReference.id.toString()} ### ${merchPicFiles[index]}");
                                });
                              } catch (e) {
                                debugPrint(e.toString());
                              }
                            } else {
                              // TODO: show dialogue
                              debugPrint("You havent selected an image");
                            }
                          },
                          child: const Center(
                            child: Text(
                              "Add Event",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        const SizedBox(height: 25,),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            // add packages detail fields
            Visibility(
              visible: !isEventDetailsVisible,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
                child: Container(
                  width: double.infinity,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        TextField(
                          controller: packageNameController,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: 'Package Name'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: packageDescController,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: 'Package Description'),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        TextField(
                          controller: packagePriceController,
                          style: const TextStyle(fontSize: 12),
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(30)),
                              labelText: 'Package Price',
                              prefixText: 'RM   ',
                              prefixStyle: const TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold)),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        // add package data to local
                        Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: OutlinedButton(
                            onPressed: () async {
                              if (currentPackageFile != null) {
                                // store merch image data
                                merchPicFiles
                                    .add(File(currentPackageFile!.path));

                                debugPrint(merchPicFiles
                                    .last.path); // TODO: delete in production
                                debugPrint(merchPicFiles.last
                                    .lengthSync()
                                    .toString()); // TODO: delete in production
                                debugPrint(
                                    "Currently has ${merchPicFiles.length} merch pics"); // TODO: delete in production

                                PackageEntity packageEntity = PackageEntity(
                                  merchImage: currentPackageBytes!,
                                  packageName: packageNameController.text,
                                  description: packageDescController.text,
                                  imageFileName: packageNameController.text +
                                      p.extension(currentPackageFile!.path),
                                  cost: double.tryParse(
                                      packagePriceController.text),
                                );

                                // add package to storage
                                packagesList.add(packageEntity);

                                // reset merch image data
                                currentPackageFile = null;
                                currentPackageBytes = null;
                                packageNameController.clear();
                                packageDescController.clear();
                                packagePriceController.clear();
                                setState(() {});
                              }
                            },
                            child: const Center(
                              child: Text(
                                "Add Package",
                                style: TextStyle(
                                    fontSize: 20, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        ),
                        // add another package / view previous packages button
                        Padding(
                          padding: const EdgeInsets.fromLTRB(35, 5, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              OutlinedButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => ViewPackage(
                                        packagesList: packagesList,
                                      ),
                                    ),
                                  );
                                },
                                child: const Text("View Packages"),
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
          ],
        ),
      ),
    );
  }
}
