import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'home_page.dart';
import 'profile_screen.dart';
import 'report_screen.dart';
import 'schedule_screen.dart';
import 'notification_screen.dart';
import 'weekly_timetable_screen.dart';
import 'shift_history_screen.dart';
import 'information_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // Danh sách các màn hình
  static final List<Widget> _screens = [
    HomePage(),
    ScheduleScreen(),
    NotificationScreen(),
    ReportScreen(),
    ProfileScreen(),
    WeeklyTimetableScreen(),
    ShiftHistoryScreen(),
    InformationScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Safeguard Mobile"),
        centerTitle: true,
        leading: BackButton(),
      ),
      body: _screens[_selectedIndex], // Hiển thị màn hình tương ứng
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            buildNavBarItem(CupertinoIcons.home, 'Home', 0),
            buildNavBarItem(CupertinoIcons.calendar, 'Schedule', 1),
            buildNavBarItem(CupertinoIcons.bell, 'Notifications', 2),
            buildNavBarItem(CupertinoIcons.doc_checkmark_fill, 'Report', 3),
            buildNavBarItem(CupertinoIcons.profile_circled, 'Profile', 4),
          ],
        ),
      ),
      floatingActionButton: ClipOval(
        child: Material(
          color: Colors.blue,
          elevation: 10,
          child: InkWell(
            onTap: () => _onItemTapped(5), // Chuyển đến WeeklyTimetableScreen
            child: SizedBox(
              width: 70,
              height: 70,
              child: Icon(
                CupertinoIcons.clock_fill,
                color: Colors.white,
                size: 40,
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }

  Widget buildNavBarItem(IconData icon, String label, int index) {
    return InkWell(
      onTap: () => _onItemTapped(index),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            icon,
            color: _selectedIndex == index ? Colors.blue : Colors.grey,
          ),
          Text(
            label,
            style: TextStyle(
              color: _selectedIndex == index ? Colors.blue : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
