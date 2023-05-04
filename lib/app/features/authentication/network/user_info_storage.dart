import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/foundation.dart';
import 'package:food_app_ui/app/features/authentication/models/user_info_payload.dart';
import 'package:food_app_ui/utils/contants/firebase_collection_name.dart';
import 'package:food_app_ui/utils/contants/firebase_field_name.dart';
import 'package:food_app_ui/utils/typedefs/user_id.dart';

@immutable
class UserInfoStorage {
  // Saving userInfo to firebase collection
  Future<bool> saveUserInfo({
    required UserId userId,
    required String displayName,
    required String? email,
  }) async {
    try {
      final userInfo = await FirebaseFirestore.instance
          .collection(FirebaseCollectionName.users)
          .where(FirebaseFieldName.userId, isEqualTo: userId)
          .limit(1)
          .get();

      if (userInfo.docs.isNotEmpty) {
        await userInfo.docs.first.reference.update({
          FirebaseFieldName.displayName: displayName,
          FirebaseFieldName.email: email ?? '',
        });
        return true;
      }

      // We don't have that user info
      final payload = UserInfoPayload(
        userId: userId,
        displayName: displayName,
        email: email,
      );

      print('payload is -> $payload');

      await FirebaseFirestore.instance
          .collection(FirebaseCollectionName.users)
          .add(payload);
      return true;
    } catch (e) {
      return false;
    }
  }
}
