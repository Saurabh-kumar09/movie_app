import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/screens/widgets/CustomNavBar.dart';
import 'package:movie_app/screens/widgets/MoviePageButtons.dart';
import 'package:movie_app/screens/widgets/RecommendWidget.dart';

class MoviePage extends StatelessWidget {
  const MoviePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.8,
            child: Image.asset("assets/images/movie3.jpeg",
                height: 230, width: double.infinity, fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            child: SafeArea(
                child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 25),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                          size: 30.0,
                        ),
                      ),
                      Icon(
                        Icons.favorite_border,
                        color: Colors.white,
                        size: 30.0,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 60),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.blueGrey.withOpacity(0.5),
                              blurRadius: 2.0,
                              spreadRadius: 5.0,
                            )
                          ],
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset("assets/images/movie3.jpeg",
                              height: 250, width: 180, fit: BoxFit.cover),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(right: 10.0, top: 110),
                          height: 70,
                          width: 70,
                          decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(40.0),
                            boxShadow: [
                              BoxShadow(
                                color: Colors.blue.withOpacity(0.5),
                                blurRadius: 8.0,
                                spreadRadius: 2.0,
                              )
                            ],
                          ),
                          child: Icon(
                            Icons.play_arrow,
                            color: Colors.white,
                            size: 60.0,
                          ))
                    ],
                  ),
                ),
                SizedBox(height: 30),
                MoviePageButtons(),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Border 2001",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 30.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 5),
                      Text(
                        "Action, Adventure, Drama: 2h 12m 8.5/10",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.0,
                            fontWeight: FontWeight.w500),
                      ),
                      SizedBox(height: 15),
                      Text(
                        "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris.",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.0,
                          fontWeight: FontWeight.w500,
                        ),
                        textAlign: TextAlign.justify,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 8),
                RecommendWidget(),
              ],
            )),
          )
        ],
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
