import 'dart:async';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:get/get.dart';
import 'package:grocery/app/core/constants.dart';

import 'package:grocery/app/routes/routes.dart';

class SplashController extends GetxController {
  var isLoading = false.obs;
  // final LoginController _loginController = Get.find<LoginController>();

  @override
  void onInit() {
    startTime();
    super.onInit();
  }

  Future startTime() async {
    final connectivityResult = await (Connectivity().checkConnectivity());
    if (connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi ||
        connectivityResult == ConnectivityResult.bluetooth ||
        connectivityResult == ConnectivityResult.ethernet) {
      return Timer(Constants.delayTime, jumpToLogin);
    } else {
      return Timer(Constants.delayTime, noInternetPage);
    }
  }

  Future jumpToLogin() async {
    // if (_loginController.isLoggedIn) {
    //   final isLangageAvailable =
    //       await MySharedPreference.chekcLanguageSetOrNot();
    //   if (isLangageAvailable) {
    //     _loginController.setUserName(
    //         _loginController.user?.user.firstName ?? "",
    //         _loginController.user?.user.picture ?? "");
    //     Get.offAllNamed(Routes.dashboard);
    //   } else {
    //     Get.offAllNamed(Routes.selectLanguage);
    //   }
    // } else {
    //   Get.offAllNamed(Routes.login);
    //   // Get.offAllNamed(Routes.onboardingHome);
    // }
  }

  void noInternetPage() {
    Get.offAllNamed(Routes.noInternet);
  }
}
