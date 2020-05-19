import 'package:flutter/material.dart';

class DigiTeach extends StatefulWidget {
  const DigiTeach({
    Key key,
  }) : super(key: key);

  @override
  _DigiTeachState createState() => _DigiTeachState();
}

class _DigiTeachState extends State<DigiTeach> {
  int grade = 0;
  int subject = 0;
  int topic = 0;

  @override
  Widget build(BuildContext context) {
    Color color = Theme.of(context).primaryColor;
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [BoxShadow(
          color: Colors.grey,
          blurRadius: 4
        )]
      ),
      
      width: MediaQuery.of(context).size.width,
      height: 100,
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top:10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 120,
                  height: 25,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          color.withOpacity(0.7),
                          color.withOpacity(0.6),
                          color.withOpacity(0.7)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: grade,
                          items: [
                            DropdownMenuItem(child: Text('Class'), value: 0),
                            DropdownMenuItem(child: Text('Class I'), value: 1),
                            DropdownMenuItem(child: Text('Class II'), value: 2),
                            DropdownMenuItem(child: Text('Class III'), value: 3),
                            DropdownMenuItem(child: Text('Class IV'), value: 4),
                            DropdownMenuItem(child: Text('Class V'), value: 5),
                          ],
                          onChanged: (value) {
                            setState(() {
                              grade = value;
                            });
                            print(value);
                          }),
                    ),
                    padding: EdgeInsets.only(left: 4),
                  ),
                ),
                SizedBox(width: 20),
                Container(
                  width: 120,
                  height: 25,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          color.withOpacity(0.7),
                          color.withOpacity(0.6),
                          color.withOpacity(0.7)
                        ],
                      ),
                      borderRadius: BorderRadius.circular(12)),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 4),
                    child: DropdownButtonHideUnderline(
                      child: DropdownButton(
                          value: subject,
                          items: [
                            DropdownMenuItem(child: Text('Subjects '), value: 0),
                            DropdownMenuItem(child: Text('Maths'), value: 1),
                            DropdownMenuItem(child: Text('Science'), value: 2),
                            DropdownMenuItem(child: Text('English'), value: 3),
                            DropdownMenuItem(child: Text('Hindi'), value: 4),
                            DropdownMenuItem(child: Text('Social'), value: 5),
                          ],
                          onChanged: (value) {
                            setState(() {
                              subject = value;
                            });
                          }),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          
          GestureDetector(
            child: Container(
                width: 150,
                height: 25,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        color.withOpacity(0.7),
                        color.withOpacity(0.6),
                        color.withOpacity(0.7)
                      ],
                    ),
                    borderRadius: BorderRadius.circular(12)),
                child: Center(child: Text('shared videos'))),
          )
        ],
      ),
    );
  }
}
