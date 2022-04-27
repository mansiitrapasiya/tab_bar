import 'package:flutter/material.dart';

class ContextPage extends StatefulWidget {
  const ContextPage({Key? key}) : super(key: key);

  @override
  State<ContextPage> createState() => _ContextPageState();
}

class _ContextPageState extends State<ContextPage> {
  List<String> contacts = ["person 1", "person 2", "person 3", "person 4"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          children: contacts
              .map((e) => ListTile(
                    title: Text(e),
                  ))
              .toList()),
    );
  }
}
