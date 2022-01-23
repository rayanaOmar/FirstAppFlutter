import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Container(
                    height: 178,
                    width: 128,
                    child: Image(
                      image: AssetImage("lib/img/doctor_image.png"),
                      fit: BoxFit.contain,
                    ),
                    decoration: BoxDecoration(
                      color: Colors.orange,
                      borderRadius: BorderRadius.circular(16),
                    ),
                  ),
                  SizedBox(
                    width: 11,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "rayana omar",
                        style: TextStyle(fontSize: 34),
                      ),
                      Text(
                        "Computer Science",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.grey[700],
                        ),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      //row for the icons
                      Row(
                        children: [
                          CustomIconsStyle(
                            icons: Icons.mail,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          CustomIconsStyle(icons: Icons.phone),
                          SizedBox(
                            width: 8,
                          ),
                          CustomIconsStyle(icons: Icons.video_call),
                        ],
                      ),
                    ],
                  )
                ],
              ),
              SizedBox(
                height: 15,
              ),
              //------------------------------------------------------
              Text(
                "About",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              //------------------------------------------------------
              Text(
                "rayana omar,computer science student, 23 years old",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w300,
                  color: Colors.grey[700],
                ),
              ),
              //------------------------------------------------------
              SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "House 2\nSaudi Arabia,Jeddah\nking Abdulaziz University",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 10,),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            color: Colors.grey[700],
                          ),
                          SizedBox(width: 5,),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Address",
                                style: TextStyle(
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                "House 2\nSaudi Arabia,Jeddah\nking Abdulaziz University",
                                style: TextStyle(
                                  color: Colors.grey[700],
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                  SizedBox(width: 10,),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image(
                      image: AssetImage("lib/img/map_image.JPG"),
                      height: 200,
                      width: 130,
                      fit: BoxFit.cover,
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomIconsStyle extends StatelessWidget {
  const CustomIconsStyle({
    Key? key,
    required this.icons,
  }) : super(key: key);

  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Icon(
        icons,
        color: Colors.orangeAccent,
        size: 32,
      ),
      height: 48,
      width: 48,
      decoration: BoxDecoration(
        color: Colors.deepOrange[50],
        borderRadius: BorderRadius.circular(16),
      ),
    );
  }
}
