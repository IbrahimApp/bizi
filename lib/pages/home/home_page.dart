import 'package:flutter/material.dart';
import 'package:bizi/components/constants/app_color.dart';
import 'package:bizi/pages/home/home_components/body.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.backgroundColor,
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: const SizedBox(
        child: Body(),
      ),
    );
  }
}
