import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:teacher_app/states/teacher_state.dart';

class DigiAppbar extends StatelessWidget {
  final VoidCallback onPressed;
  const DigiAppbar({Key key, this.onPressed}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: BackgroundClipper(),
        child: Container(
          padding: EdgeInsets.only(top: 35),
          color:  Theme.of(context).primaryColor,
          height: 180,
          width: double.infinity,
          child: Column(
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    child: IconButton(
                      onPressed: onPressed,
                      icon: Icon(Icons.dashboard),
                      color: Colors.white,
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(left: 12),
                      child: Text(
                        'Christ Nagar',
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.white,
                            fontWeight: FontWeight.w300),
                      )),
                  Container(
                    padding: EdgeInsets.only(right: 12),
                    child: IconButton(
                      onPressed: () {
                        print('Pressed');
                      },
                      icon: Icon(Icons.notifications),
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      padding: EdgeInsets.only(left: 12),
                      alignment: Alignment.centerLeft,
                      child: Consumer<TeacherState>(
                        builder: (BuildContext context, TeacherState value,
                            Widget child) {
                          return Text(
                            // 'Hi ${value.teacherName} !',
                            'Hi Rachel !',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          );
                        },
                      )),
                  Hero(
                    tag: 'Teacher profile',
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushNamed('/teacher_profile');
                      },
                      child: Container(
                        width: 40,
                        height: 40,
                        margin: EdgeInsets.only(right: 12),
                        decoration: BoxDecoration(
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage(
                                'assets/images/sir.jpg',
                              ),
                            ),
                            shape: BoxShape.circle),
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ));
  }
}

class BackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var roundnessFactor = 40.0;
    var path = Path();
    path.moveTo(0, 0);
    path.lineTo(0, size.height);
    path.quadraticBezierTo(0, size.height - roundnessFactor, roundnessFactor,
        size.height - roundnessFactor);
    path.lineTo(size.width - roundnessFactor, size.height - roundnessFactor);
    path.quadraticBezierTo(
        size.width, size.height - roundnessFactor, size.width, size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(CustomClipper oldClipper) {
    return true;
  }
}
