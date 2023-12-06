import 'package:favorite_place/models/place.dart';
import 'package:favorite_place/screens/place_detail.dart';
import 'package:flutter/material.dart';

class Places extends StatelessWidget {
  const Places({super.key, required this.places});

  final List<Place> places;

  @override
  Widget build(BuildContext context) {
    if (places.isEmpty) {
      return Center(
        child: Text(
          'There no favorite places been added yet',
          style: Theme.of(context)
              .textTheme
              .bodyMedium!
              .copyWith(color: Theme.of(context).colorScheme.onBackground),
        ),
      );
    }
    return ListView.builder(
        itemCount: places.length,
        itemBuilder: (ctx, index) => ListTile(
              leading: CircleAvatar(
                radius: 25,
                backgroundImage: FileImage(places[index].image),
              ),
              title: Text(
                places[index].title,
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground),
              ),
              onTap: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (ctx) => PlaceDetailScreen(
                      place: places[index],
                    ),
                  ),
                );
              },
            ),
            );
  }
}
