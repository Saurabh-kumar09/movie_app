import 'package:flutter/material.dart';

class CustomNavBar extends StatelessWidget {
  const CustomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 65,
      padding: EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Color(0xFF292B37),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/");
            },
            child: Icon(
              Icons.home,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.pushNamed(context, "/CategoryPage");
            },
            child: Icon(
              Icons.category,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          InkWell(
            onTap: () {},
            child: Icon(
              Icons.person,
              color: Colors.white,
              size: 35.0,
            ),
          ),
        ],
      ),
    );
  }
}
