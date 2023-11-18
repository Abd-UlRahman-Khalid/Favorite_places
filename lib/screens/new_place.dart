import 'package:favorite_place/providers/user_places.dart';
import 'package:favorite_place/wedgits/image_input.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class NewPlaceScreen extends ConsumerStatefulWidget {
  const NewPlaceScreen({super.key});

  @override
  ConsumerState<NewPlaceScreen> createState() => _NewPlaceState();
}

class _NewPlaceState extends ConsumerState<NewPlaceScreen> {
  final _titleController = TextEditingController();

  void _savePlace(){
    final enteredTitle=_titleController.text;
    
    if(enteredTitle.isEmpty){
      return;
    }

    ref.read(userPlacesProvider.notifier).addPlace(enteredTitle);
    Navigator.of(context).pop();
  }

  @override
  void dispose() {
    _titleController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Place'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              maxLength: 50,
              decoration: const InputDecoration(
                label: Text('Title'),
              ),
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                color: Theme.of(context).colorScheme.onBackground
              ),
              controller: _titleController,
            ),
            SizedBox(height: 16,),
            ImageInPut(),
            SizedBox(height: 16,),
            ElevatedButton.icon(
              onPressed: _savePlace,
              icon: const Icon(Icons.add),
              label: const Text('Add Item'),
            )
          ],
        ),
      ),
    );
  }
}
