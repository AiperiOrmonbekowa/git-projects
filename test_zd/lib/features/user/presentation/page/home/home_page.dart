import 'package:flutter/material.dart';
import 'package:test_zd/config/theme/app_colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        title: const Text(
          'Home Page',
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
      ),
      // body: Container(
      //   decoration: BoxDecoration(
      //     color: AppColors.grey,
      //     borderRadius: BorderRadius.circular(13),
      //   ),
      //   child: Text(
      //     "Register Form",
      //     style: theme.textTheme.bodyLarge?.copyWith(color: AppColors.black),
      //   ),
    );
  }
}
