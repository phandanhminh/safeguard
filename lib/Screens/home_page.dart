import 'package:flutter/material.dart';
import 'notification_screen.dart';
import 'weekly_timetable_screen.dart';
import 'shift_history_screen.dart';
import 'information_screen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Welcome back, User!',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          Text(
            'Your Dashboard:',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
          ),
          SizedBox(height: 10),

          // Sử dụng Wrap để tránh lỗi tràn màn hình
          Wrap(
            spacing: 10,
            runSpacing: 10,
            alignment: WrapAlignment.center,
            children: [
              buildQuickActionCard(Icons.notifications, 'Notifications', context, NotificationScreen()),
              buildQuickActionCard(Icons.calendar_today, 'Weekly Timetable', context, WeeklyTimetableScreen()),
              buildQuickActionCard(Icons.history, 'Shift History', context, ShiftHistoryScreen()),
              buildQuickActionCard(Icons.info, 'Information', context, InformationScreen()),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildQuickActionCard(IconData icon, String label, BuildContext context, Widget page) {
    return InkWell(
      onTap: () => Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => page),
      ),
      child: Card(
        elevation: 5,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.4,
          height: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(icon, size: 30, color: Colors.blue),
              SizedBox(height: 5),
              Text(
                label,
                style: TextStyle(fontSize: 14),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
