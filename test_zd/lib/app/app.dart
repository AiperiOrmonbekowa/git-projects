import 'package:flutter/material.dart';
import 'package:test_zd/config/theme/theme.dart';
import 'package:test_zd/features/auth/presentation/page/registration/sign_up_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      debugShowCheckedModeBanner: false,
      home: const SignUpPage(),
    );
  }
}
