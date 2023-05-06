import 'package:flutter/foundation.dart' show immutable;

@immutable
class FirebaseFieldName {
  static const userId = 'uid';
  static const date = 'date';
  static const displayName = 'display_name';
  static const email = 'email';

  // Dish collection keys
  static const recipeName = 'recipe_name';
  static const desc = 'desc';
  static const imageUrl = 'image_url';
  static const category = 'category';
  static const cuisine = 'cuisine';
  static const ingredients = 'ingredients';
  static const instructions = 'instructions';
  static const tags = 'tags';

  const FirebaseFieldName._();
}
