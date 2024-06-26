
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:catering6/screens/products/products_screen.dart';

import 'dart:js';

import 'package:catering6/screens/details/details_package.dart';
import 'package:catering6/screens/package/package_offers.dart';
import 'package:flutter/widgets.dart';
import 'package:catering6/screens/products/products_screen.dart';

import 'screens/cart/cart_screen.dart';

import 'screens/cart/components/payment_screen.dart';
import 'screens/complete_profile/complete_profile_screen.dart';

// import 'screens/complete_profile/complete_profile_screen.dart';

import 'screens/details/details_screen.dart';
import 'screens/forgot_password/forgot_password_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/init_screen.dart';
import 'screens/login_success/login_success_screen.dart';
// import 'screens/otp/otp_screen.dart';
import 'screens/profile/profile_screen.dart';
import 'screens/sign_in/sign_in_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';
import 'screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  InitScreen.routeName: (context) => const InitScreen(),
  SplashScreen.routeName: (context) => const SplashScreen(),
  SignInScreen.routeName: (context) => const SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => const ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => const LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => const SignUpScreen(),
  // CompleteProfileScreen.routeName: (context) => const CompleteProfileScreen(),
  // OtpScreen.routeName: (context) => const OtpScreen(),
  HomeScreen.routeName: (context) => const HomeScreen(),
  DetailsPackage.routeName: (context) => const DetailsPackage(),
  PackageOffers.routeName: (context) => const PackageOffers(),
  ProductsScreen.routeName: (context) => const ProductsScreen(),
  DetailsScreen.routeName: (context) => const DetailsScreen(),
  CartScreen.routeName: (context) => const CartScreen(),
  ProfileScreen.routeName: (context) => const ProfileScreen(),
  //PaymentScreen.routeName: (context) => PaymentScreen(),

};

Route<dynamic>? onGenerateRoute(RouteSettings settings) {
  if (settings.name == PaymentScreen.routeName) {
    final args = settings.arguments as Map<String, dynamic>;
    return MaterialPageRoute(
      builder: (context) {
        return PaymentScreen(
          totalPrice: args['totalPrice'],
          paymentMethod: args['paymentMethod'],
        );
      },
    );
  }

  // Add other routes here as necessary
  return null;
}
