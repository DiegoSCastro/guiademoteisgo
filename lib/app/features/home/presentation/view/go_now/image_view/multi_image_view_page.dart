import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:guiademoteisgo/app/app.dart';

class MultiImageViewPage extends StatelessWidget {
  const MultiImageViewPage({
    required this.suite,
    super.key,
  });
  final Suite suite;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(suite.name),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_rounded,
            size: 16,
          ),
          onPressed: context.pop,
        ),
      ),
      body: ListView.builder(
        itemCount: suite.photos.length,
        itemBuilder: (context, index) {
          final photo = suite.photos[index];
          return Container(
            margin: const EdgeInsets.only(bottom: 8),
            height: 150,
            child: Hero(
              tag: photo,
              child: CachedNetworkImage(
                imageUrl: photo,
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
