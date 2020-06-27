import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';
import 'package:teacher_app/components/icons.dart';
import 'dart:ui';



class DigiAlert extends StatelessWidget {
  final String title;
  final String text;
  final IconData icon;

  const DigiAlert({Key key, this.title, this.text, this.icon}) : super(key: key);

  Widget build(BuildContext context) {
    return Stack(
      children: [
        GestureDetector(
          behavior: HitTestBehavior.translucent,
//          onTap: () {
//            setState(() {
//              isOpen = !isOpen;
//            });
//          },
          child: Container(
            color: Colors.black.withOpacity(0.3),
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child:IntrinsicHeight(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 3, sigmaY: 3),
              child: Card(
                color: Colors.white70,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(12))),
                elevation: 8,
                child: Container(
                  margin: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  width: MediaQuery.of(context).size.width * 0.65,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 8),
                      Container(
                        alignment: Alignment.topLeft,
                        child: Icon(icon,size: 40,color: Theme.of(context).primaryColor),
                      ),
                      SizedBox(height: 14,),

                      SizedBox(height: 16),
                      Container(
//                        padding: EdgeInsets.only(left: 16),
                        child: Text(text,style: TextStyle(color: Theme.of(context).primaryColor),)
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ),
        DigiCampusAppbar(
          title: title,
          icon: Icons.close,
          onDrawerTapped: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    );

  }
}



