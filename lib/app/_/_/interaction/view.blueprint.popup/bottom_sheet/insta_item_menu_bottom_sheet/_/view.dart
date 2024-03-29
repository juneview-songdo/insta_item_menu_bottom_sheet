import 'package:flutter/material.dart';

import '../../../../../../../../main.dart';
import '../config.dart';
import '../new_item_column_buttons_2/view.dart';
import '../new_item_column_buttons_3/view.dart';
import '../new_item_column_buttons_4/view.dart';
import '../new_item_row_buttons_2/view.dart';
import '../new_item_row_buttons_3/view.dart';
import '../new_item_single_button/view.dart';
import '_/state_child.dart';
import '_/state_mother.dart';

class NewView extends StatefulWidget {
  NewView({super.key});

  @override
  State<NewView> createState() => StateChild();
}

class NewViewState extends State<NewView> with StateMother {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Gap(5),
          NewItemRowButtons3(),
          Gap(MAIN_SPACE),
          NewItemRowButtons2(),
          Gap(MAIN_SPACE),
          NewItemSingleButton(),
          Gap(MAIN_SPACE),
          NewItemColumnButtons3(),
          Gap(MAIN_SPACE),
          NewItemColumnButtons2(),
          Gap(MAIN_SPACE),
          NewItemColumnButtons4(),
        ],
      )
          .padding(vertical: 20, horizontal: 20)
          .backgroundColor(Theme.of(context).colorScheme.background),
    );
  }
}

main() async {
  return buildApp(appHome: NewView());
}
