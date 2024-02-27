import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:route_between_two_points/model/Drawerleft_model/drawerleft_model.dart';
import 'package:route_between_two_points/view/DashBoard/dashboard.dart';
import 'package:route_between_two_points/view/Statistics/statistics.dart';

class DrawerLeft extends StatelessWidget {
  const DrawerLeft({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.blue,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/logo-1.png'),
                    fit: BoxFit.cover),
              ),
            ),
            const Text(
              'TEMS',
              style: TextStyle(
                fontSize: 36,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              height: 80,
              width: 80,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/admin.png'),
                    fit: BoxFit.cover),
              ),
            ),
            const Text(
              'Admin',
              style: TextStyle(
                color: Color.fromRGBO(255, 255, 255, 1),
                fontSize: 20,
              ),
            ),
            const Text(
              'ADMINISTRATOR',
              style: TextStyle(color: Colors.white),
            ),
            const SizedBox(
              height: 10,
            ),
            const Icon(Icons.notifications_outlined, color: Colors.white),
            const SizedBox(
              height: 20,
            ),
            IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const DashBoardPage()),
                );
              },
              icon: const Icon(Icons.access_alarm_rounded),
            ),
            Expanded(
              child: ListView(
                children: [
                  DrawerLeftModel(
                    ontap: () {},
                    title: 'Home',
                    icon: SvgPicture.asset(
                      'assets/svg/dashboard.svg',
                      // ignore: deprecated_member_use
                      color: Colors.white,
                    ),
                  ),
                  DrawerLeftModel(
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DashBoardPage()));
                    },
                    title: 'Dashboard',
                    icon: SvgPicture.asset(
                      'assets/svg/dashboard.svg',
                      // ignore: deprecated_member_use
                      color: Colors.white,
                    ),
                  ),
                  DrawerLeftModel(
                    ontap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => const DashBoardPage()));
                    },
                    title: 'Reports',
                    icon: SvgPicture.asset(
                      'assets/svg/reports.svg',
                      // ignore: deprecated_member_use
                      color: Colors.white,
                    ),
                  ),
                  DrawerLeftModel(
                    ontap: () {
                      Get.to(() => const StatisticsPage());
                    },
                    title: 'Statistics',
                    icon: SvgPicture.asset(
                      'assets/svg/statistics.svg',
                      // ignore: deprecated_member_use
                      color: Colors.white,
                    ),
                  ),
                  DrawerLeftExpand1(
                    maintitle: 'Station Master',
                    icon: SvgPicture.asset(
                      'assets/svg/station_master.svg',
                      // ignore: deprecated_member_use
                      color: Colors.white,
                    ),
                  ),
                  DrawerLeftExpand2(
                    maintitle: 'Admin Center',
                    icon: SvgPicture.asset(
                      'assets/svg/admin_center.svg',
                      // ignore: deprecated_member_use
                      color: Colors.white,
                      width: 24,
                      height: 24,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
