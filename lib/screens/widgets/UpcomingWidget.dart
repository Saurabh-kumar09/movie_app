import 'package:flutter/material.dart';

class UpcomingWidget extends StatelessWidget {
  const UpcomingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Upcoming Movies',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25.0,
                fontWeight: FontWeight.w500,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                'View All',
                style: TextStyle(
                  color: Colors.white54,
                  fontSize: 16.0,
                ),
              ),
            )
          ],
        ),
      ),
      SizedBox(
        height: 15,
      ),
      SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            for (int i = 1; i < 6; i++)
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    'assets/images/movie$i.jpeg',
                    width: 300.0,
                    height: 180.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
          ],
        ),
      )
    ]);
  }
}
