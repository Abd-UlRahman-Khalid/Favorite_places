import 'package:flutter/material.dart';

class NewPlace extends StatefulWidget {
  const NewPlace({super.key});

  @override
  State<NewPlace> createState() => _NewPlaceState();
}

class _NewPlaceState extends State<NewPlace> {
  var _enteredTitle ='';
  var _isSending=false;
  final _formKey=GlobalKey<FormState>();

  void _saveItem()  {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      setState(() {
        _isSending = true;
      });}}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Add New Place'),
        ),
        body: Padding(
          padding: EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: [
                TextFormField(
                  onSaved: (value) {
                    _enteredTitle = value!;
                  },
                  maxLength: 50,
                  decoration: const InputDecoration(label: Text('Title')),
                  validator: (value) {
                    if (value == null ||
                        value.isEmpty ||
                        value.trim().length <=
                            1 || //trim remove any space at begning & end
                        value.trim().length > 50) {
                      return 'Must be between 1 and 50 characters.';
                    }
                    return null;
                  },
                ),
                ElevatedButton.icon(
                  onPressed:  _isSending ? null : _saveItem,
                  icon: const Icon(Icons.add),
                  label:const  Text('Add Plaace'),
                )
              ],
            ),
          ),
        ));
  }
}
