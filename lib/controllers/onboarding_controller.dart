import 'package:bizi/models/onboarding_models.dart';

class OnboardingController {
  List<OnboardingInfo> onboardingScreens = [
    OnboardingInfo(
      id: 1,
      title: 'Bizi',
      subTitle: "Qu'avez-vous prévu ce soir ? Et ce weekend ?",
      description: '',
      imageAsset: 'assets/images/image1.png',
    ),
    OnboardingInfo(
      id: 2,
      title: 'Nos prix',
      subTitle: "Nous avons quelque chose à vous proposer !",
      description: '',
      imageAsset: 'assets/images/image2.png',
    ),
    OnboardingInfo(
      id: 3,
      title: 'Nos offres',
      subTitle: "Rendez-vous dans nos salons privés !",
      description: '',
      imageAsset: 'assets/images/image3.png',
    ),
    OnboardingInfo(
      id: 4,
      title: 'Confidentiels',
      subTitle: "Anonymat garantis. Rejoignez-nous !",
      description: '',
      imageAsset: 'assets/images/image4.png',
    ),
  ];

  get currentPageIndex => null;
}
