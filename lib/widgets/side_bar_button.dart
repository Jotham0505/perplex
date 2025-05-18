import 'package:flutter/material.dart';
import 'package:perplex_clone/theme/colors.dart';

class SideBarButton extends StatelessWidget {
  const SideBarButton({
    super.key,
    required this.isCollapse,
    required this.icon,
    required this.text,
  });

  final bool isCollapse;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment:
          isCollapse ? MainAxisAlignment.center : MainAxisAlignment.start,
      children: [
        Container(
          margin: EdgeInsets.symmetric(
            vertical: 14,
            horizontal: 10,
          ),
          child: Icon(
            icon,
            color: AppColors.iconGrey,
            size: 22,
          ),
        ),
        isCollapse
            ? SizedBox()
            : Text(
                text,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w700,
                ),
              )
      ],
    );
  }
}
