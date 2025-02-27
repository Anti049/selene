import 'package:collection/collection.dart';
import 'package:dartx/dartx.dart';
import 'package:flutter/material.dart';
import 'package:selene/common/widgets/padded_appbar.dart';
import 'package:selene/features/banners/widgets/banner_scaffold.dart';
import 'package:selene/features/settings/models/setting.dart';
import 'package:selene/features/settings/widgets/setting_group_header.dart';

class SettingScaffold extends StatelessWidget {
  const SettingScaffold({
    super.key,
    this.title,
    this.actions,
    required this.settingsProvider,
  });

  final String? title;
  final List<Widget>? actions;
  final List<ISetting> Function() settingsProvider;

  @override
  Widget build(BuildContext context) {
    return BannerScaffold(
      appBar:
          title.isNotNullOrBlank
              ? PaddedAppBar(title: Text(title!), actions: actions)
              : null,
      body: ListView(
        children:
            settingsProvider()
                .mapIndexed((index, setting) {
                  if (setting is SettingGroup) {
                    return <Widget>[
                      SettingGroupHeader(
                        title: setting.title ?? '',
                        icon: setting.icon,
                      ),
                      ...setting.settings.map((setting) {
                        return buildSettingWidget(context, setting);
                      }),
                    ];
                  }
                  return [buildSettingWidget(context, setting)];
                })
                .flattened
                .toList(),
      ),
    );
  }
}
