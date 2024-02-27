import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:route_between_two_points/view/DashBoard/Widget/buoy_watch_circle.dart';
import 'package:route_between_two_points/view/DashBoard/Widget/headline.dart';
import 'package:route_between_two_points/view/Homepage/Appbar/appbar.dart';
import 'package:route_between_two_points/view/Homepage/Left_drawer/drawer_left.dart';
import 'package:route_between_two_points/view/Homepage/Right_drawer/Widget/float_button.dart';
import 'package:route_between_two_points/view/Homepage/Right_drawer/drawer_right.dart';
import 'package:route_between_two_points/view/Homepage/homepage.dart';

class DashBoardPage extends StatefulWidget {
  const DashBoardPage({super.key});

  @override
  State<DashBoardPage> createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  String? _selectedItem;

  List<dynamic> dataValue = [
    {
      'text': 'Specific Conductance',
      'value': '12006 mS/cm',
      'icon': 'assets/svg/specific_conductance.svg',
    },
    {
      'text': 'Salinity',
      'value': '6.93 PSU',
      'icon': 'assets/svg/salinity.svg',
    },
    {
      'text': 'pH',
      'value': '7.31',
      'icon': 'assets/svg/salinity.svg',
    },
    {
      'text': 'Dissolved Oxygen Saturation',
      'value': '85.5 %',
      'icon': 'assets/svg/salinity.svg',
    },
    {
      'text': 'Turbidity',
      'value': '7.28 NTU',
      'icon': 'assets/svg/salinity.svg',
    },
    {
      'text': 'Dissolved Oxygen',
      'value': '7.88 mg/L',
      'icon': 'assets/svg/salinity.svg',
    },
    {
      'text': 'tds',
      'value': '7.8 ppt',
      'icon': 'assets/svg/salinity.svg',
    },
    {
      'text': 'Chlorophyll',
      'value': '0.01 RFU',
      'icon': 'assets/svg/salinity.svg',
    },
    {
      'text': 'Oxidation Reduction Poential',
      'value': '6.93 PSU',
      'icon': 'assets/svg/salinity.svg',
    },
    {
      'text': 'External Voltage',
      'value': '13.3 V',
      'icon': 'assets/svg/salinity.svg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(context),
      drawer: const DrawerLeft(),
      endDrawer: const DrawerRight(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const FloatButton(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HeadLine(),
              const Text(
                'Dashboard',
                style: TextStyle(fontSize: 25),
              ),
              Row(
                children: [
                  InkWell(
                    onTap: () => Get.to(const HomePage()),
                    child: const Text(
                      'Home',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  Container(
                    height: 15,
                    width: 1,
                    color: Colors.black,
                  ),
                  const SizedBox(
                    width: 5,
                  ),
                  InkWell(
                    onTap: () => Get.to(() => const DashBoardPage()),
                    child: const Text(
                      'Dashboard',
                      style: TextStyle(fontSize: 17),
                    ),
                  ),
                ],
              ),
              const Row(
                children: [
                  Text(
                    'Last Updated : ',
                    style: TextStyle(
                      color: Colors.blue,
                    ),
                  ),
                  Text('12-02-2024 12:50:00')
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'WQ Selection',
                style: TextStyle(color: Colors.blue, fontSize: 30),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    height: 40.0,
                    width: 180.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey),
                    ),
                    child: DropdownButton<String>(
                      value: _selectedItem,
                      items: <String>['WQ 1', 'WQ 2'].map((String value) {
                        return DropdownMenuItem(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(
                          () {
                            _selectedItem = newValue;
                          },
                        );
                      },
                    ),
                  ),
                  Flexible(
                    child: Container(
                      height: 40,
                      width: 180,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.blue, width: 1),
                      ),
                      child: const Center(
                        child: Icon(
                          Icons.add,
                          color: Colors.blue,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 400,
                  width: 400,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    image: const DecorationImage(
                        image: AssetImage('assets/image/bg-image.jpg'),
                        fit: BoxFit.cover),
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Buoy Watch Circle',
                      style: TextStyle(
                        color: Colors.blue,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  WatchCirlce(),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Column(
                children: [
                  for (int i = 0; i < dataValue.length; i++)
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        padding: const EdgeInsets.only(top: 40),
                        height: 260,
                        width: 400,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.2),
                              offset: const Offset(0, 1),
                              blurRadius: 15,
                            ),
                          ],
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Column(
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                color: Colors.blue,
                                borderRadius: BorderRadius.circular(100),
                              ),
                              child: Center(
                                child: FittedBox(
                                  fit: BoxFit.contain,
                                  child: SvgPicture.asset(
                                    '${dataValue[i]['icon']}',
                                    // ignore: deprecated_member_use
                                    color: Colors.white,
                                    width: 60,
                                    height: 60,
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 12,
                            ),
                            Text(
                              dataValue[i]['value'].toString(),
                              style: const TextStyle(
                                fontSize: 22,
                              ),
                            ),
                            const SizedBox(
                              height: 18,
                            ),
                            Text(
                              dataValue[i]['text'].toString(),
                              style: const TextStyle(
                                fontSize: 22,
                                color: Colors.blue,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
