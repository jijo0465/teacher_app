import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

class UpdateFromParents extends StatelessWidget {
  const UpdateFromParents({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              SizedBox(height: 120),
              Container(
                child: Card(
                  elevation: 5,
                  color: Colors.yellow[100],
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(child: Text('10/06/2020')),
                          Container(child: Text('V A')),
                          Container(child: Text('Parent of Sansa')),
                        ],
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: Text('Remarks: ............'),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  elevation: 5,
                  color: Colors.yellow[100],
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(child: Text('11/06/2020')),
                          Container(child: Text('IX C')),
                          Container(child: Text('Parent of Ramsey')),
                        ],
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: Text('Remarks: ............'),
                      )
                    ],
                  ),
                ),
              ),
              Container(
                child: Card(
                  elevation: 5,
                  color: Colors.yellow[100],
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
                          Container(child: Text('11/06/2020')),
                          Container(child: Text('VII A')),
                          Container(child: Text('Parent of Theon')),
                        ],
                      ),
                      SizedBox(height: 30),
                      Container(
                        child: Text('Remarks: ............'),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          DigiCampusAppbar(
            icon: Icons.close,
            onDrawerTapped: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      ),
    );
  }
}
