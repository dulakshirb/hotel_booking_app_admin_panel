import 'package:flutter/material.dart';
import 'package:hotel_booking_admin_panel/screens/booking_screen.dart';
import 'package:hotel_booking_admin_panel/screens/hotel_screen.dart';
import 'package:hotel_booking_admin_panel/screens/notification_screen.dart';
import 'package:hotel_booking_admin_panel/widgets/side_bar_button.dart';

class MainLayout extends StatefulWidget {
  const MainLayout({super.key});

  @override
  State<MainLayout> createState() => _MainLayoutState();
}

class _MainLayoutState extends State<MainLayout> {
  int selectedIndex = 0;
  List<Widget> screens = const [
    HotelScreen(),
    BookingScreen(),
    NotificationScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        Flexible(
          flex: 1,
          fit: FlexFit.tight,
          child: Container(
            color: const Color(0xFF9c9d97),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 150,
                    decoration: BoxDecoration(
                      color: const Color(0xFF1d1c21),
                      borderRadius: BorderRadius.circular(4),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  SideBarButton(
                    onTap: () {
                      setState(() {
                        selectedIndex = 0;
                      });
                    },
                    buttonText: 'Hotels',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SideBarButton(
                    onTap: () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },
                    buttonText: 'Boookings',
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  SideBarButton(
                    onTap: () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },
                    buttonText: 'Notifications',
                  ),
                ],
              ),
            ),
          ),
        ),
        Flexible(
          flex: 4,
          fit: FlexFit.tight,
          child: Container(
            color: const Color(0xFFf9ffff),
            child: screens[selectedIndex],
          ),
        ),
      ],
    ));
  }
}
