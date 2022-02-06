import 'package:flutter/material.dart';
import 'package:tdd_flutter/presintation/widgets/task_widget.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return TaskWidget();
      },
    );
  }
}
