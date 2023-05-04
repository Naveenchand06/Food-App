import 'dart:collection';
import 'package:flutter/foundation.dart';
import 'package:food_app_ui/utils/contants/firebase_field_name.dart';
import 'package:food_app_ui/utils/typedefs/user_id.dart';

@immutable
class UserInfoPayload extends MapView<String, String> {
  UserInfoPayload({
    required UserId userId,
    required String? displayName,
    required String? email,
  }) : super({
          FirebaseFieldName.userId: userId,
          FirebaseFieldName.displayName: displayName ?? '',
          FirebaseFieldName.email: email ?? '',
        });
}
