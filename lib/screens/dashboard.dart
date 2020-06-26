import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:teacher_app/components/digi_drawer.dart';
import 'package:teacher_app/components/page_header.dart';
import 'package:teacher_app/components/digi_appbar.dart';
import 'package:teacher_app/components/digi_menu_card.dart';
import 'package:teacher_app/components/digi_period_card.dart';
import 'package:teacher_app/components/digi_nav_bar.dart';
import 'package:teacher_app/components/select_class.dart';
import 'package:teacher_app/components/select_division.dart';
import 'package:teacher_app/screens/chat_screen.dart';
import 'package:teacher_app/screens/knowledge_base.dart';

class HomePage extends DrawerContent {
  const HomePage({this.onPressed, this.title, Key key}) : super(key: key);
  final String title;
  final VoidCallback onPressed;

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int navState = 0;
  PageController _pageController;
  int grade;
  int division;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0, keepPage: true);
    super.initState();
  }

  createAlertDialog(BuildContext context) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Container(
                    height: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      border: Border.all(
                          color: Theme.of(context).primaryColor,
                          style: BorderStyle.solid,
                          width: 0.80),
                    ),
                    padding: EdgeInsets.only(left: 20),
                    child: SelectClass(
                      onchanged: (value) {
                        //division = 0;
                        setState(() {
                          grade = value;
                        });
                      },
                      grade: grade,
                    ),
                  ),
                   Container(
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  border: Border.all(
                      color: Theme.of(context).primaryColor,
                      style: BorderStyle.solid,
                      width: 0.80),
                ),
                padding: EdgeInsets.only(left: 20),
                child: SelectDivision(
                  onchanged: (value) {
                    setState(() {
                      division = value;
                    });
                  },
                  division: division,
                ),
              ),
                ],
              ),
             SizedBox(height:20),
              Center(
                child: FlatButton(
                  onPressed: () async {
                    await Permission.camera.request();
                    await Permission.microphone.request();
                    Navigator.of(context).pushNamed('/call');
                  },
                  child: Text('Confirm Class'),
                  color: Theme.of(context).primaryColor,
                ),
              )
            ],
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          //   Stack(
          // children: <Widget>[
          Column(
        children: <Widget>[
          // SizedBox(height: 60 + MediaQuery.of(context).padding.top),
          PageHeader(
            onPressed: widget.onPressed,
          ),
          Expanded(
            child: PageView(
              controller: _pageController,
              children: <Widget>[
                Container(
                  child: Stack(
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          DigiAppbar(
                              // onPressed: () {
                              //   drawerController.open();
                              // },
                              ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                children: <Widget>[
                                  SizedBox(height: 30),
                                  DigiMenuCard(
                                    height: MediaQuery.of(context).size.height *
                                        0.17,
                                    width: MediaQuery.of(context).size.width *
                                        0.91,
                                    onPressed: () {
                                      createAlertDialog(context);
                                    },
                                    imagePath: 'assets/images/classroom.png',
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: DigiMenuCard(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.3,
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed('/attendance');
                                            },
                                            imagePath:
                                                'assets/images/check_attendance.png',
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              child: DigiMenuCard(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.15,
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed('/track_bus');
                                                },
                                                imagePath:
                                                    'assets/images/track_schoolbus.png',
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            DigiMenuCard(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              onPressed: () {
                                                Navigator.of(context)
                                                    .pushNamed('/rewards');
                                              },
                                              imagePath:
                                                  'assets/images/give_rewards.png',
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              child: DigiMenuCard(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.15,
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed(
                                                          '/contact_parents');
                                                },
                                                imagePath:
                                                    'assets/images/contact_parents.png',
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            DigiMenuCard(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.3,
                                              onPressed: () {
                                                Navigator.of(context).pushNamed(
                                                    '/upcoming_exams');
                                              },
                                              imagePath:
                                                  'assets/images/upcoming_exams.png',
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: <Widget>[
                                            Container(
                                              child: DigiMenuCard(
                                                height: MediaQuery.of(context)
                                                        .size
                                                        .height *
                                                    0.3,
                                                onPressed: () {
                                                  Navigator.of(context)
                                                      .pushNamed('/remarks');
                                                },
                                                imagePath:
                                                    'assets/images/write_remarks.png',
                                              ),
                                            ),
                                            SizedBox(height: 5),
                                            DigiMenuCard(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              onPressed: () {
                                                Navigator.of(context).pushNamed(
                                                    '/update_from_parents');
                                              },
                                              imagePath:
                                                  'assets/images/premark.png',
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(
                                        width: 15,
                                      )
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  DigiMenuCard(
                                    height: MediaQuery.of(context).size.height *
                                        0.13,
                                    width: MediaQuery.of(context).size.width *
                                        0.91,
                                    onPressed: () {
                                      Navigator.of(context)
                                          .pushNamed('/update_student_profile');
                                    },
                                    imagePath:
                                        'assets/images/student_profile.png',
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(width: 15),
                                      Expanded(
                                        flex: 1,
                                        child: DigiMenuCard(
                                          height: MediaQuery.of(context)
                                                  .size
                                                  .height *
                                              0.3,
                                          onPressed: () {
                                            Navigator.of(context)
                                                .pushNamed('/update_homework');
                                          },
                                          imagePath:
                                              'assets/images/update_homework.png',
                                        ),
                                      ),
                                      SizedBox(width: 15),
                                      Expanded(
                                        flex: 1,
                                        child: Column(
                                          children: <Widget>[
                                            DigiMenuCard(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              onPressed: () {
                                                Navigator.of(context).pushNamed(
                                                    '/update_test_paper');
                                              },
                                              imagePath:
                                                  'assets/images/update_testpaper.png',
                                            ),
                                            SizedBox(height: 5),
                                            DigiMenuCard(
                                              height: MediaQuery.of(context)
                                                      .size
                                                      .height *
                                                  0.15,
                                              onPressed: () {
                                                Navigator.of(context).pushNamed(
                                                    '/approve_leave_request');
                                              },
                                              imagePath:
                                                  'assets/images/approve_leave.png',
                                            ),
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 15)
                                    ],
                                  ),
                                  SizedBox(height: 5),
                                  Row(
                                    children: <Widget>[
                                      SizedBox(
                                        width: 15,
                                      ),
                                      Column(
                                        children: <Widget>[
                                          DigiMenuCard(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.44,
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed('/leave_request');
                                            },
                                            imagePath:
                                                'assets/images/leave_request.png',
                                          ),
                                          SizedBox(height: 5),
                                          DigiMenuCard(
                                            height: MediaQuery.of(context)
                                                    .size
                                                    .height *
                                                0.15,
                                            width: MediaQuery.of(context)
                                                    .size
                                                    .width *
                                                0.44,
                                            onPressed: () {
                                              Navigator.of(context)
                                                  .pushNamed('/student_360');
                                            },
                                            imagePath: 'assets/images/360.png',
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        width: 15,
                                      ),
                                      DigiMenuCard(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                0.3,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.43,
                                        onPressed: () {
                                          Navigator.of(context)
                                              .pushNamed('/student_result');
                                        },
                                        imagePath: 'assets/images/report.png',
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                          // SizedBox(height: 60)
                        ],
                      ),
                      Positioned(top: 60, child: DigiPeriodCard()),
                    ],
                  ),
                ),
                KnowledgeBase(),
                ChatScreen()
              ],
            ),
          ),
          DigiBottomNavBar(
            selected: navState,
            onChanged: (value) async {
              await _pageController.animateToPage(value,
                  duration: Duration(milliseconds: 600),
                  curve: Curves.fastLinearToSlowEaseIn);
              setState(() {
                navState = value;
              });
            },
          )
        ],
      ),
      // PageHeader(
      //   onPressed: widget.onPressed,
      // ),
      //     Positioned(
      //         bottom: 4,
      //         child: DigiBottomNavBar(
      //           selected: navState,
      //           onChanged: (value) async {
      //             await _pageController.animateToPage(value,
      //                 duration: Duration(milliseconds: 400),
      //                 curve: Curves.linear);
      //             setState(() {
      //               navState = value;
      //             });
      //           },
      //         ))
      //   ],
      // )
    );
  }

  // void setSelectedStudent(Student student) async {
  //   selectedStudent = student;
  //   if (selectedStudent != null) {
  //     setState(() {
  //       isLoading = false;
  //     });
  //   }
  // }
}
