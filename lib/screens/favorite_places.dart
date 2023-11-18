import 'package:favorite_place/screens/new_place.dart';
import 'package:flutter/material.dart';
import 'package:favorite_place/wedgits/places.dart';

class FavoritePlaces extends StatefulWidget{
  const FavoritePlaces({super.key});

  @override
  State<FavoritePlaces> createState() => _FavoritePlacesState();
}

class _FavoritePlacesState extends State<FavoritePlaces> {
  
  void _addItem()  {
    final newItem =  Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => NewPlace(),
      ),
    );}

  @override
  Widget build(BuildContext context) {
    
    return  Scaffold(
          appBar: AppBar(
            title: Text('Your Places'),
            actions: [
              IconButton(onPressed: _addItem, icon: const Icon(Icons.add))
            ],
          ),
          body:const Places(places: [],)
        );
  }
}