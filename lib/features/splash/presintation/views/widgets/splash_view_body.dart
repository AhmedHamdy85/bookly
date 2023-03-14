import 'package:bookly/constuns.dart';
import 'package:bookly/core/utilty/assits.dart';
import 'package:bookly/features/home/presintation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:get/get.dart';

class SplashViweBody extends StatefulWidget {
  const SplashViweBody({super.key});

  @override
  State<SplashViweBody> createState() => _SplashViweBodyState();
}

class _SplashViweBodyState extends State<SplashViweBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  late Animation<Offset> slideAnimation;
  @override
  void initState() {
    super.initState();
    inatialSlidingAnimation();

    navigateTo();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(
            position: slideAnimation, child: Image.asset(AssitsData.logo)),
        SlideTransition(
          position: slideAnimation,
          child: const Text(
            'Reed Free Books',
            textAlign: TextAlign.center,
          ),
        )
      ],
    );
  }

  void navigateTo() {
    Future.delayed(const Duration(seconds: 6), () {
      Get.to(() => const HomeScreen(),
          transition: Transition.leftToRightWithFade,
          duration: transactionDuration);
    });
  }

  void inatialSlidingAnimation() {
    animationController =
        AnimationController(vsync: this, duration: const Duration(seconds: 4));
    slideAnimation = Tween<Offset>(begin: const Offset(0, 10), end: Offset.zero)
        .animate(animationController);
    animationController.forward();
    slideAnimation.addListener(() {
      setState(() {});
    });
  }
}
