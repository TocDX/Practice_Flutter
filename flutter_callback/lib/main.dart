import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(
    const MaterialApp(
      home: HomeWidget(),
    ),
  );
}

class HomeWidget extends StatelessWidget {
  const HomeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return TestWidget();
  }
}

class TestWidget extends StatefulWidget {
  const TestWidget({super.key});

  @override
  State<TestWidget> createState() => _TestWidgetState();
}

class _TestWidgetState extends State<TestWidget> {
  int value = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'Count : $value',
          style: TextStyle(fontSize: 30),
        ),
        TestButton(addCounter),
      ],
    );
  }
  // callback
void addCounter(int addValue) => setState(() => value = addValue + value);
}

class TestButton extends StatelessWidget {
  const TestButton(this.callback,{super.key});
//void callback 반환값이 없는 콜백을 넘겨줄 때
  final Function(int) callback;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
      width: double.infinity,
        child: InkWell(
          onTap: () => callback.call(1),
          onDoubleTap: () => callback.call(5),
          onLongPress: () => callback.call(10),
          child: Center(
              child: Container(
                  padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                  decoration: BoxDecoration(border: Border.all()),
                  child: const Text(
                    'Up Counter',
                    style: TextStyle(fontSize: 24),
                  ))),
        ),
    );
  }
}
