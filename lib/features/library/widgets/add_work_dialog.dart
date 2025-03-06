import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AddWorkDialog extends StatefulWidget {
  const AddWorkDialog({super.key});

  @override
  State<AddWorkDialog> createState() => _AddWorkDialogState();
}

class _AddWorkDialogState extends State<AddWorkDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Column(
        children: <Widget>[
          Text('Add Work'),
          TextField(decoration: InputDecoration(hintText: 'Title')),
          TextField(decoration: InputDecoration(hintText: 'Author')),
          TextField(decoration: InputDecoration(hintText: 'Description')),
          TextField(decoration: InputDecoration(hintText: 'Tags')),
          TextField(decoration: InputDecoration(hintText: 'URL')),
          ElevatedButton(onPressed: () {}, child: const Text('Add')),
        ],
      ),
    );
  }
}
