import 'package:flutter/material.dart';

class TabItem extends StatelessWidget {
  final IconData icon;
  final bool active;

  const TabItem({super.key, required this.icon, required this.active});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
          padding: EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
                      width: 1, color: active ? Colors.black : Colors.white))),
          child: Icon(icon)),
    );
  }
}
