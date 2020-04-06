import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

class UpcomingExams extends StatefulWidget {
  const UpcomingExams({Key key}) : super(key: key);

  @override
  _UpcomingExamsState createState() => _UpcomingExamsState();
}

class _UpcomingExamsState extends State<UpcomingExams> {
  var value = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Center(
            child: Column(
              children: <Widget>[
                SizedBox(height: 100),
                Container(
                  width: 300,
                  height: 70,
                  padding: EdgeInsets.only(top: 10),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        value = !value;
                      });
                    },
                    child: Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      color: Colors.white,
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left:60),
                          child: Row(
                            children: <Widget>[
                              Text('02/07/2020'),
                              Text('   1st mid term'),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                !value
                    ? Container()
                    : Container(
                        child: DataTable(columns: [
                          DataColumn(
                              label: Text(
                            'date',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          )),
                          DataColumn(
                              label: Text(
                            'Subject',
                            style: TextStyle(
                                fontWeight: FontWeight.w500, fontSize: 20),
                          ))
                        ], rows: [
                          DataRow(cells: [
                            DataCell(Text('02/07/2020')),
                            DataCell(Text('Engilsh'))
                          ]),
                          DataRow(cells: [
                            DataCell(Text('03/07/2020')),
                            DataCell(Text('Maths'))
                          ]),
                          DataRow(cells: [
                            DataCell(Text('04/07/2020')),
                            DataCell(Text('Social'))
                          ]),
                          DataRow(cells: [
                            DataCell(Text('05/07/2020')),
                            DataCell(Text('Hindi'))
                          ]),
                          DataRow(cells: [
                            DataCell(Text('06/07/2020')),
                            DataCell(Text('Science'))
                          ]),
                        ]),
                      ),
                      SizedBox(height: 10,),
                Container(
                  width: 300,
                  height: 70,
                  child: GestureDetector(
                    onTap: () {
                      print('tapped');
                    },
                    child: Card(
                       shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      elevation: 5,
                      color: Colors.white,
                      child: Container(
                        height: 50,
                        child: Padding(
                          padding: const EdgeInsets.only(left: 14),
                          child: Row(
                            children: <Widget>[
                              Text('18/07/2020'),
                              Text('   Maths testpaper for std V '),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
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
