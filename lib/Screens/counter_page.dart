import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tween_animation_builder_app/Animations/animated_counter_text.dart';
import 'package:tween_animation_builder_app/Controller/counter_controller.dart';

class CounterPage extends StatelessWidget {
  CounterPage({super.key});

  final CounterController _counterController = Get.put(CounterController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Tween AnimationBuilder"),
        centerTitle: true,
        backgroundColor: Colors.amberAccent,
      ),
      body: Obx(() {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("With tweenAnimationBuilder"),
            const SizedBox(height: 5),
            AnimatedCounterText(value: _counterController.count.value),
            const SizedBox(height: 50),
            const Text("Without tweenAnimationBuilder"),
            const SizedBox(height: 5),
            Text(
              _counterController.count.value.toString(),
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ],
        );
      }),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            backgroundColor: Colors.amberAccent,
            onPressed: () {
              _counterController.increament();
            },
            child: const Icon(Icons.add),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            backgroundColor: Colors.amberAccent,
            onPressed: () {
              _counterController.decreament();
            },
            child: const Icon(Icons.remove),
          ),
          const SizedBox(height: 20),
          FloatingActionButton(
            backgroundColor: Colors.amberAccent,
            onPressed: () {
              _counterController.count.value = 0;
            },
            child: const Icon(Icons.refresh),
          ),
        ],
      ),
    );
  }
}
