import 'package:flutter/foundation.dart' show immutable;

@immutable
class FirebaseCollectionName {
  static const users = "users";
  static const liked = "liked";
  static const dishes = "dishes";
  static const healthy = "healthy";
  static const trending = "trending";
  static const popular = "popular";

  const FirebaseCollectionName._();
}
