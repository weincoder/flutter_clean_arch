
import 'package:flutter/material.dart';
import 'package:flutter_clean_arch/ui/common/tokens/colors.dart';
import 'package:flutter_clean_arch/ui/common/tokens/our_text.dart';
class OurAppBar extends StatelessWidget with PreferredSizeWidget {
  final String title;
  final Icon iconAppBarr;

  OurAppBar({
    this.title = 'Arquitectura limpia',
    this.iconAppBarr = const Icon(Icons.add)
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: SCALE_05,
      title: H1(text: this.title),
      actions: [
        IconButton(
          icon: this.iconAppBarr,
          onPressed: () => {print("Oprimiste +")},
        ),
        IconButton(
          icon: const Icon(Icons.navigate_next),
          onPressed: () => {print("Oprimiste >")},
        )
      ],
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);


}