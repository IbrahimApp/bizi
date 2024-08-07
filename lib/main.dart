import 'package:bizi/components/constants/app_color.dart';
import 'package:bizi/pages/onboarding/onboarding_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Bizi',
        theme: ThemeData(
          primaryColor: AppColor.primaryDark,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          useMaterial3: true,
        ),
        darkTheme: ThemeData.dark(),
        builder: (context, child) {
          return CupertinoTheme(
            data: const CupertinoThemeData(),
            child: Material(
              child: child,
            ),
          );
        },
        home: const OnboardingPage() //Navigation(), //const HomePage(),
        );
  }
}
