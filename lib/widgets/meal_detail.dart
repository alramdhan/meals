import 'package:flutter/material.dart';
import 'package:meals/models/meal.dart';
import 'package:transparent_image/transparent_image.dart';

class MealDetail extends StatelessWidget {
  const MealDetail({
    super.key,
    required this.meal
  });

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title,
          maxLines: 1,
          softWrap: true,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      body: Column(
        children: [
          FadeInImage(
            placeholder: MemoryImage(kTransparentImage),
            image: NetworkImage(meal.imageUrl),
            fit: BoxFit.cover,
            height: 300,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}