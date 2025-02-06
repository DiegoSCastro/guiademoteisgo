import 'package:flutter/material.dart';
import 'package:guiademoteisgo/app/app.dart';

class MotelItem extends StatelessWidget {
  const MotelItem(this.motel, {super.key});
  final Motel motel;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Row(
            spacing: 16,
            children: [
              SizedBox.square(
                dimension: 60,
                child: DecoratedBox(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: NetworkImage(motel.logo),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(motel.name),
                    Row(
                      children: [
                        Text('${motel.distance}km - '),
                        Text(motel.neighborhood),
                      ],
                    ),
                  ],
                ),
              ),
              const Icon(Icons.favorite),
            ],
          ),
        ),
        Image.network(motel.suites.first.photos.first),
      ],
    );
  }
}
