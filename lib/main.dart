import 'package:demo_adaptive_ui_1/pages/PlainListViewPage.dart';
import 'package:demo_adaptive_ui_1/pages/SafeAreaGridTopBarViewPage.dart';
import 'package:demo_adaptive_ui_1/pages/SafeAreaGridViewPage.dart';
import 'package:demo_adaptive_ui_1/pages/SafeAreaListTopBarViewPage.dart';
import 'package:demo_adaptive_ui_1/pages/SafeAreaListViewPage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Menu Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MenuPage(),
    );
  }
}

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Menu'),
      ),
      body: ListView(
        children: [
          ListTile(
            title: Text('PlainListViewPage'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => PlainListViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('SafeAreaListViewPage'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SafeAreaListViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('SafeAreaGridViewPage'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SafeAreaGridViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('SafeAreaListTopBarViewPage'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SafeAreaListTopBarViewPage()),
              );
            },
          ),
          ListTile(
            title: Text('SafeAreaGridTopBarViewPage'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SafeAreaGridTopBarViewPage()),
              );
            },
          ),
        ],
      ),
    );
  }
}