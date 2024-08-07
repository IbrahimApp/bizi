import 'package:bizi/pages/onboarding/welcome_page.dart';
import 'package:flutter/material.dart';
import 'package:bizi/components/constants/app_color.dart';
import 'package:bizi/components/constants/constants.dart';
import 'package:bizi/components/ui/app_button.dart';
import 'package:bizi/components/ui/app_large_text.dart';
import 'package:bizi/controllers/onboarding_controller.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  final controller = OnboardingController();

  int _currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (int index) {
            setState(() {
              _currentPageIndex = index;
            });
          },
          itemCount: controller.onboardingScreens.length,
          itemBuilder: (context, index) {
            return Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    controller.onboardingScreens[index].imageAsset,
                  ),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 40,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: _currentPageIndex + 1 ==
                                controller.onboardingScreens.length
                            ? size.height - 170
                            : size.height - 150,
                      ),
                      AppLargeText(
                        text: controller.onboardingScreens[index].subTitle,
                        color: AppColor.white,
                        size: 26,
                      ),
                    ],
                  ),
                ),
              ),
            );
          },
        ),
        Positioned(
          top: 100,
          right: 20,
          child: InkWell(
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const WelcomePage(),
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
                Icons.close,
                color: AppColor.white,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 20,
          child: Container(
            width: size.width,
            padding: EdgeInsets.symmetric(horizontal: size.width * 0.2),
            child: _currentPageIndex + 1 == controller.onboardingScreens.length
                ? SizedBox(
                    height: 40,
                    width: size.width * 0.7,
                    child: AppButton(
                      text: "Continuer",
                      color: AppColor.white,
                      textColor: AppColor.primaryDark,
                      tapEven: () {
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const WelcomePage(),
                          ),
                        );
                      },
                    ),
                  )
                : SizedBox(
                    height: 20,
                    width: size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        controller.onboardingScreens.length,
                        (indexDots) {
                          return buildDot(
                            indexDots: indexDots,
                            indexPage: _currentPageIndex,
                          );
                        },
                      ),
                    ),
                  ),
          ),
        ),
      ],
    );
  }
}

AnimatedContainer buildDot({int? indexDots, int? indexPage}) {
  return AnimatedContainer(
    duration: kAnimatedDuration,
    margin: const EdgeInsets.only(right: 15),
    height: 10,
    width: indexPage == indexDots ? 20 : 10,
    decoration: BoxDecoration(
      color: indexPage == indexDots ? AppColor.white : AppColor.grey,
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
