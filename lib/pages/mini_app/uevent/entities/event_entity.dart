import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';

class EventEntity {
  final String id;
  final String title;
  final String description;
  final String location;
  final DateTime dateTime;
  final String organizer;
  final String? category;
  final DateTime? rsvpDeadline;
  final int? capacity;
  final String? image; //TODO: delete?
  //final List<dynamic> tags;
  final List<dynamic>? attendees;
  final String status;
  final String? link;
  final bool? notifications;
  final double cost;
  final List<String>? sponsors;
  final String? socialMediaLink;
  final List<dynamic> merchData; // keep track of image file names
  List<Uint8List?> merchImages; //  ADDED
  final String bannerImageName; //  ADDED
  Uint8List? bannerImage; // set to null when posting data

  EventEntity(
      {required this.id,
      required this.title,
      required this.description,
      required this.location,
      required this.dateTime,
      required this.organizer,
      this.category, // removed as nessasary, replace with tags
      this.bannerImage,
      this.rsvpDeadline,
      this.capacity,
      this.image,
      //required this.tags,
      this.attendees,
      required this.status,
      this.link,
      this.notifications,
      required this.cost,
      this.sponsors,
      this.socialMediaLink,
      required this.merchData,
      required this.merchImages,
      required this.bannerImageName});

  // Factory method to create an EventEntity object from a map
  factory EventEntity.fromMap(Map<String, dynamic> map) {
    return EventEntity(
      // Extract fields from the map
      id: map['id'] ?? '',
      title: map['title'] ?? '',
      description: map['description'] ?? '',
      location: map['location'] ?? '',
      dateTime: (map['dateTime'] as Timestamp).toDate(),
      organizer: map['organizer'] ?? '',
      category: map['category'] ?? '',
      rsvpDeadline: (map['rsvpDeadline'] as Timestamp?)?.toDate(),
      capacity: map['capacity'] as int?,
      status: map['status'] as String,
      bannerImage: null,
      cost: map['cost'] * 1.0,
      //tags: map['tags'] as List<dynamic>,
      merchData: map['merchData'] as List<dynamic>,
      merchImages: [],
      bannerImageName: map['bannerImageName'] as String,
      // ... (continue to extract other fields)
    );
  }
  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'description': description,
      'location': location,
      'dateTime': dateTime,
      'organizer': organizer,
      'status': status,
      'cost': cost,
      //'tags': tags,
      "bannerImage": bannerImage,
      'merchData': merchData,
      'bannerImageName': bannerImageName,
      // ... (other properties)
    };
  }
}
