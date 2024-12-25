import 'package:expenz_v96/data/onboarding_data.dart';
import 'package:expenz_v96/screens/onboarding/frontpage.dart';
import 'package:expenz_v96/screens/onboarding/shared_onboarding_screen.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Stack(
              children: [
                //onboarding screen
                PageView(
                  children: [
                    const Frontpage(),
                    SharedOnboardingScreen(
                      title: OnboardingData.OnboardingDataList[0].title,
                      imagePath: OnboardingData.OnboardingDataList[0].imagePath,
                      description:
                          OnboardingData.OnboardingDataList[0].description,
                    ),
                    SharedOnboardingScreen(
                      title: OnboardingData.OnboardingDataList[1].title,
                      imagePath: OnboardingData.OnboardingDataList[1].imagePath,
                      description:
                          OnboardingData.OnboardingDataList[1].description,
                    ),
                    SharedOnboardingScreen(
                      title: OnboardingData.OnboardingDataList[2].title,
                      imagePath: OnboardingData.OnboardingDataList[2].imagePath,
                      description:
                          OnboardingData.OnboardingDataList[2].description,
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
