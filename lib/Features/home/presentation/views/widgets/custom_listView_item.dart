import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

class CustomListViewItem extends StatelessWidget {
  const CustomListViewItem({super.key, required this.imageUrl});
  final String? imageUrl;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: ClipRRect(
        borderRadius: BorderRadiusGeometry.circular(16),
        child: AspectRatio(
          aspectRatio: 2.6 / 4,
          child: CachedNetworkImage(
            imageUrl:
                imageUrl ??
                'http://books.google.com/books/content?id=Od4yAAAAIAAJ&printsec=frontcover&img=1&zoom=1&source=gbs_api',
            fit: BoxFit.fill,
            placeholder: (context, url) =>
                Skeletonizer(child: SizedBox(height: 225)),
            errorWidget: (context, url, error) =>
                Icon(Icons.image_not_supported),
          ),
        ),
      ),
    );
  }
}
