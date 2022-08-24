import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_second/constrollers/controller.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final dataController = Get.put(Controller());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Getx First Day'),
      ),
      body: Center(
        child: Obx(
          () => Text("Clicks: ${dataController.count}"),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: dataController.increment,
        child: Icon(Icons.add),
      ),
    );
  }
}
