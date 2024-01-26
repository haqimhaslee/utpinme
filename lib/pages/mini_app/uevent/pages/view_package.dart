import 'package:flutter/material.dart';
import '../entities/package_entity.dart';

class ViewPackage extends StatefulWidget {
  final List<PackageEntity> packagesList;

  const ViewPackage({
    Key? key,
    required this.packagesList,
  }) : super(key: key);

  @override
  State<ViewPackage> createState() => _ViewPackageState();
}

class _ViewPackageState extends State<ViewPackage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(10, 5, 10, 0),
              child: Row(
                children: [
                  IconButton(
                    style: IconButton.styleFrom(
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.circular(25),
                      ),
                      backgroundColor: const Color(0xffFFC21A),
                    ),
                    onPressed: () => Navigator.pop(context),
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    "View Packages",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue[900],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: _buildPackageList(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildPackageList() {
    return GridView.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: MediaQuery.of(context).size.width /
            (MediaQuery.of(context).size.height / 1.5),
      ),
      itemCount: widget.packagesList.length,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        //File merchPicFile = widget.packagesList[index];
        PackageEntity package = widget.packagesList[index]; // Corrected here

        return GestureDetector(
          onTap: () {
            _navigateToPackageDetails(package);
          },
          child: Column(
            children: [
              Expanded(
                child: Image.memory(package.merchImage!),
              ),
              const SizedBox(height: 8),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    package.packageName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(package.description),
                  Text(package.cost?.toString() ?? ""),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  void _navigateToPackageDetails(PackageEntity package) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Scaffold(
          appBar: AppBar(
            title: Text(package.packageName),
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Image.memory(package.merchImage!),
                const SizedBox(height: 10),
                Text(
                  package.packageName,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Description : ',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  package.description,
                  style: const TextStyle(fontSize: 16),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Price:',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  package.cost?.toString() ?? "",
                  style: const TextStyle(fontSize: 16),
                ),
                // Additional information as needed
              ],
            ),
          ),
        ),
      ),
    );
  }
}
