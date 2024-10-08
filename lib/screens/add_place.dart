import 'package:flutter/material.dart';

class AddPlace extends StatefulWidget {
  const AddPlace({super.key});

  @override
  State<AddPlace> createState() => _AddPlaceState();
}

class _AddPlaceState extends State<AddPlace> {
  final _titleController = TextEditingController();

  @override
  void dispose() {
    // TODO: implement dispose
    _titleController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Add New Place'),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                // label: Text('Title'),
                labelText: 'Title',
              ),
              controller: _titleController,
            ),

            const SizedBox(height: 16,),
          ],
        ),
      ), 
    );
  }
}