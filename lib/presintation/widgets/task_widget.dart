import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdd_flutter/presintation/pages/edit_task_screen.dart';

class TaskWidget extends StatelessWidget {
  Color? color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: true ? color = Colors.blue[100] : color = Colors.red[100],
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Edit',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.delete,
                      color: Colors.red,
                    )),
                IconButton(
                    onPressed: () {
                      Get.to(() => EditTaskScreen());
                    },
                    icon: const Icon(
                      Icons.edit,
                      color: Colors.black45,
                    )),
                // Checkbox(value: true, onChanged: (value) async {}),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
