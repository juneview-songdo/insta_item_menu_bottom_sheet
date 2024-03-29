import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../config.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewItemRowButtons2 extends StatefulWidget {
  NewItemRowButtons2({super.key});

  @override
  State<NewItemRowButtons2> createState() => StateChild();
}

class NewItemRowButtons2State extends State<NewItemRowButtons2> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Row(mainAxisSize: MainAxisSize.max, children: [
      Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.ios_share_outlined).iconSize(30),
          Gap(3),
          Text("Share"),
        ],
      )
          .height(80)
          .decorated(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS_BUTTON)),
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
          .height(80)
          .decorated(
          borderRadius: BorderRadius.all(Radius.circular(RADIUS_BUTTON)),
          color: Colors.grey.withOpacity(OPACITY))
          .backgroundColor(Colors.transparent)
          .gestures(onTap: () {
        Navigator.of(context).pop();
      }).expanded()
    ]).height(80);
  }
}

main() async {
  return buildApp(appHome: NewItemRowButtons2());
}
