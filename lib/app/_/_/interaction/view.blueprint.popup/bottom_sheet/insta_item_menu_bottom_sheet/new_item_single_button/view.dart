import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../config.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewItemSingleButton extends StatefulWidget {
  NewItemSingleButton({super.key});

  @override
  State<NewItemSingleButton> createState() => StateChild();
}

class NewItemSingleButtonState extends State<NewItemSingleButton> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text("Why this post is shown")
          .fontSize(TEXT_SIZE)
          .fontWeight(FontWeight.w500)
          .center(),
    )
        .height(65)
        .decorated(
        borderRadius: BorderRadius.all(Radius.circular(RADIUS_BUTTON)),
        color: Colors.grey.withOpacity(OPACITY))
        .gestures(onTap: () {
      Navigator.of(context).pop();
    });
  }
}

main() async {
  return buildApp(appHome: NewItemSingleButton());
}
