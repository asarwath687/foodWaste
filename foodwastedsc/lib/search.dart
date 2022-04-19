import 'dart:math';

import 'package:flutter/material.dart';
import 'package:foodwastedsc/profilePage.dart';
import 'package:foodwastedsc/signup.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import 'editmenu.dart';
import 'order.dart';

class SearchMap extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Google Maps',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: MapScreen(),
    );
  }
}

class MapScreen extends StatefulWidget {
  @override
  _MapScreenState createState() => _MapScreenState();
}

class _MapScreenState extends State<MapScreen> {
  late GoogleMapController mapController; //controller for Google map
  final Set<Marker> markers = new Set(); //markers for google map
  static const LatLng showLocation = const LatLng(36.9741, -122.0308);

  static const _initialCameraPosition = CameraPosition(
    target: showLocation,
    zoom: 14.5,
  ); //CameraPosition

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        GoogleMap(
          myLocationButtonEnabled: false,
          zoomControlsEnabled: false,
          initialCameraPosition: _initialCameraPosition,

          markers: getmarkers(), //markers to show on map
          mapType: MapType.normal, //map type
          onMapCreated: (controller) {
            //method called when map is created
            setState(() {
              mapController = controller;
            });
          },
        ),
        Positioned(
          top: 50,
          right: 50,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => SignUpPageWidget()));
              },
              child: Text("Create Profile")),
        ),
        Positioned(
          top: 50,
          left: 50,
          child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => editmenu()));
              },
              child: Text("Edit Profile")),
        ),
      ], //
    );
  }

  //making markers :)
  Set<Marker> getmarkers() {
    //markers to place on map
    setState(() {
      markers.add(Marker(
        //add first marker
        markerId: MarkerId(showLocation.toString()),
        position:
            LatLng(36.97634868399694, -122.02688761806836), //position of marker
        infoWindow: InfoWindow(
          //popup info
          title: 'Poke House',
          onTap: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => profilePage()));
          },
          //snippet: 'My Custom Subtitle',
        ),
        icon: BitmapDescriptor.defaultMarker, //Icon for Marker
      ));
    });
    return markers;

    // return Scaffold(

    // body: GoogleMap(
    //       myLocationButtonEnabled: false,
    //       zoomControlsEnabled: false,
    //       initialCameraPosition: _initialCameraPosition,

    //       markers: getmarkers(), //markers to show on map
    //       mapType: MapType.normal, //map type
    //       onMapCreated: (controller) {
    //         //method called when map is created
    //         setState(() {
    //           mapController = controller;
    //         });
    //       },
    //     ), //
    //   );
    // }

    // //making markers :)
    // Set<Marker> getmarkers() {
    //   //markers to place on map
    //   setState(() {
    //     markers.add(Marker(
    //       //add first marker
    //       markerId: MarkerId(showLocation.toString()),
    //       position:
    //           LatLng(36.97634868399694, -122.02688761806836), //position of marker
    //       infoWindow: InfoWindow(
    //         //popup info
    //         title: 'Poke House',
    //         //snippet: 'My Custom Subtitle',
    //       ),
    //       icon: BitmapDescriptor.defaultMarker, //Icon for Marker
    //     ));
    //   });
    //   return markers;
    //}
  }
}
