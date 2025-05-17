import 'package:flutter/material.dart';
import 'package:perplex_clone/widgets/side_bar.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Row(
      children: [
        //side nav bar
        SideBar(),

        Column(
          children: [
            // serach section

            // footer
          ],
        )
      ],
    ));
  }
}
