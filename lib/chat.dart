import 'package:flutter/material.dart';

class CameraPage extends StatefulWidget {
  CameraPage({Key? key}) : super(key: key);

  @override
  State<CameraPage> createState() => _CameraPageState();
}

class _CameraPageState extends State<CameraPage> {
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        itemBuilder: ((context, index) {
          return ListTile(
            title: Text("chat $index"),
          );
        }),
        separatorBuilder: (context, index) {
          return Container(
            color: Colors.blue,
            height: double.parse("${index + 1}"),
          );
        },
        itemCount: 10);
  }
}
