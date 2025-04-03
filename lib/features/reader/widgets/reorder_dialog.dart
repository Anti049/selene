import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_symbols_icons/symbols.dart';
import 'package:selene/features/reader/providers/reader_preferences.dart';
import 'package:selene/utils/enums.dart';
import 'package:selene/utils/theming.dart';

class ReorderDialog extends ConsumerStatefulWidget {
  const ReorderDialog({super.key, required this.onSave});

  final void Function(List<ReaderOptionButton>) onSave;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _ReorderDialogState();
}

class _ReorderDialogState extends ConsumerState<ReorderDialog> {
  List<ReaderOptionButton> _buttonOptions = ReaderOptionButton.values.toList();
  final List<bool> _selectedOptions = List.filled(
    ReaderOptionButton.values.length,
    false,
  );

  num get _selectedCount => _selectedOptions.where((e) => e).length;

  @override
  void initState() {
    super.initState();

    final readerPrefs = ref.read(readerPreferencesProvider);
    final savedOptions = readerPrefs.buttonOptions.get();
    // Reorder _buttonOptions based on the saved preferences
    _buttonOptions = [
      ...savedOptions,
      ..._buttonOptions.where((e) => !savedOptions.contains(e)),
    ];
    for (var i = 0; i < _buttonOptions.length; i++) {
      _selectedOptions[i] = savedOptions.contains(_buttonOptions[i]);
    }
  }

  @override
  Widget build(BuildContext context) {
    final systemNavigationHeight = context.mediaQuery.viewPadding.bottom;

    return Dialog(
      insetPadding: EdgeInsets.fromLTRB(
        16.0,
        16.0,
        16.0,
        16.0 + systemNavigationHeight,
      ),
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
        side: BorderSide(
          color: context.scheme.onSurfaceVariant.withValues(alpha: 0.25),
          width: 1.0,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            width: double.infinity,
            height: 64.0,
            decoration: BoxDecoration(
              color: context.scheme.surfaceContainerHighest,
              border: Border(
                bottom: BorderSide(
                  color: context.scheme.onSurfaceVariant.withValues(
                    alpha: 0.25,
                  ),
                  width: 1.0,
                ),
              ),
            ),
            child: Text('Customize Buttons', style: context.text.titleLarge),
          ),
          Container(
            constraints: BoxConstraints(
              maxHeight: context.mediaQuery.size.height * 0.5,
            ),
            child: ReorderableListView(
              shrinkWrap: true,
              buildDefaultDragHandles: false,
              onReorder: (oldIndex, newIndex) {
                if (oldIndex < newIndex) {
                  newIndex -= 1;
                }
                final newOptions = List<ReaderOptionButton>.from(
                  _buttonOptions,
                );
                final item = newOptions.removeAt(oldIndex);
                newOptions.insert(newIndex, item);
                setState(() {
                  _buttonOptions.clear();
                  _buttonOptions.addAll(newOptions);
                });
              },
              // Iterate over each option with index
              children: [
                for (var i = 0; i < _buttonOptions.length; i++)
                  ListTile(
                    enabled: _selectedCount < 4 || _selectedOptions[i],
                    key: ValueKey(_buttonOptions[i]),
                    leading: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          _buttonOptions[i].icon,
                          fill: _buttonOptions[i].fill,
                        ),
                        Checkbox(
                          value: _selectedOptions[i],
                          onChanged:
                              _selectedCount < 4 || _selectedOptions[i]
                                  ? (value) {
                                    if (_selectedCount == 4 && value == true) {
                                      return;
                                    }
                                    setState(() {
                                      _selectedOptions[i] = value ?? false;
                                    });
                                  }
                                  : null,
                        ),
                      ],
                    ),
                    title: Text(
                      _buttonOptions[i].label,
                      style: context.text.bodyMedium,
                    ),
                    tileColor:
                        i < _selectedCount
                            ? i.isEven
                                ? context.scheme.surfaceContainerLow
                                : context.scheme.surfaceContainer
                            : null,
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: Icon(Symbols.chevron_right),
                          onPressed: () {},
                        ),
                        ReorderableDragStartListener(
                          index: i,
                          child: Icon(Symbols.drag_handle),
                        ),
                      ],
                    ),
                    // Add a border for separation
                    shape: Border(
                      bottom:
                          i != _buttonOptions.length - 1
                              ? BorderSide(
                                color: context.scheme.onSurfaceVariant
                                    .withValues(alpha: 0.25),
                                width: 1.0,
                              )
                              : BorderSide.none,
                    ),
                  ),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.all(8.0),
            width: double.infinity,
            height: 64.0,
            decoration: BoxDecoration(
              color: context.scheme.surfaceContainerHighest,
              border: Border(
                top: BorderSide(
                  color: context.scheme.onSurfaceVariant.withValues(
                    alpha: 0.25,
                  ),
                  width: 1.0,
                ),
              ),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              spacing: 8.0,
              children: [
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  style: TextButton.styleFrom(
                    foregroundColor: context.scheme.error,
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 4.0,
                    ),
                    child: Text('Cancel'),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    final enabledOptions =
                        _buttonOptions
                            .where(
                              (e) =>
                                  _selectedOptions[_buttonOptions.indexOf(e)],
                            )
                            .toList();
                    widget.onSave(enabledOptions);
                    Navigator.of(context).pop();
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 12.0,
                      vertical: 4.0,
                    ),
                    child: Text('Save'),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
