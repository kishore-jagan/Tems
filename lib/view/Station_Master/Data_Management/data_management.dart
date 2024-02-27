import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:route_between_two_points/view/Station_Master/Data_Management/Widgets/dataman_table.dart';

import '../../Homepage/Appbar/appbar.dart';
import '../../Homepage/Left_drawer/drawer_left.dart';
import '../../Homepage/Right_drawer/Widget/float_button.dart';
import '../../Homepage/Right_drawer/drawer_right.dart';
import '../../Homepage/homepage.dart';
import 'Widgets/dataman_drop.dart';

class DataManagement extends StatefulWidget {
  const DataManagement({super.key});

  @override
  State<DataManagement> createState() => _DataManagementState();
}

class _DataManagementState extends State<DataManagement> {
  final TextEditingController _searchController = TextEditingController();
  // final MultiSelectController _multiController = MultiSelectController();

  String _itemsSelected = '10 Items';
  List<String> _items = ['5 Items', '10 Items', '20 Items'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: bar(context),
      drawer: const DrawerLeft(),
      endDrawer: const DrawerRight(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      floatingActionButton: const FloatButton(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          height: 1000,
          width: 500,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(25.0),
            boxShadow: [
              BoxShadow(
                offset: const Offset(0, 2),
                color: Colors.grey.withOpacity(0.2),
                blurRadius: 6.0,
              ),
            ],
          ),
          child: ListView(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Text(
                      'Data Management',
                      style: TextStyle(fontSize: 25),
                    ),
                    Row(
                      children: <Widget>[
                        InkWell(
                          onTap: () => Get.to(() => const HomePage()),
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
                          onTap: () => Get.to(() => const DataManagement()),
                          child: const Text(
                            'Data Management',
                            style: TextStyle(fontSize: 17),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        // ElevatedButton(
                        //   style: ElevatedButton.styleFrom(
                        //       backgroundColor: Colors.lightBlue,
                        //       shape: RoundedRectangleBorder(
                        //           borderRadius: BorderRadius.circular(10))),
                        //   onPressed: () {},
                        //   child: Row(
                        //     children: <Widget>[
                        //       Icon(
                        //         Icons.dashboard,
                        //         color: Colors.white,
                        //       ),
                        //       SizedBox(
                        //         width: 5.0,
                        //       ),
                        //       Text(
                        //         'Data QA',
                        //         style: TextStyle(color: Colors.white, fontSize: 16),
                        //       ),
                        //     ],
                        //   ),
                        // ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.dashboard,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Data QA',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                  color: Colors.lightBlue,
                                  borderRadius: BorderRadius.circular(
                                    10.0,
                                  ),
                                ),
                                child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.dashboard,
                                    color: Colors.white,
                                  ),
                                  label: Text(
                                    'Upload',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border:
                                        Border.all(color: Colors.lightBlue)),
                                child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.file_upload_outlined,
                                    color: Colors.lightBlue,
                                  ),
                                  label: Text(
                                    'Upload',
                                    style: TextStyle(
                                        color: Colors.lightBlue, fontSize: 16),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 5.0,
                              ),
                              Container(
                                height: 40,
                                width: 150,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border:
                                        Border.all(color: Colors.lightBlue)),
                                child: TextButton.icon(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.add,
                                    color: Colors.lightBlue,
                                  ),
                                  label: Text(
                                    'Filter',
                                    style: TextStyle(
                                        color: Colors.lightBlue, fontSize: 16),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Water Quality',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.lightBlue,
                      ),
                    ),
                    // SizedBox(
                    //   height: 10,
                    // ),
                    // Container(
                    //   height: 2,
                    //   width: 60,
                    //   color: Colors.lightBlue,
                    //   child: Divider(),
                    // ),
                    Divider(),
                    Column(
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 50,
                            child: TextField(
                              controller: _searchController,
                              decoration: InputDecoration(
                                labelText: 'Search',
                                hintText: 'Search',
                                prefixIcon: Icon(Icons.search),
                                border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(25.0)),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: <Widget>[
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border:
                                        Border.all(color: Colors.lightBlue)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.edit,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5.0,
                              ),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border:
                                        Border.all(color: Colors.lightBlue)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.delete,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Spacer(),
                              Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(10.0),
                                    border:
                                        Border.all(color: Colors.lightBlue)),
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(
                                    Icons.file_download_outlined,
                                    color: Colors.lightBlue,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Flexible(
                                  child: DatamanageDrop(
                                      val: _itemsSelected, items: _items)),
                              SizedBox(
                                width: 5.0,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const DataManageTable()
            ],
          ),
        ),
      ),
    );
  }
}
