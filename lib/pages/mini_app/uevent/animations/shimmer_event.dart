import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';
import '../widgets/placeholders.dart';

class ShimmerEvent extends StatelessWidget {
  final double height;
  final double width;

  const ShimmerEvent({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Shimmer.fromColors(
        baseColor: Colors.grey.shade300,
        highlightColor: Colors.grey.shade100,
        enabled: true,
        child: SingleChildScrollView(
          physics: const NeverScrollableScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                children: [eventCardPlaceHolder(), eventCardPlaceHolder()],
              ),
              Row(
                children: [eventCardPlaceHolder(), eventCardPlaceHolder()],
              ),
              Row(
                children: [eventCardPlaceHolder(), eventCardPlaceHolder()],
              )
            ],
          ),
        ));
  }

  Widget eventCardPlaceHolder() {
    return Expanded(
      child: Column(
        children: [
          BannerPlaceholder(
            width: width,
            height: height,
          ),
          TitlePlaceholder(width: width),
        ],
      ),
    );
  }
}
