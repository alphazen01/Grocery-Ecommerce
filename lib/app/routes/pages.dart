import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:grocery/app/moduels/onboarding/bindings/onboarding_bindings.dart';
import 'package:grocery/app/moduels/onboarding/bindings/splash_bindings.dart';
import 'package:grocery/app/moduels/onboarding/screen/onbarding.dart';
import 'package:grocery/app/moduels/onboarding/screen/splash.dart';
import 'package:grocery/app/moduels/social_screen/bindings/social_bindings.dart';
import 'package:grocery/app/moduels/social_screen/social_screen.dart';
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
        transition: Transition.rightToLeft),
    GetPage(
        name: Routes.socialScreen,
        page: () => const SocialScreen(),
        binding: SocialBindings(),
        transition: Transition.rightToLeft),
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
