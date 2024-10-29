import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:lottie/lottie.dart';

import 'home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Controlled Lottie Animation'),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset(
              'assets/images/babygirl.json',
              controller: controller.animationController,
              height: 400,
            ),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFButton(
                  onPressed: controller.sit,
                  text: "Sit",
                  size: GFSize.MEDIUM,
                  color: Colors.blueGrey.shade700,
                ),
                const SizedBox(width: 10),
                GFButton(
                  onPressed: controller.wave,
                  text: "Wave",
                  size: GFSize.MEDIUM,
                  color: Colors.blueGrey.shade700,
                ),
                const SizedBox(width: 10),
                GFButton(
                  onPressed: controller.dance,
                  text: "Dance",
                  size: GFSize.MEDIUM,
                  color: Colors.blueGrey.shade700,
                ),
                const SizedBox(width: 10),
                GFButton(
                  onPressed: controller.run,
                  text: "Run",
                  size: GFSize.MEDIUM,
                  color: Colors.blueGrey.shade700,
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GFButton(
                  onPressed: controller.sleep,
                  text: "Sleep",
                  size: GFSize.MEDIUM,
                  color: Colors.blueGrey.shade700,
                ),
                const SizedBox(width: 10),
                GFButton(
                  onPressed: controller.walk,
                  text: "Walk",
                  size: GFSize.MEDIUM,
                  color: Colors.blueGrey.shade700,
                ),
                const SizedBox(width: 10),
                GFButton(
                  onPressed: controller.thumbUp,
                  text: "Thumb Up",
                  size: GFSize.MEDIUM,
                  color: Colors.blueGrey.shade700,
                ),
                const SizedBox(width: 10),
                GFButton(
                  onPressed: controller.talk,
                  text: "Talk",
                  size: GFSize.MEDIUM,
                  color: Colors.blueGrey.shade700,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
