import 'package:favorite_place/providers/user_places.dart';
import 'package:favorite_place/screens/new_place.dart';
import 'package:flutter/material.dart';
import 'package:favorite_place/wedgits/places_list.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class FavoritePlacesScreen extends ConsumerWidget {
  const FavoritePlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);
    return Scaffold(
        appBar: AppBar(
          title: const Text('Your Places'),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const NewPlaceScreen(),
                    ),
                  );
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.all(16),
          child: Places(
            places: userPlaces,
          ),
        ));
  }
}
