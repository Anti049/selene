import 'dart:math';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/common/widgets/common_dialog.dart';
import 'package:selene/domain/entities/author_entity.dart';
import 'package:selene/domain/entities/tag_entity.dart';
import 'package:selene/domain/entities/work_entity.dart';

class AddWorkDialog extends StatefulWidget {
  const AddWorkDialog({super.key});

  @override
  State<AddWorkDialog> createState() => _AddWorkDialogState();
}

class _AddWorkDialogState extends State<AddWorkDialog> {
  final _formKey = GlobalKey<FormState>();
  final _urlController = TextEditingController();
  // Add controllers for other fields as needed (tags, chapters, status etc.)

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      // TODO: Load the URL and create a WorkEntity from it
      final url = _urlController.text.trim();

      // Example: Create a WorkEntity with a random title for demonstration purposes
      final workEntity = WorkEntity(
        title: 'Work Title ${Random().nextInt(1000)}', // Placeholder title
        url: url,
        authors: List<AuthorEntity>.generate(
          Random().nextInt(9) + 1,
          (index) => AuthorEntity(
            name: 'Author ${index + 1}', // Placeholder author names
            url: 'http://example.com/author${index + 1}',
          ),
        ),
        tags: List<TagEntity>.generate(
          Random().nextInt(9) + 1, // Random number of tags
          (index) => TagEntity(
            name: 'Tag ${index + 1}', // Placeholder tag names
            type:
                index % 2 == 0
                    ? TagType.character
                    : TagType.fandom, // Random type
          ),
        ),
        description: 'This is a placeholder description for the work.',
        wordCount: Random().nextInt(19) + 1, // Random word count for demo
      );

      // Pop the dialog and return the new WorkEntity
      Navigator.of(context).pop(workEntity);
    }
  }

  @override
  Widget build(BuildContext context) {
    // Use AlertDialog for standard dialog appearance
    return CommonDialog(
      title: 'Add Work',
      subtitle: 'Enter the URL of the work you want to add',
      icon: Symbols.add_circle, // Optional icon
      onSubmit: _submitForm,
      child: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            spacing: 16.0,
            mainAxisSize: MainAxisSize.min, // To fit the content
            children: [
              TextFormField(
                controller: _urlController,
                decoration: const InputDecoration(
                  labelText: 'URL',
                  border: OutlineInputBorder(),
                ),
                validator:
                    (value) =>
                        value == null || value.isEmpty
                            ? 'URL is required'
                            : null,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
