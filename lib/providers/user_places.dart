import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'dart:io';

class UserPlacesNotifier extends Notifier<List<Place>> {
  UserPlacesNotifier();

  void addPlace(String title, File image, PlaceLocation location) {
    state = [...state, Place(title: title, image: image, location: location)];
  }

  @override
  List<Place> build() {
    return [];
  }
}

final userPlacesProvider = NotifierProvider<UserPlacesNotifier, List<Place>>(
  UserPlacesNotifier.new,
);
