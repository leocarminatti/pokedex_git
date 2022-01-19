import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teste/test_controller.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;
  final String name;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final TextEditingController textEditingController = TextEditingController();
  late TestController controller;

  @override
  void didChangeDependencies() {
    controller = context.read<TestController>();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Consumer<TestController>(builder: (context, value, _) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: value.color1,
                  );
                }),
                Consumer<TestController>(builder: (context, value, _) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: value.color2,
                  );
                }),
              ],
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Consumer<TestController>(builder: (context, value, _) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: value.color3,
                  );
                }),
                Consumer<TestController>(builder: (context, value, _) {
                  return Container(
                    height: 100,
                    width: 100,
                    color: value.color4,
                  );
                }),
              ],
            ),
          ],
        ),
      ),
      persistentFooterButtons: [
        Row(
          children: [
            FloatingActionButton(
              backgroundColor: Colors.red,
              onPressed: () => controller.setColor(
                Colors.red,
                int.parse(
                  textEditingController.text,
                ),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.blue,
              onPressed: () => controller.setColor(
                Colors.blue,
                int.parse(
                  textEditingController.text,
                ),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.green,
              onPressed: () => controller.setColor(
                Colors.green,
                int.parse(
                  textEditingController.text,
                ),
              ),
            ),
            FloatingActionButton(
              backgroundColor: Colors.yellow,
              onPressed: () => controller.setColor(
                Colors.yellow,
                int.parse(
                  textEditingController.text,
                ),
              ),
            ),
            const SizedBox(width: 10),
            Expanded(
              child: TextFormField(
                controller: textEditingController,
              ),
            ),
          ],
        )
      ],
    );
  }
}
