import 'package:flutter/foundation.dart';
import 'package:food_app_ui/app/dialogs/alert_dialog_model.dart';
import 'package:food_app_ui/utils/contants/strings.dart';

@immutable
class LoginFailureDialog extends AlertDialogModel<bool> {
  const LoginFailureDialog()
      : super(
          title: 'Error',
          message: 'Invalid Credentials',
          buttons: const {
            Strings.ok: false,
          },
        );
}
