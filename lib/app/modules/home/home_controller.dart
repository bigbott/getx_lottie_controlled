import 'package:flutter/animation.dart';
import 'package:get/get.dart';

class HomeController extends GetxController with GetSingleTickerProviderStateMixin {
  late AnimationController animationController;

  @override
  void onInit() {
    super.onInit();
    animationController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 18), 
    );

    animationController.forward();
  }

  void loop(double startValue, double endValue) {

     animationController.repeat(
                  min: startValue,
                  max: endValue,
                  //reverse: true,
                  period: animationController.duration! * (endValue - startValue),
                );
  }

  void wave() {
    loop(0.0, 0.12); 
  }

  void dance() {
    loop(0.13, 0.21); 
  }

  void sit() {
    loop(0.26, 0.32); 
  }

  void run() {
    loop(0.38, 0.46); 
  }

  void sleep() {
    loop(0.55, 0.66); 
  }

  void walk() {
    loop(0.68, 0.77); 
  }

  void thumbUp() {
    loop(0.80, 0.87); 
  }

  void talk() {
    loop(0.90, 1.0); 
  }


  @override
  void onClose() {
    animationController.dispose();
    super.onClose();
  }
}