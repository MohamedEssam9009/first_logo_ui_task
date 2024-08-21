import 'package:flutter/material.dart';

class AnimatedProductImage extends StatefulWidget {
  const AnimatedProductImage({super.key});

  @override
  State<AnimatedProductImage> createState() => _AnimatedProductImageState();
}

class _AnimatedProductImageState extends State<AnimatedProductImage>
    with SingleTickerProviderStateMixin {
  late AnimationController animationController;
  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
        vsync: this,
        duration: const Duration(seconds: 3),
        reverseDuration: const Duration(milliseconds: 2300))
      ..addStatusListener(
        (AnimationStatus status) {
          if (status == AnimationStatus.completed) {
            animationController.reverse();
          } else if (status == AnimationStatus.dismissed) {
            animationController.stop();
          }
        },
      );
    animationController.forward();
  }

  @override
  void dispose() {
    super.dispose();
    animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.5,
      child: SlideTransition(
        position: Tween<Offset>(
                begin: const Offset(0, -0.1), end: const Offset(0.0, 0.24))
            .animate(animationController),
        child: Image.asset('assets/images/chair.png'),
      ),
    );
  }
}
