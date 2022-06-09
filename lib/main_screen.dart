import 'package:flutter/material.dart';
import 'package:one_page_resume/components/about.dart';
import 'package:one_page_resume/components/achievement.dart';
import 'package:one_page_resume/components/contact.dart';
import 'package:one_page_resume/components/education.dart';
import 'package:one_page_resume/components/experience.dart';
import 'package:one_page_resume/components/profile.dart';
import 'package:one_page_resume/components/speciality.dart';
import 'package:one_page_resume/components/tech.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Padding(
                    padding: EdgeInsets.all(60.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Profile(),
                        SizedBox(height: 20.0),
                        Contact(),
                        SizedBox(height: 60.0),
                        Tech(),
                        SizedBox(height: 60.0),
                        Speciality(),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: EdgeInsets.all(60.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        About(),
                        SizedBox(height: 60.0),
                        Education(),
                        SizedBox(height: 60.0),
                        Experience(),
                        SizedBox(height: 60.0),
                        Achievement(),
                        SizedBox(height: 30.0),
                        Image.asset(
                          'assets/images/qrcode.png',
                          width: 120.0,
                          height: 120.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            height: 40.0,
            color: Theme.of(context).canvasColor,
            child: Text(
              'This page is all created using Flutter framework.',
              style: TextStyle(
                fontFamily: 'SCDREAM',
                fontWeight: FontWeight.w500,
                fontSize: 12.0,
                color: Colors.black.withOpacity(0.5),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
