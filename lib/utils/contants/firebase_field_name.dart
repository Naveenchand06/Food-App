import 'package:flutter/foundation.dart' show immutable;

@immutable
class FirebaseFieldName {
  static const userId = 'uid';
  static const date = 'date';
  static const displayName = 'display_name';
  static const email = 'email';

  // Dish collection keys
  static const name = 'name';
  static const desc = 'desc';
  static const foodCategory = 'food_category';
  static const cuisine = 'cuisine';
  static const imageUrl = 'email';
  static const ingredients = 'ingredients';

  const FirebaseFieldName._();
}
