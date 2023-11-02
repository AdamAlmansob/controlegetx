import "package:controlgetx/view/widget/setting_widget/partoneofsettingpage.dart";
import "package:controlgetx/view/widget/setting_widget/partsecondofsettingpage.dart";
import "package:flutter/material.dart";

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            children: const [
          PartOnOfSettingPage(),
          PartSecondOfSettingsPage(),
        ]));
  }
}
