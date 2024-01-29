import 'dart:async';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import '../entities/event_entity.dart';
import '../services/image_services/image_services.dart';

class EventUseCase extends ChangeNotifier {
  List<EventEntity> allEvents = [];
  List<EventEntity> searchResults = [];
  DocumentSnapshot? lastDocSnapshot;
  late StreamController<List<EventEntity>> _eventsController;

  EventUseCase() {
    _eventsController = StreamController<List<EventEntity>>.broadcast();
  }

  Future<void> fetchEventsFromFirestore() async {
    try {
      // Reference to the 'events' collection in Firestore
      CollectionReference eventsCollection =
          FirebaseFirestore.instance.collection('events');

      // Get documents from the collection
      QuerySnapshot querySnapshot;
      if (lastDocSnapshot == null) {
        querySnapshot =
            await eventsCollection.orderBy("dateTime").limit(6).get();
      } else {
        querySnapshot = await eventsCollection
            .orderBy("dateTime")
            .startAfterDocument(lastDocSnapshot!)
            .limit(4)
            .get();
      }
      lastDocSnapshot = querySnapshot.docs.last;

      // Convert the documents to EventEntity objects
      List<EventEntity> events = querySnapshot.docs.map((doc) {
        return EventEntity.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();

      // Update the 'allEvents' list with the fetched events
      allEvents.addAll(events);

      // Add the updated list to the stream
      _eventsController.add(allEvents);

      // Notify listeners that the data has been updated
      notifyListeners();

      fetchImageFromFirebase();
    } catch (e) {
      debugPrint(
          'Error fetching events from Firestore: $e'); // TODO: delete in production
    }
  }

  Future<void> fetchImageFromFirebase() async {
    for (var event in allEvents) {
      if (event.bannerImage == null) {
        try {
          ImageServices()
              .retrieveImage(event.bannerImageName, event.id)
              .then((value) {
            int index = allEvents.indexOf(event);
            allEvents[index].bannerImage = value;
            notifyListeners();
            debugPrint(
                "Image for event at index ${index.toString()} has been loaded"); // TODO: delete in production
          });
        } catch (e) {
          debugPrint(
              'Error fetching images from Firestore: $e'); // TODO: delete in production
        }
      }
      if (event.merchImages.length < event.merchData.length) {
        for (var merch in event.merchData) {
          if (merch['merchImage'] == null) {
            try {
              ImageServices()
                  .retrieveImage(merch['imageFileName'], event.id)
                  .then((value) {
                int index = allEvents.indexOf(event);
                allEvents[index].merchImages.add(value);
                notifyListeners();
                debugPrint(
                    "Image for event at index ${index.toString()} has been loaded"); // TODO: delete in production
              });
            } catch (e) {
              debugPrint(
                  'Error fetching images from Firestore: $e'); // TODO: delete in production
            }
          }
        }
      }
    }
  }

  Future<void> searchEventFromFirestore(
      String organizer) async {
    try {
      searchResults.clear();
      CollectionReference eventsCollection =
          FirebaseFirestore.instance.collection('events');

      // query builder
      Query query = eventsCollection;
      if (organizer != "") {
        query = query.where("organizer", isEqualTo: organizer);
      }
      //query = query.orderBy("dateTime").limit(20);
      query = query.limit(20);

      QuerySnapshot querySnapshot = await query.get();
      List<EventEntity> events = querySnapshot.docs.map((doc) {
        return EventEntity.fromMap(doc.data() as Map<String, dynamic>);
      }).toList();
      searchResults = events..sort((a, b) => a.dateTime.compareTo(b.dateTime)); // sorts from closest date

      _eventsController.add(searchResults);
      notifyListeners();

      for (var event in searchResults) {
        if (event.bannerImage == null) {
          try {
            ImageServices()
                .retrieveImage(event.bannerImageName, event.id)
                .then((value) {
              int index = searchResults.indexOf(event);
              searchResults[index].bannerImage = value;
              notifyListeners();
              debugPrint(
                  "Image for event at index ${index.toString()} has been loaded"); // TODO: delete in production
            });
          } catch (e) {
            debugPrint(
                'Error fetching images from Firestore: $e'); // TODO: delete in production
          }
        }
        if (event.merchImages.length < event.merchData.length) {
          for (var merch in event.merchData) {
            if (merch['merchImage'] == null) {
              try {
                ImageServices()
                    .retrieveImage(merch['imageFileName'], event.id)
                    .then((value) {
                  int index = searchResults.indexOf(event);
                  searchResults[index].merchImages.add(value);
                  notifyListeners();
                  debugPrint(
                      "Image for event at index ${index.toString()} has been loaded"); // TODO: delete in production
                });
              } catch (e) {
                debugPrint(
                    'Error fetching images from Firestore: $e'); // TODO: delete in production
              }
            }
          }
        }
      }
    } catch (e) {
      debugPrint(
          'Error fetching events from Firestore: $e'); // TODO: delete in production
    }
  }

  // Add this method to close the StreamController
  @override
  void dispose() {
    _eventsController.close();
    super.dispose();
  }
}
