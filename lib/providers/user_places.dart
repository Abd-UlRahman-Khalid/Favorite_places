import 'dart:io';
import 'package:riverpod/riverpod.dart';
import 'package:favorite_place/models/place.dart';

class UserPlacesNotifier extends StateNotifier<List<Place>> {
  UserPlacesNotifier() : super(const []);

  void addPlace(String place,File image,PlaceLocation location) {
    final newPlace = Place(title: place,image: image,location: location);
    state = [newPlace, ...state];
  }
}

final userPlacesProvider =
    StateNotifierProvider<UserPlacesNotifier, List<Place>>(
  (ref) => UserPlacesNotifier(),
);
