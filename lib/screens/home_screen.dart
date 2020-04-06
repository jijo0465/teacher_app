import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teacher_app/components/digi_appbar.dart';
import 'package:teacher_app/components/digi_drawer.dart';
import 'package:teacher_app/components/digi_menu_card.dart';
import 'package:teacher_app/components/digi_period_card.dart';
import 'package:teacher_app/screens/login_screen.dart';
import 'package:teacher_app/states/login_state.dart';

class HomeScreen extends DrawerContent {
  HomeScreen({Key key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

HiddenDrawerController drawerController;

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();
    drawerController = HiddenDrawerController(
      initialPage: HomePage(
        title: 'main',
      ),
      items: [
        DrawerItem(
          text: Text('Home', style: TextStyle(color: Colors.white)),
          icon: Icon(Icons.home, color: Colors.white),
        ),
        DrawerItem(
          text: Text(
            'SETTINGS',
            style: TextStyle(color: Colors.white),
          ),
          icon: Icon(Icons.settings, color: Colors.white),
          onPressed: () async {
            await Navigator.of(context).pushNamed('/settings');
            drawerController.close();
          },
        ),
       
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<LoginState>(
      builder: (BuildContext context, LoginState value, Widget child) {
        if (value.status == Status.Unauthenticated) {
          return LoginScreen();
        } else {
          return Scaffold(
            body: HiddenDrawer(
              controller: drawerController,
              header: Container(
                child: Row(
                  children: <Widget>[
                    Expanded(
                      flex: 66,
                      child: Container(
                        child: Column(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width * 0.5,
                              height: MediaQuery.of(context).size.width * 0.5,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  fit: BoxFit.fill,
                                  image: AssetImage(
                                    'assets/images/rachel.png',
                                  ),
                                ),
                                shape: BoxShape.circle,
                              ),
                            ),
                            SizedBox(
                              height: 6,
                            ),
                            Text(
                              'Rachel green',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 20),
                            ),
                            RaisedButton(
                              child: Text('Signout'),
                              onPressed: (){
                                value.signOut();
                            })
                          ],
                        ),
                      ),
                    ),
                    Expanded(flex: 34, child: Container())
                  ],
                ),
              ),
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  colors: [Colors.blue[300], Colors.blue[800], Colors.blue],
                  // tileMode: TileMode.repeated,
                ),
              ),
            ),
          );
        }
      },
    );
  }
}

class HomePage extends DrawerContent {
  HomePage({Key key, this.title});
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _pageController;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0, viewportFraction: 0.92);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
          children: <Widget>[
            Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        DigiAppbar(
          onPressed: () {
            drawerController.open();
          },
        ),
        Expanded(
                  child: SingleChildScrollView(
                    child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Container(
                      child: DigiMenuCard(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/attendance');
                        },
                        imagePath: 'assets/images/attendance.png',
                      ),
                    ),
                    Container(
                      child: DigiMenuCard(
                        onPressed: () {
                          Navigator.of(context).pushNamed('/track_bus');
                        },
                        imagePath: 'assets/images/schoolbus.png',
                      ),
                    ),
                    
                  ],
                ),
            
            SizedBox(height:5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  child: DigiMenuCard(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/contact_parents');
                    },
                    imagePath: 'assets/images/parent.png',
                  ),
                ),
                DigiMenuCard(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/rewards');
                  },
                  imagePath: 'assets/images/rewards.png',
                ),
               
              ],
            ),
             SizedBox(height:5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                 Container(
                   child: DigiMenuCard(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/remarks');
                    },
                    imagePath: 'assets/images/remark.png',
                ),
                 ),
                DigiMenuCard(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/upcoming_exams');
                  },
                  imagePath: 'assets/images/exam.png',
                ),
              ],
            ),
             SizedBox(height:5),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                DigiMenuCard(
                  onPressed: () {
                    Navigator.of(context)
                        .pushNamed('/update_student_profile');
                  },
                  imagePath: 'assets/images/student.png',
                ),
                DigiMenuCard(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/update_from_parents');
                  },
                  imagePath: 'assets/images/premark.png',
                ),
              ],
            ),
              ],
            ),
          ),
        )
      ],
            ),
            Positioned(top: 140, child: DigiPeriodCard()),
            
          ],
        ),
    );
  }
}
