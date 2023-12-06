import 'dart:io';
import 'package:uuid/uuid.dart';


const uuid=Uuid();

class PlaceLocation{
  const PlaceLocation({this.latitude,this.address,this.longitude});
  final latitude;
  final longitude;
  final address;
}

class Place {
  Place({required this.title,required this.image,
  required this.location
  }):id=uuid.v4();

  final String id;
  final String title;
  final File image;
  final PlaceLocation location;
}