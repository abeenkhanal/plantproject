import 'package:flutter/material.dart';

Widget home_title(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      Text(
        "Best Plants For\nOur Green House",
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
        ),
      ),
      Stack(
        children: [
          CircleAvatar(
            radius: 30,
            backgroundImage: NetworkImage(
                "https://images.pexels.com/photos/2269872/pexels-photo-2269872.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2"),
          ),
          Positioned(
            right: 0,
            child: CircleAvatar(
              radius: 10,
              backgroundColor: Theme.of(context).primaryColor,
              child: Text(
                "2",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      )
    ],
  );
}
