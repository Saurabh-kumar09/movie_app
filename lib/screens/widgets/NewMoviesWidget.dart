import 'package:flutter/material.dart';

class NewMoviesWidget extends StatelessWidget {
  const NewMoviesWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'New Movies',
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
              InkWell(
                onTap: () {
                  Navigator.pushNamed(context, '/moviePage');
                },
                child: Container(
                  margin: EdgeInsets.only(left: 10.0),
                  width: 190.0,
                  height: 300.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF292B37),
                    boxShadow: [
                      BoxShadow(
                        color: Color(0XFF292B37).withOpacity(0.5),
                        blurRadius: 6.0,
                        spreadRadius: 2.0,
                      )
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10.0),
                          topRight: Radius.circular(10.0),
                        ),
                        child: Image.asset(
                          'assets/images/movie$i.jpeg',
                          width: 200.0,
                          height: 180.0,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: 5.0, vertical: 10.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Movie Title",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 21.0,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(height: 5.0),
                            Text(
                              "Movie Genre",
                              style: TextStyle(
                                color: Colors.white54,
                              ),
                            ),
                            SizedBox(height: 8.0),
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16.0,
                                ),
                                SizedBox(width: 8.0),
                                Text(
                                  "9.0",
                                  style: TextStyle(
                                      color: Colors.white54, fontSize: 16.0),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              )
          ],
        ),
      )
    ]);
  }
}
