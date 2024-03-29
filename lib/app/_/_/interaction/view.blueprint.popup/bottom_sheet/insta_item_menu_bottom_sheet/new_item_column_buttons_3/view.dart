import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../config.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewItemColumnButtons3 extends StatefulWidget {
  NewItemColumnButtons3({super.key});

  @override
  State<NewItemColumnButtons3> createState() => StateChild();
}

class NewItemColumnButtons3State extends State<NewItemColumnButtons3> with StateMother {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          child: Text("Add to favorites")
              .fontSize(TEXT_SIZE)
              .fontWeight(FontWeight.w500)
              .center(),
        )
            .height(65)
            .decorated(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(RADIUS_BUTTON),
                topRight: Radius.circular(RADIUS_BUTTON)),
            color: Colors.grey.withOpacity(OPACITY))
            .gestures(onTap: () {
          Navigator.of(context).pop();
        }),
        Container().height(1).backgroundColor(Colors.grey.withOpacity(0.4)),
        Container(
          child: Text("This account information")
              .fontSize(TEXT_SIZE)
              .fontWeight(FontWeight.w500)
              .center(),
        )
            .height(65)
            .decorated(color: Colors.grey.withOpacity(OPACITY))
            .gestures(onTap: () {
          Navigator.of(context).pop();
        }),
        Container().height(1).backgroundColor(Colors.grey.withOpacity(0.4)),
        Container(
          child: Text("Hide")
              .fontSize(TEXT_SIZE)
              .fontWeight(FontWeight.w500)
              .center(),
        )
            .height(65)
            .decorated(
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(RADIUS_BUTTON),
                bottomRight: Radius.circular(RADIUS_BUTTON)),
            color: Colors.grey.withOpacity(OPACITY))
            .gestures(onTap: () {
          Navigator.of(context).pop();
        }),
      ],
    );
  }
}

main() async {
  return buildApp(appHome: NewItemColumnButtons3());
}
