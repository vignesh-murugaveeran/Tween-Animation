import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tween_animation_builder_app/Controller/counter_controller.dart';

///Reusable tweenAnimationBuilder Widget

class AnimatedCounterText extends StatelessWidget {
  final int value;
  AnimatedCounterText({super.key, required this.value});

  final CounterController _counterController = Get.find<CounterController>();

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder<double>(
      tween: Tween(begin: 0, end: _counterController.count.value.toDouble()),
      duration: const Duration(microseconds: 10),
      builder: (context, animatiionValue, child) {
        return Center(
          child: Text(
            animatiionValue.toInt().toString(),
            style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
          ),
        );
      },
    );
  }
}
