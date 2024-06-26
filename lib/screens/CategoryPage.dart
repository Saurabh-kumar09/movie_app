import 'package:flutter/material.dart';
import 'package:movie_app/screens/widgets/CustomNavBar.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
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
                  SizedBox(height: 30),
                  Text(
                    'Discovery',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30.0,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                children: [
                  for (int i = 1; i < 6; i++)
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: Image.asset(
                              'assets/images/movie$i.jpeg',
                              width: 90.0,
                              height: 70.0,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(width: 10),
                          Text("Family & Relation",
                              style: TextStyle(
                                  color: Colors.white, fontSize: 22.0)),
                          Spacer(),
                          Icon(
                            Icons.arrow_forward_ios,
                            color: Colors.white,
                            size: 20.0,
                          )
                        ],
                      ),
                    )
                ],
              ),
            )
          ],
        )),
      ),
      bottomNavigationBar: const CustomNavBar(),
    );
  }
}
