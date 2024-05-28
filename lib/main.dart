import 'package:flutter/material.dart';
import 'package:catering6/screens/splash/splash_screen.dart';
import 'package:provider/provider.dart';
import 'package:catering6/provider/cartProvider.dart';

import 'routes.dart';
import 'theme.dart';

void main() {
  // runApp(const MyApp());
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => CartProvider()),
    ],
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ANNIZAR CATERING',
      theme: AppTheme.lightTheme(context),
      initialRoute: SplashScreen.routeName,
      routes: routes,
    );
  }
}
