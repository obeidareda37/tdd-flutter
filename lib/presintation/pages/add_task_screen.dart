import 'package:flutter/material.dart';
import 'package:tdd_flutter/presintation/widgets/text_field_widget.dart';

class AddTaskScreen extends StatefulWidget {
  const AddTaskScreen({Key? key}) : super(key: key);

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {
  TextEditingController? _todoTitleController;

  TextEditingController? _todoDescriptionController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _todoTitleController = TextEditingController();
    _todoDescriptionController = TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Task'),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFiledWidget(
              hint: 'Title',
              text: 'write Todo Title..',
              controller: _todoTitleController!,
            ),
            TextFiledWidget(
              hint: 'Description',
              text: 'write Todo Description..',
              controller: _todoDescriptionController!,
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () async {},
                child: const Text(
                  'Save',
                  style: TextStyle(color: Colors.white),
                ),
                style: ElevatedButton.styleFrom(
                  onPrimary: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
