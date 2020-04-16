import 'package:flutter/material.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

class ApproveLeaveRequest extends StatefulWidget {
  const ApproveLeaveRequest({Key key}) : super(key: key);

  @override
  _ApproveLeaveRequestState createState() => _ApproveLeaveRequestState();
}

class _ApproveLeaveRequestState extends State<ApproveLeaveRequest> {
  bool _value = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Column(
          children: <Widget>[
            SizedBox(height: 120),
            Text('CLASS IV A'),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: DataTable(columnSpacing: 20, columns: [
                DataColumn(
                    label: Text('Roll No',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black))),
                DataColumn(
                    label: Text('Name',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black))),
                DataColumn(
                    label: Text('Reason',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black))),
                DataColumn(
                    label: Text('Approve',
                        style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                            color: Colors.black)))
              ], rows: [
                DataRow(cells: [
                  DataCell(Text('25')),
                  DataCell(Text('Joey')),
                  DataCell(Text('Fever')),
                  DataCell(Container(
                      child: Checkbox(
                    value: _value,
                    onChanged: (bool value) {
                      setState(() {
                        _value = value;
                      });
                    },
                    activeColor: Colors.blue,
                  )))
                ])
              ]),
            ),
            RaisedButton(onPressed: (){},
            elevation: 4,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            color: Colors.blue[800],
            child: Text('Approve',style: TextStyle(color:Colors.white
            ),),)
          ],
        ),
        DigiCampusAppbar(
          icon: Icons.close,
          onDrawerTapped: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ));
  }
}
