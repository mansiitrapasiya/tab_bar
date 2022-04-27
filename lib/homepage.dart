import 'package:flutter/material.dart';
import 'package:tab_bar/chat.dart';
import 'package:tab_bar/contact.dart';

class HomePage extends StatefulWidget {
  HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  List<String> tabs = ["chat", "context"];
  List<Widget> tabscreen = [
    CameraPage(),
    ContextPage(),
  ];
  TabController? _tabcontroller;
  final int _initialindex = 1;
  @override
  void initState() {
    _tabcontroller = TabController(length: tabs.length, vsync: this);
    _tabcontroller?.animateTo(_initialindex);
    _tabcontroller?.addListener(() {
      print(_tabcontroller?.index);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: _initialindex,
      length: tabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.menu),
            iconSize: 25,
            color: Colors.white,
          ),
          title: const Text("TabBar"),
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.search)),
          ],
          bottom: TabBar(
            tabs: const [
              Tab(
                text: "chat",
              ),
              Tab(
                text: "context",
              ),
            ],
            controller: _tabcontroller,
          ),
        ),
        body: TabBarView(
          controller: _tabcontroller,
          children: tabscreen,
          physics: const BouncingScrollPhysics(),
        ),
      ),
    );
  }
}
