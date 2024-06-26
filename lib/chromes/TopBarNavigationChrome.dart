
import 'package:flutter/material.dart';

class TopNavigationBarChrome extends StatefulWidget {

  final Widget? child;

  const TopNavigationBarChrome({super.key, this.child});

  @override
  _TopNavigationBarChromeState createState() => _TopNavigationBarChromeState();
}

class _TopNavigationBarChromeState extends State<TopNavigationBarChrome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Top Navigation Bar'),
        backgroundColor: Colors.blue,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: () {
              // Handle search button press
            },
          ),
          IconButton(
            icon: const Icon(Icons.more_vert),
            onPressed: () {
              // Handle more options button press
            },
          ),
        ],
      ),
      body: SafeArea(
        child: widget.child != null ? widget.child! : Container(),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        onTap: _onItemTapped,
        backgroundColor: Colors.blue,
      ),
    );
  }
}
