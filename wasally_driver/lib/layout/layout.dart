import 'package:flutter/material.dart';
import 'package:wasaalydriver/screens/delivery_home.dart';
import 'package:wasaalydriver/screens/history.dart';
import 'package:wasaalydriver/screens/setting.dart';

class LayoutScreen extends StatefulWidget {
  final bool isDriver;

  LayoutScreen(this.isDriver);

  @override
  State<LayoutScreen> createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  int currentIndex = 0;

  List<BottomNavigationBarItem>? bottomsNavBar;

  List<Widget>? screens;

  @override
  void initState() {
    super.initState();

    bottomsNavBar = [
      const BottomNavigationBarItem(
        icon: Icon(Icons.square_outlined),
        label: "Orders",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.history),
        label: "history",
      ),
      const BottomNavigationBarItem(
        icon: Icon(Icons.settings),
        label: "Setting",
      ),
    ];

    screens = [
      DeliveryHome(),
      history(),
      SettingScreen(),
    ];
  }

  void changeBottomScreen(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: bottomsNavBar!,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (value) {
          changeBottomScreen(value);
        },
      ),
      body: screens?[currentIndex],
    );
  }
}
