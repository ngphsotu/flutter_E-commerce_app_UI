import 'package:flutter/widgets.dart';
import 'screens/splash/splash_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/login_success/login_success_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';

// All routes available here
final Map<String, WidgetBuilder> routes = {
  // SplashScreen
  SplashScreen.routeName: (context) => const SplashScreen(),
  // SignInScreen
  SignInScreen.routeName: (context) => const SignInScreen(),
  // ForgotPasswordScreen
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  // LoginSuccessScreen
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  // SignUpScreen
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  // CompeleteProfileScreen
  CompeleteProfileScreen.routeName: (context) => const CompeleteProfileScreen(),
  //
  //
  //
  //
  //
};
