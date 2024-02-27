import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_map/plugin_api.dart';
import 'package:get/get.dart';
import 'package:route_between_two_points/controller/map_style/map_controller.dart';
import 'package:route_between_two_points/model/Map/latlng_model.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    final MapStyle controller = Get.put(MapStyle());
    return FlutterMap(
      options: MapOptions(
        center: RoutePoints().routepoints[0],
        zoom: 9,
      ),
      // nonRotatedChildren: [
      //   AttributionWidget.defaultWidget(
      //       source: 'OpenStreetMap contributors', onSourceTapped: null),
      // ],
      children: [
        TileLayer(
          urlTemplate: controller.mapStyle,
          subdomains: const ['a', 'b', 'c'],

          // userAgentPackageName: 'com.example.app',
        ),
        MarkerLayer(
          markers: [
            Marker(
              point: RoutePoints().routepoints[0],
              builder: (ctx) => InkWell(
                child: Image.asset(
                  isActive[0]
                      ? 'assets/image/onlinebuoy.png'
                      : 'assets/image/offlinebuoy.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
            Marker(
              point: RoutePoints().routepoints[1],
              builder: (ctx) => InkWell(
                child: Image.asset(
                  isActive[1]
                      ? 'assets/image/onlinebuoy.png'
                      : 'assets/image/offlinebuoy.png',
                  width: 40,
                  height: 40,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
