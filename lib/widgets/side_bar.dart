import 'package:flutter/material.dart';
import 'package:perplex_clone/theme/colors.dart';
import 'package:perplex_clone/widgets/side_bar_button.dart';

class SideBar extends StatefulWidget {
  const SideBar({super.key});

  @override
  State<SideBar> createState() => _SideBarState();
}

class _SideBarState extends State<SideBar> {
  bool isCollapse = true;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(
        milliseconds: 300,
      ),
      width: isCollapse ? 64 : 128,
      color: AppColors.sideNav,
      child: Column(
        children: [
          SizedBox(
            height: 15,
          ),
          Icon(
            Icons.auto_awesome_mosaic,
            color: AppColors.whiteColor,
            size: isCollapse ? 30 : 60,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: isCollapse
                  ? CrossAxisAlignment.center
                  : CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 24,
                ),
                SideBarButton(
                  // reusable widget
                  isCollapse: isCollapse,
                  icon: Icons.add,
                  text: 'Home',
                ),
                SideBarButton(
                  // reusable widget
                  isCollapse: isCollapse,
                  icon: Icons.search,
                  text: 'Search',
                ),
                SideBarButton(
                  // reusable widget
                  isCollapse: isCollapse,
                  icon: Icons.language,
                  text: 'Spaces',
                ),
                SideBarButton(
                  // reusable widget
                  isCollapse: isCollapse,
                  icon: Icons.auto_awesome,
                  text: 'Discover',
                ),
                SideBarButton(
                  // reusable widget
                  isCollapse: isCollapse,
                  icon: Icons.cloud_outlined,
                  text: 'Library',
                ),
                Spacer(),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isCollapse = !isCollapse;
              });
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 100),
              margin: EdgeInsets.symmetric(vertical: 14),
              child: Icon(
                isCollapse
                    ? Icons.keyboard_arrow_right
                    : Icons.keyboard_arrow_left,
                color: AppColors.iconGrey,
                size: 22,
              ),
            ),
          ),
          SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
