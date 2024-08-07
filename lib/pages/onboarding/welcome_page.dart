import 'package:bizi/navigation.dart';
import 'package:bizi/pages/onboarding/signin_page.dart';
import 'package:bizi/pages/onboarding/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:bizi/components/constants/app_color.dart';
import 'package:bizi/components/constants/constants.dart';
import 'package:bizi/components/ui/app_button.dart';
import 'package:bizi/components/ui/app_large_text.dart';
import 'package:bizi/components/ui/app_text.dart';
import 'package:bizi/pages/onboarding/onboarding_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(
                "assets/images/image1.png",
              ),
            ),
          ),
          child: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  AppColor.black54.withOpacity(0.3),
                  AppColor.black54.withOpacity(0.6),
                ],
                stops: const [0.0, 1],
                begin: Alignment.topCenter,
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                SizedBox(
                  width: size.width * 0.7,
                  child: Column(
                    children: [
                      AppLargeText(
                        text: "Bienvenue",
                        size: 30,
                        color: AppColor.white,
                      ),
                      appVerticalGap,
                      appVerticalGap,
                      AppButton(
                        text: "Crée un compte",
                        color: AppColor.primaryDark,
                        tapEven: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SignupPage(),
                            ),
                          );
                        },
                      ),
                      const SizedBox(height: 10),
                      AppButton(
                        text: "Se connecter",
                        color: AppColor.white,
                        textColor: AppColor.primaryDark,
                        tapEven: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const SigninPage(),
                            ),
                          );
                        },
                      ),
                      appVerticalGap,
                    ],
                  ),
                ),
                Divider(
                  height: 1,
                  color: AppColor.grey300,
                ),
                appVerticalGap,
                InkWell(
                  onTap: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Navigation(),
                      ),
                    );
                  },
                  child: AppText(
                    text: "Continuer en tant qu'invité",
                    color: AppColor.white,
                    size: 12,
                  ),
                ),
                appVerticalGap,
              ],
            ),
          ),
        ),
        Positioned(
          top: 100,
          right: 20,
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const OnboardingPage(),
                ),
              );
            },
            child: Container(
              height: 40,
              padding: const EdgeInsets.only(
                left: 16.72,
                right: 14.4,
              ),
              alignment: Alignment.centerLeft,
              child: Icon(
                Icons.info_outline,
                color: AppColor.white,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
