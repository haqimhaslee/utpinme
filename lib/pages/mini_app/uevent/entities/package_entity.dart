import 'dart:typed_data';

class PackageEntity {
  Uint8List? merchImage;
  final String packageName;
  final String description;
  final String imageFileName;
  final double? cost;

  PackageEntity({
    this.merchImage,
    required this.packageName,
    required this.description,
    required this.imageFileName,
    required this.cost,
  });

  // Factory method to create a PackageEntity object from a map
  factory PackageEntity.fromMap(Map<String, dynamic> map) {
    return PackageEntity(
      merchImage: map['merchImage'],
      packageName: map['packageName'] ?? '',
      description: map['description'] ?? '',
      imageFileName: map['imageFileName'] ?? '',
      cost: double.tryParse(map['cost'].toString()),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'merchImage': merchImage,
      'packageName': packageName,
      'description': description,
      'imageFileName': imageFileName,
      'cost': cost,
    };
  }
}
