import 'package:flutter/material.dart';

import '../config/custom_app_route.dart';

import '../widgets/alert_select_month_widget.dart';

// TODO: Add toggle theme: dark & light

class DrawerNavigationWidget extends StatelessWidget {
  const DrawerNavigationWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 37, 85, 104),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("images/1.png"),
              ),
            ),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 119, 186, 212),
                  borderRadius: BorderRadius.circular(2.0),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
                child: const Text(
                  "Expense Buddy",
                  style: TextStyle(
                    fontSize: 25.0,
                    letterSpacing: 1.2,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(
                  Icons.analytics,
                  color: Colors.black,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Ringkasan Pengeluaran",
                )
              ],
            ),
            onTap: () {
              Navigator.pushNamed(context, CustomAppRoute.summaryScreen);
            },
          ),
          ListTile(
            title: Row(
              children: const [
                Icon(
                  Icons.wysiwyg,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "Tutorial Aplikasi",
                )
              ],
            ),
            onTap: () =>
                Navigator.pushNamed(context, CustomAppRoute.tutorialScreen),
          ),
        ],
      ),
    );
  }
}
