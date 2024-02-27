import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_svg/flutter_svg.dart';
import 'package:lottie/lottie.dart';

class FloatButton extends StatelessWidget {
  const FloatButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
        bottom: 20,
        right: 0, // Adjust 50.0 as needed
        child: Builder(
          builder: (BuildContext context) {
            return FloatingActionButton(
              onPressed: () {
                Scaffold.of(context).openEndDrawer();
              },
              backgroundColor: Colors.transparent,
              child: Container(
                  height: 50,
                  width: 80,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: SizedBox(
                      height: 40,
                      width: 40,
                      child: Lottie.asset('assets/svg/gear.json',
                          width: 8, height: 8),
                    ),
                  )),
            );
          },
        ),
      ),
    ]);
  }
}
