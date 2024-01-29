import 'package:flutter/material.dart';

class LoadingWidget extends StatelessWidget {
  final int divider;
  const LoadingWidget({super.key, required this.divider});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height / divider,
        ),
        const CircularProgressIndicator(),
      ],
    ));
  }
}