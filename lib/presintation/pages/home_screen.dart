import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tdd_flutter/presintation/pages/add_task_screen.dart';
import 'package:tdd_flutter/presintation/widgets/list_view_widget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen>
    with SingleTickerProviderStateMixin {
  TabController? controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blue,
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
        onPressed: () {
          Get.to(() => AddTaskScreen());
        },
      ),
      appBar: AppBar(
        title: const Text('Tasks'),
        bottom: TabBar(
          controller: controller,
          indicatorColor: Colors.red,
          tabs: const [
            Tab(
              child: Text(
                'All Tasks',
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                'Complete Tasks',
                textAlign: TextAlign.center,
              ),
            ),
            Tab(
              child: Text(
                'UnCompleteTasks',
                style: TextStyle(fontSize: 12),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: controller,
        children: [
          ListViewWidget(),
          ListViewWidget(),
          ListViewWidget(),
        ],
      ),
    );
  }
}
