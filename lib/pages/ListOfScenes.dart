// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:smart1/pages/Scene.dart';
import 'package:get/get.dart';

class ListOfScens extends StatelessWidget {
  ListOfScens({super.key, this.myScenes});
  Scene? myScenes;
  // late List<Scene> list;
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Expanded(
      child: ListView.builder(
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text(myScenes!.obj),
          );
        }),
      ),
    )
        // floatingActionButton:,
        );
  }
}

class list extends GetxController {
  Rx<List<Scene>> Scnens = Rx<List<Scene>>([]);
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  addScene(Scene s) {
    Scnens.value.add(s);
  }

  removeScene(int s) {
    Scnens.value.removeAt(s);
  }
}
