import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../config.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewItemRowButtons3 extends StatefulWidget {
  NewItemRowButtons3({super.key});

  @override
  State<NewItemRowButtons3> createState() => StateChild();
}

class NewItemRowButtons3State extends State<NewItemRowButtons3> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.ios_share_outlined).iconSize(30),
            Gap(3),
            Text("Share"),
          ],
        )
            .decorated(
            borderRadius:
            BorderRadius.all(Radius.circular(RADIUS_BUTTON)),
            color: Colors.grey.withOpacity(OPACITY))
            .backgroundColor(Colors.transparent)
            .gestures(onTap: () {
          Navigator.of(context).pop();
        }).expanded(),
        Gap(CROSS_SPACE),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.link).iconSize(30),
            Gap(3),
            Text("Url"),
          ],
        )
            .decorated(
            borderRadius:
            BorderRadius.all(Radius.circular(RADIUS_BUTTON)),
            color: Colors.grey.withOpacity(OPACITY))
            .backgroundColor(Colors.transparent)
            .gestures(onTap: () {
          Navigator.of(context).pop();
        }).expanded(),
        Gap(CROSS_SPACE),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.warning_amber_rounded)
                .iconSize(30)
                .iconColor(Colors.red),
            Gap(3),
            Text("Report").textColor(Colors.red),
          ],
        )
            .decorated(
            borderRadius:
            BorderRadius.all(Radius.circular(RADIUS_BUTTON)),
            color: Colors.grey.withOpacity(OPACITY))
            .backgroundColor(Colors.transparent)
            .gestures(onTap: () {
          Navigator.of(context).pop();
        }).expanded(),
      ],
    ).height(90);
  }
}

main() async {
  return buildApp(appHome: NewItemRowButtons3());
}
