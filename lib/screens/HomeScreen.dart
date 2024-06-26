import 'package:flutter/material.dart';
import 'package:movie_app/screens/widgets/CustomNavBar.dart';
import 'package:movie_app/screens/widgets/NewMoviesWidget.dart';
import 'package:movie_app/screens/widgets/UpcomingWidget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 18.0,
                  horizontal: 10.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hello Vanreo',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        Text(
                          'What do you want to watch today?',
                          style: TextStyle(
                            color: Colors.white54,
                          ),
                        )
                      ],
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(40.0),
                      child: Image.asset(
                        'assets/images/profile.jpg',
                        width: 60.0,
                        height: 60.0,
                      ),
                    )
                  ],
                ),
              ),
              Container(
                height: 60,
                padding: EdgeInsets.all(10),
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                decoration: BoxDecoration(
                  color: Color(0xFF292B37),
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white54,
                      size: 30,
                    ),
                    Container(
                      width: 300,
                      margin: EdgeInsets.only(left: 5.0),
                      child: TextFormField(
                        style: TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          hintText: 'Search for movies, series, etc.',
                          hintStyle: TextStyle(color: Colors.white54),
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              UpcomingWidget(),
              SizedBox(height: 30),
              NewMoviesWidget(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}
