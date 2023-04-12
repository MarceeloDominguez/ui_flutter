import 'package:flutter/material.dart';
import 'package:ui_app/views/account_view.dart';
import 'package:ui_app/views/favorite_view.dart';
import 'package:ui_app/views/home_view.dart';
import 'package:ui_app/views/settings_view.dart';

class BottomFAB extends StatefulWidget {
  const BottomFAB({super.key});

  @override
  State<BottomFAB> createState() => _BottomFABState();
}

class _BottomFABState extends State<BottomFAB> {
  final PageController _myPage = PageController(initialPage: 0);

  int _selectedIndex = 0;

  void onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
      _myPage.jumpToPage(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: PageView(
        onPageChanged: (int int) {
          print('Page change to index $int');
        },
        controller: _myPage,
        children: const [
          HomeView(),
          FavoriteView(),
          AccountView(),
          SettingsView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        foregroundColor: Colors.red,
        backgroundColor: Colors.green,
        elevation: 0,
        //mini: true,
        child: const Icon(Icons.add),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(),
        notchMargin: 5,
        color: Colors.red,
        elevation: 0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () {
                setState(() {
                  onTabTapped(0);
                });
              },
              icon: Icon(
                Icons.home_filled,
                color: _selectedIndex == 0
                    ? Colors.amberAccent
                    : Colors.blueAccent,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  onTabTapped(1);
                });
              },
              icon: Icon(
                Icons.favorite,
                color: _selectedIndex == 1
                    ? Colors.amberAccent
                    : Colors.blueAccent,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  onTabTapped(2);
                });
              },
              icon: Icon(
                Icons.person,
                color: _selectedIndex == 2
                    ? Colors.amberAccent
                    : Colors.blueAccent,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  onTabTapped(3);
                });
              },
              icon: Icon(
                Icons.settings,
                color: _selectedIndex == 3
                    ? Colors.amberAccent
                    : Colors.blueAccent,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
