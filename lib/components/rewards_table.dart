import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'digi_rating.dart';

class RewardTable extends StatefulWidget {
  const RewardTable({Key key}) : super(key: key);

  @override
  _RewardTableState createState() => _RewardTableState();
}

class _RewardTableState extends State<RewardTable> {
  
  List<FocusNode> focusNodeList = List();
  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      child: ListView(
        children: <Widget>[
          SingleChildScrollView(
               scrollDirection: Axis.horizontal,
                  child: Container(
                padding: EdgeInsets.all(12),
                color: Colors.blue[200],
                child: DataTable(
                  
                    dataRowHeight: 100,
                    columns: [
                      DataColumn(label: Text('Roll No')),
                      DataColumn(label: Text('Name')),
                      DataColumn(label: Text('Rewards')),
                      DataColumn(label: Text('Comments'))
                    ],
                    rows: List<DataRow>.generate(6, (index) {
                      FocusNode focusNode =FocusNode();
                      focusNodeList.add(focusNode);
                      return DataRow(cells: [
                        DataCell(Text((index + 1).toString())),
                        DataCell(Text('Jijo')),
                        DataCell(Container(
                          child: DigiRating(
                            
                            valueChanged: (value) {
                              print(value);
                              print(index + 1);
                               focusNodeList.elementAt(index).requestFocus();
                            },
                            rating: 0,
                          ),
                        )),
                        DataCell(
                          Column(
                            children: <Widget>[
                              Container(
                                width: 200,
                                child: TextFormField(
                                  focusNode: focusNodeList.elementAt(index),
                                  decoration: InputDecoration(
                                    hintText: 'comments',
                                  ),
                                ),
                              ),
                              RaisedButton(
                                onPressed: () {},
                                child: Text('submit'),
                              )
                            ],
                          ),
                        )
                      ]);
                    }))),
          ),
        ],
      ),
    );
  }
}
