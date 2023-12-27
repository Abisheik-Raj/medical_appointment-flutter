import "package:appointment_app/pages/account_creation_page.dart";
import "package:appointment_app/pages/login_page.dart";
import "package:appointment_app/pages/main_page.dart";
import "package:appointment_app/pages/otp_page.dart";
import "package:flutter/material.dart";

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/account_creation_page": (context) => const AccountCreationPage(),
        "/otp_page": (context) => const OtpPage(),
        "/main_page": (context) => const MainPage()
      },
      debugShowCheckedModeBanner: false,
      home: const LoginPage(),
    );
  }
}
