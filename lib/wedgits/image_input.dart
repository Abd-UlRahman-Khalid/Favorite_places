import 'package:flutter/material.dart';

class ImageInPut extends StatefulWidget {
  const ImageInPut({super.key});

  @override
  State<ImageInPut> createState() => _ImageInPutState();
}

class _ImageInPutState extends State<ImageInPut> {

  void _tackPicture(){

  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: double.infinity,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        border: Border.all(width: 1,
        color: Theme.of(context).colorScheme.primary.withOpacity(0.5))
      ),
      child: TextButton.icon(
        onPressed: _tackPicture,
        icon: const Icon(Icons.camera),
        label: const Text('Take A Picture'),
      ),
    );
  }
}
