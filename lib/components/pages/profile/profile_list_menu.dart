import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:pertemuan_ketuju/constants/theme.dart';

class ProfileListMenu extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  ProfileListMenu(
      {required this.title, required this.icon, required this.onTap});

  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          InkWell(
            borderRadius: BorderRadius.circular(25),
            onTap: onTap,
            child: Container(
              margin: EdgeInsets.only(bottom: 10),
              padding: EdgeInsets.all(12),
              decoration: BoxDecoration(
                  color: Color(0xFFF5F5F5),
                  borderRadius: BorderRadius.circular(25.0)),
              height: 50,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        icon,
                        color: AppTheme.primaryColor,
                      ),
                      Padding(padding: EdgeInsets.all(8)),
                      Text(title)
                    ],
                  ),
                  Icon(
                    LineAwesomeIcons.angle_right,
                    size: 18,
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
