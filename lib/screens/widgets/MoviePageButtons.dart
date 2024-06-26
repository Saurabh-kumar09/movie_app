import 'package:flutter/material.dart';

class MoviePageButtons extends StatelessWidget {
  const MoviePageButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 40),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  blurRadius: 1.0,
                  spreadRadius: 4.0,
                )
              ],
              color: Color(0xFF292B37),
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  blurRadius: 1.0,
                  spreadRadius: 4.0,
                )
              ],
              color: Color(0xFF292B37),
            ),
            child: Icon(
              Icons.favorite_border,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  blurRadius: 1.0,
                  spreadRadius: 4.0,
                )
              ],
              color: Color(0xFF292B37),
            ),
            child: Icon(
              Icons.download,
              color: Colors.white,
              size: 35.0,
            ),
          ),
          Container(
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              boxShadow: [
                BoxShadow(
                  color: Color(0xFF292B37).withOpacity(0.5),
                  blurRadius: 1.0,
                  spreadRadius: 4.0,
                )
              ],
              color: Color(0xFF292B37),
            ),
            child: Icon(
              Icons.share,
              color: Colors.white,
              size: 35.0,
            ),
          ),
        ],
      ),
    );
  }
}
