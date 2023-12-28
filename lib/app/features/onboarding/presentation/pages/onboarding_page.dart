import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';

import '../../../../core/assets/app_animations.dart';
import '../../../../core/shared/widgets/gradient_background_widget.dart';

import 'components/onboarding_item_component.dart';
import 'components/onboarding_page_controls_component.dart';

class OnboardingPage extends StatelessWidget {
  OnboardingPage({super.key});

  final PageController _pageController = PageController();
  final ValueNotifier<int> _pageIndex = ValueNotifier(0);
  final GetStorage _getStorage = GetStorage();

  final List listItems = [
    {
      'title': 'Registre Seus Habitos',
      'image': AppAnimations.scheduleAnimated,
      'decription':
          'Além de compreender a importância de criar hábitos, você precisa entender a importância que essas metas têm.',
    },
    {
      'title': 'Registre Seus Habitos',
      'image': AppAnimations.scheduleAnimated,
      'decription':
          'Além de compreender a importância de criar hábitos, você precisa entender a importância que essas metas têm.',
    },
    {
      'title': 'Registre Seus Habitos',
      'image': AppAnimations.scheduleAnimated,
      'decription':
          'Além de compreender a importância de criar hábitos, você precisa entender a importância que essas metas têm.',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const GradientBackgroundWidget(),
          PageView.builder(
            controller: _pageController,
            itemCount: listItems.length,
            onPageChanged: (index) {
              _pageIndex.value = index;
            },
            itemBuilder: (context, index) => const OnboardingItemComponent(),
          ),
          OnboardingPageControlsComponent(
            onPressedSkip: () {
              if (_pageIndex.value == listItems.length - 1) {
                _pageController.animateToPage(0, duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
                _pageIndex.value = 0;
              } else {
                _getStorage.write('skipOnboard', true);
                Get.toNamed('/auth');
              }
            },
            onPressedNext: () {
              if (_pageIndex.value == listItems.length - 1) {
                _getStorage.write('skipOnboard', true);
                Get.toNamed('/auth');              
              } else {
                _pageController.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.easeIn);
              }
            },
            pageController: _pageController,
            pageIndex: _pageIndex,
            listLength: listItems.length,
          ),
        ],
      ),
    );
  }
}
