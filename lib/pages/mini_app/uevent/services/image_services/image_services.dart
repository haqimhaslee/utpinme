import 'dart:io';
import 'dart:typed_data';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class ImageServices {
  late final Reference storageRef;

  ImageServices() {
    storageRef = FirebaseStorage.instance.ref();
  }

  Future<void> postImage(String fileName, String docRef, File file) async {
    final folderRef =
        storageRef.child(docRef); // use other filed as duplicates might exist
    final imageRef = folderRef.child(fileName);

    try {
      await imageRef.putFile(file);
    } on FirebaseException catch (e) {
      debugPrint("Error: $e");
    }
  }

  Future<Uint8List?> retrieveImage(String fileName, String docRef) async {
    final folderRef = storageRef.child(docRef);
    final imageRef = folderRef.child(fileName);

    try {
      final Uint8List? imageData = await imageRef.getData();
      return imageData;
    } on FirebaseException catch (e) {
      debugPrint("Error: $e");
    }
    return null;
  }
}
