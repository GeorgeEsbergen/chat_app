import 'package:chat_app/features/chat/allchats.dart';
import 'package:chat_app/features/chat/chat.dart';
import 'package:chat_app/features/dashboard/dash.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class bottomNavBarScreen extends StatefulWidget {
  static const routeName = 'navBarScreen';

  const bottomNavBarScreen({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _bottomNavBarScreenState createState() => _bottomNavBarScreenState();
}

// ignore: camel_case_types
class _bottomNavBarScreenState extends State<bottomNavBarScreen> {
  final List pages = <Widget>[
    const DashBoard(),
    const DashBoard(),
    const AllChats(),
    ChatWidget(),
    ChatWidget(),
  ];

  int selectedItem = 0;

  void selectedPage(int val) {
    setState(() {
      selectedItem = val;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedItem],
      bottomNavigationBar: BottomNavigationBar(
        onTap: selectedPage,
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        currentIndex: selectedItem,
        items: const [
          BottomNavigationBarItem(
              label: "DashBoard",
              icon: Icon(Icons.dashboard_customize_outlined)),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_on_outlined),
            label: "loacation",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            label: "Chat",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_none_outlined),
            label: "Notification",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings_outlined),
            label: "Setting",
          ),
        ],
      ),
    );
  }
}
