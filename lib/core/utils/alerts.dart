import 'package:fluttertoast/fluttertoast.dart';

import 'package:ulula/core/constants/colors.dart';

class AppAlerts {
  AppAlerts._();

  static void showErrorMessage(String text) {
    Fluttertoast.cancel();
    Fluttertoast.showToast(
      msg: text,
      toastLength: Toast.LENGTH_LONG,
      gravity: ToastGravity.BOTTOM,
      backgroundColor: AppColors.color7,
      textColor: AppColors.color6,
      fontSize: 16,
    );
  }
}
