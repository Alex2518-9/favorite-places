import 'package:favorite_places/models/place.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class UserPlacesNotifier extends Notifier<List<Place>> {
  UserPlacesNotifier();

  void addPlace(String title) {
    state = [...state, Place(title: title)];
  }

  @override
  List<Place> build() {
    return [];
  }
}

final userPlacesProvider = NotifierProvider<UserPlacesNotifier, List<Place>>(
  UserPlacesNotifier.new,
);
