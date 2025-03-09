import 'package:flutter/material.dart';
import 'package:nurtotrack/Features/auth/login.dart';
import 'package:nurtotrack/Features/auth/login_or_reg.dart';
import 'package:nurtotrack/Features/auth/register.dart';
import 'package:nurtotrack/Features/auth/splash_screen.dart';
import 'package:nurtotrack/Features/home/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/', // Set SplashScreen as the initial route
      routes: {
        '/': (context) => const SplashScreen(),
        '/SigninOrSignup':  (context) => const SigninOrSignupScreen(),
        '/SignIn': (context) => const SignInScreen(),
        '/SignUp': (context) => const SignUpScreen(),
        '/Home': (context) => const Home(),
      },
      onGenerateRoute: (settings) {
        // Handle undefined routes
        return MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        );
      },
    );
  }
}
