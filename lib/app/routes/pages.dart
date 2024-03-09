import 'package:get/get.dart';
import 'package:grocery/app/moduels/dashboard/bindings/dashboard_bindings.dart';
import 'package:grocery/app/moduels/dashboard/dashboard_screen.dart';
import 'package:grocery/app/moduels/home/bindings/home_binding.dart';
import 'package:grocery/app/moduels/home/screen/home_screen.dart';
import 'package:grocery/app/moduels/home/screen/see_all_products_screen.dart';
import 'package:grocery/app/moduels/onboarding/bindings/location_bindings.dart';

import 'package:grocery/app/moduels/onboarding/bindings/number_bindings.dart';
import 'package:grocery/app/moduels/onboarding/bindings/onboarding_bindings.dart';
import 'package:grocery/app/moduels/onboarding/bindings/social_binding.dart';
import 'package:grocery/app/moduels/onboarding/bindings/splash_bindings.dart';
import 'package:grocery/app/moduels/onboarding/bindings/verification_bindings.dart';
import 'package:grocery/app/moduels/onboarding/login/bindings/login_binding.dart';
import 'package:grocery/app/moduels/onboarding/login/login_screen.dart';
import 'package:grocery/app/moduels/onboarding/screen/location_screen.dart';
import 'package:grocery/app/moduels/onboarding/screen/number_screen.dart';
import 'package:grocery/app/moduels/onboarding/screen/onbarding.dart';
import 'package:grocery/app/moduels/onboarding/screen/social_screen.dart';
import 'package:grocery/app/moduels/onboarding/screen/splash.dart';
import 'package:grocery/app/moduels/onboarding/screen/verification_screen.dart';
import 'package:grocery/app/moduels/onboarding/signup/bindings/signup_binding.dart';
import 'package:grocery/app/moduels/onboarding/signup/signup_screen.dart';
import 'package:grocery/app/routes/routes.dart';

class Pages {
  static final pages = [
    GetPage(
      name: Routes.initial,
      page: () => const SplashScreen(),
      binding: SplashBindings(),
    ),
    GetPage(
      name: Routes.onboardingHome,
      page: () => const OnbordingScreen(),
      binding: OnBoardBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.socialScreen,
      page: () => const SocialScreen(),
      binding: SocialBindings(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.numberScreen,
      page: () => const NumberScreen(),
      binding: NumberBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.verificaitonScreen,
      page: () => const VerificationScreen(),
      binding: VerificationBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.locationScreen,
      page: () => const LocationScreen(),
      binding: LocationBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => LoginScreen(),
      binding: LoginBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.signupScreen,
      page: () => const SignupScreen(),
      binding: SignupBinding(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.dashBoard,
      page: () => const DashBoardScreen(),
      binding: DashBoardBindings(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.homeScreen,
      page: () => const HomeScreen(),
      binding: HomeBindings(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.seeAllProducts,
      page: () => const SeeAllProducts(),
      binding: HomeBindings(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    GetPage(
      name: Routes.detailsProducts,
      page: () => const SeeAllProducts(),
      binding: HomeBindings(),
      transition: Transition.rightToLeft,
      transitionDuration: const Duration(milliseconds: 300),
    ),
    // GetPage(
    //   name: Routes.noInternet,
    //   page: () => const NoInternetPage(),
    //   binding: NoInternetBindings(),
    // ),
    // GetPage(
    //   name: Routes.login,
    //   binding: LogInBinding(),
    //   transition: Transition.native,
    //   page: () => const LoginScreen(),
    // ),
    // GetPage(
    //   name: Routes.signup,
    //   binding: SignUpBinding(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   page: () => const SignUpScreen(),
    // ),
    // GetPage(
    //   name: Routes.dashboard,
    //   bindings: [HomeBinding(), DashboardBindings()],
    //   page: () => const DashboardPage(),
    // ),
    // //Calculator
    // GetPage(
    //   name: Routes.calculatorScreen,
    //   page: () => const CalculatorScreen(),
    // ),
    // //setting
    // GetPage(
    //     name: Routes.generalSetting,
    //     page: () => GeneralSetting(),
    //     binding: GeneralSettingBinding()),
    // GetPage(
    //     name: Routes.applicationSetting,
    //     page: () => const ApplicationSettingScreen(),
    //     binding: ApplicationSettingBinding()),

    // //currency chooser
    // GetPage(
    //   name: Routes.currencyChooser,
    //   page: () => const CurrencyChooser(),
    // ),

    // //notification
    // GetPage(
    //   name: Routes.notificationScreen,
    //   page: () => const NotificationPage(),
    //   binding: NotificationBinding(),
    // ),
    // GetPage(
    //   name: Routes.selectLanguage,
    //   page: () => const SelectLanguage(),
    //   binding: LanguageBindings(),
    // ),

    // //OnBoarding
    // GetPage(
    //   name: Routes.onboardingHome,
    //   page: () => const OnboardingScreen(),
    //   binding: OnBoardBinding(),
    // ),
    // GetPage(
    //   name: Routes.welcomeScreen,
    //   page: () => const WelcomeScreen(),
    //   binding: OnBoardBinding(),
    // ),
    // GetPage(
    //   name: Routes.forgotPasswordScreen,
    //   page: () => const ForgotPasswordScreen(),
    //   transition: Transition.rightToLeft,
    //   transitionDuration: const Duration(milliseconds: 300),
    //   binding: ForgotPasswordBinding(),
    // ),
    // GetPage(
    //     name: Routes.otpScreen,
    //     transition: Transition.rightToLeft,
    //     transitionDuration: const Duration(milliseconds: 300),
    //     page: () => const OtpScreen(),
    //     binding: OtpBinding()),
    // GetPage(
    //     name: Routes.createNewPasswordScreen,
    //     transition: Transition.rightToLeft,
    //     transitionDuration: const Duration(milliseconds: 300),
    //     page: () => const CreateNewPasswordScreen(),
    //     binding: CreateNewPasswordBinding()),
    // GetPage(
    //     name: Routes.selectLocationScreen,
    //     transition: Transition.rightToLeft,
    //     transitionDuration: const Duration(milliseconds: 300),
    //     page: () => const SelectLocationScreen(),
    //     binding: SelectLocationBinding()),

    // //TrendTouch
    // GetPage(
    //     name: Routes.trendTouchHome,
    //     transition: Transition.rightToLeft,
    //     transitionDuration: const Duration(seconds: 1),
    //     page: () => const HomeScreen(),
    //     binding: HomeBinding()),

    // GetPage(
    //     name: Routes.viewAllProducts,
    //     transition: Transition.rightToLeft,
    //     transitionDuration: const Duration(milliseconds: 500),
    //     page: () => const ViewProductsScreen(),
    //     binding: HomeBinding()),
    // GetPage(
    //     name: Routes.shopDetails,
    //     transition: Transition.native,
    //     transitionDuration: const Duration(milliseconds: 300),
    //     page: () => const ShopDetailsScreen(),
    //     binding: ShopBinding()),
    // //ServiceHome
    // GetPage(
    //     name: Routes.shopAllServicesScreen,
    //     transition: Transition.rightToLeft,
    //     transitionDuration: const Duration(milliseconds: 300),
    //     page: () => const ShopAllServicesScreen(),
    //     binding: ShopAllServicesBinding()),
  ];
}
