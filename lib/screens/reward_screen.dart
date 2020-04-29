import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';
import 'package:teacher_app/components/rewards_card.dart';
import 'package:teacher_app/components/select_class.dart';
import 'package:teacher_app/components/select_division.dart';
//import 'package:teacher_app/components/select_student.dart';

class RewardScreen extends StatefulWidget {
  const RewardScreen({Key key}) : super(key: key);

  @override
  _RewardScreenState createState() => _RewardScreenState();
}

class _RewardScreenState extends State<RewardScreen> {
  int grade = 0;
  int division = 0;
  int listIndex = 0;
  GlobalKey<AnimatedListState> _listKey = GlobalKey();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(children: <Widget>[
            SizedBox(height: 120),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        'Select',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Colors.blue,
                              style: BorderStyle.solid,
                              width: 0.80),
                        ),
                        padding: EdgeInsets.only(left: 12),
                        child: SelectClass(
                          onchanged: (value) {
                            setState(() {
                              grade = value;
                            });
                          },
                          grade: grade,
                        ),
                      ),
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Container(
                        padding: EdgeInsets.only(left: 12),
                        child: Text(
                          'Select',
                          style: TextStyle(fontSize: 18),
                        )),
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        height: 30,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15.0),
                          border: Border.all(
                              color: Colors.blue,
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
                    )
                  ],
                ),
              ],
            ),
            SizedBox(height: 30),
            grade == 0 || division == 0
                ? Container()
                :  RaisedButton(
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(10.0)),
                    color: Colors.blue[800],
                    onPressed: (){
                       _listKey.currentState.insertItem(listIndex,
                        duration: const Duration(milliseconds: 500));
                        listIndex=listIndex+1;
                    },
                    child: Text(
                      'Add Student',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
             Expanded(
                  child: AnimatedList(
                key: _listKey,
                initialItemCount: 0,
                itemBuilder:
                    (BuildContext context, int index, Animation animation) {
                  return SizeTransition(
                    child: RewardCard(onPressed: (){
                      listIndex--;
                      _listKey.currentState.removeItem(index,(context,animation){

                        return Container();
                      });
                    },),
                    sizeFactor: animation,
                    axis: Axis.vertical,
                  );
                },
              )),
          ]),
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
