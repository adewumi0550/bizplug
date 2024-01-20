import 'package:bizplug/features/auth/presentation/pages/login/loginScreen.dart';
import 'package:bizplug/features/auth/presentation/pages/signup/signup_screen.dart';
import 'package:flutter/widgets.dart';

import '../features/auth/presentation/pages/cart/cart_screen.dart';
import '../features/auth/presentation/pages/complete_profile/complete_profile_screen.dart';
import '../features/auth/presentation/pages/details/details_screen.dart';
import '../features/auth/presentation/pages/forgot_password/forgot_password_screen.dart';
import '../features/auth/presentation/pages/home/home_screen.dart';
import '../features/auth/presentation/pages/login_success/login_success_screen.dart';
import '../features/auth/presentation/pages/otp/otp_screen.dart';
import '../features/auth/presentation/pages/profile/profile_screen.dart';
import '../features/auth/presentation/pages/splash.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignupScreen.routeName: (context) => SignupScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};
