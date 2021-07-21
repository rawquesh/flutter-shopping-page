// import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyNavBarController extends GetxService {
  // ignore: prefer_final_fields
  RxInt _index = 0.obs;
  RxBool showFab = false.obs;
  final Rx<ScrollController> scrollController = ScrollController().obs;

  int get index => _index.value;

  set index(int value) {

    _index.value = value;
  }

  Future<bool> willpopscope() async {

    return false;
  }

  @override
  void onInit() {
    scrollController.value.addListener(() {
      if (scrollController.value.position.pixels > 350) {
        showFab.value = true;
      } else {
        showFab.value = false;
      }
    });
    super.onInit();
  }
}
