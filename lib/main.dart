import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:catering6/screens/splash/splash_screen.dart';
import 'routes.dart';
import 'screens/home/components/favorites_provider.dart';
import 'theme.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => FavoritesProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ANNIZAR CATERING',
      theme: AppTheme.lightTheme(context),
      initialRoute: SplashScreen.routeName,
      routes: routes,
      onGenerateRoute: onGenerateRoute,
    );
  }
}

