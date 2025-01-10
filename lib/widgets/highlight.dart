import 'package:flutter/material.dart';

class Highlight extends StatelessWidget {
  final String title;
  const Highlight({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Column(
        children: [
          Stack(
            alignment: Alignment.center,
            children: [
              Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300]),
              ),
              Container(
                width: 77,
                height: 77,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(50),
                    color: Colors.grey[300],
                    border: Border.all(color: Colors.white, width: 5),
                    image: DecorationImage(
                        image: NetworkImage("https://picsum.photos/536/354"),
                        fit: BoxFit.cover)),
              ),
            ],
          ),
          SizedBox(
            height: 10,
          ),
          Text(title)
        ],
      ),
    );
  }
}
