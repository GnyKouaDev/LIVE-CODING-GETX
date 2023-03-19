import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:live_coding/features/randomusers/controllers/randomuser.controller.dart';
import 'package:live_coding/ui/screens/randomuser/widgets/randomuseritem.widget.dart';

class RandomUserView extends GetView<RandomUserController> {
  const RandomUserView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return controller.obx(
      (state) {
        return Column(
          children: state!
              .map(
                (element) => RandomuseritemWidget(
                  item: element,
                ),
              )
              .toList(),
        );
      },
      onError: (error) {
        return Center(
          child: Text(error!),
        );
      },
      onLoading: const Center(
        child: CircularProgressIndicator(),
      ),
      onEmpty: const Center(
        child: Text("Vide"),
      ),
    );
  }
}
