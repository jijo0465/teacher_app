import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:teacher_app/components/digicampus_appbar.dart';

class ClassroomScreen extends StatefulWidget {
  const ClassroomScreen({Key key}) : super(key: key);
  static List<Map<String, dynamic>> timeTableList = [
    {
      '0': 'Period 1\nClass VI',
      '1': 'Period 2\nClass VII',
      '2': 'Period 3\nClass VII',
      '3': 'Period 4\nClass VI',
      '4': 'Period 5\nClass VII',
      '5': 'Period 6\nClass VI',
    },
    {
      '0': 'Period 1\nClass VI',
      '1': 'Period 2\nClass VII',
      '2': 'Period 3\nClass VII',
      '3': 'Period 4\nClass VI',
      '4': 'Period 5\nClass VII',
      '5': 'Period 6\nClass VI',
    },
    {
      '0': 'Period 1\nClass VI',
      '1': 'Period 2\nClass VII',
      '2': 'Period 3\nClass VII',
      '3': 'Period 4\nClass VI',
      '4': 'Period 5\nClass VII',
      '5': 'Period 6\nClass VI',
    },
    {
      '0': 'Period 1\nClass VI',
      '1': 'Period 2\nClass VII',
      '2': 'Period 3\nClass VII',
      '3': 'Period 4\nClass VI',
      '4': 'Period 5\nClass VII',
      '5': 'Period 6\nClass VI',
    },
    {
      '0': 'Period 1\nClass VI',
      '1': 'Period 2\nClass VII',
      '2': 'Period 3\nClass VII',
      '3': 'Period 4\nClass VI',
      '4': 'Period 5\nClass VII',
      '5': 'Period 6\nClass VI',
    }
  ];

  @override
  _ClassroomScreenState createState() => _ClassroomScreenState();
}

class _ClassroomScreenState extends State<ClassroomScreen> {
   ScrollController _scrollController = new ScrollController();
  // ScrollController _controller2;
  double iconOffset;
  // double offset;
  bool watchLive;
   @override
  void initState() {
    iconOffset = 50.0;
    watchLive = false;
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  Widget dateTiles(int i) {
    DateFormat _dateFormat = DateFormat.yMMMd();
    DateFormat _dateFormatDay = DateFormat.E();
    var date = DateTime.now();
    int hrs = date.hour;
    int mts = date.minute;
    String formattedDay = _dateFormatDay.format(date);
    String formattedDate = _dateFormat.format(date.subtract(Duration(days: i)));
    Map<String, dynamic> timeTable;
    print(formattedDay);
    switch (formattedDay) {
      case 'Mon':
        timeTable = ClassroomScreen.timeTableList[0];
        break;
      case 'Tue':
        timeTable = ClassroomScreen.timeTableList[1];
        break;
      case 'Wed':
        timeTable = ClassroomScreen.timeTableList[2];
        break;
      case 'Thu':
        timeTable = ClassroomScreen.timeTableList[3];
        break;
      case 'Fri':
        timeTable = ClassroomScreen.timeTableList[4];
        break;
      default:
        timeTable = ClassroomScreen.timeTableList[2];
    }
    print('num: ${timeTable['0']}');

    // List<Widget> _periods = [];
    // for (int i = 0; i < 7; i++) _periods.add(periodWidgets(i, formattedDay));
    return Container(
        child: Column(children: [
      Padding(
          padding: const EdgeInsets.all(8.0),
          child: Card(
              elevation: 8,
              color: Colors.grey[200],
              child: IntrinsicHeight(
                  child: Row(children: <Widget>[
                Container(
                  width: 60,
                  color: Colors.orange[200],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        formattedDate.substring(
                            4, (formattedDate[6] == ',') ? 6 : 5),
                        style: TextStyle(fontSize: 28),
                      ),
                      Text(
                        formattedDate.substring(0, 3),
                        style: TextStyle(fontSize: 16),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: NotificationListener<ScrollNotification>(
                    onNotification: (ScrollNotification scrollInfo) {
                      print('scrolling.... ${scrollInfo.metrics.pixels}');
                      _scrollController.jumpTo(scrollInfo.metrics.pixels);
                      return false;
                    },
                    child: SingleChildScrollView(
                      // controller: _scrollController,
                      scrollDirection: Axis.horizontal,
                      child: Container(
                        decoration: BoxDecoration(
                            gradient: LinearGradient(colors: [
                          Colors.greenAccent[100],
                          Colors.greenAccent[400]
                        ])),
                        child: Row(
                            children: List.generate(6, (index) {
                          // print(timeTable['$index'].toString());
                          if(hrs == (15+index) && i == 0) {
                            setState(() {
                              watchLive = true;
                            });
                          }
                          else
                            setState(() {
                              watchLive = false;
                            });
                            
                          return Row(
                            children: <Widget>[
                              GestureDetector(
                                behavior: HitTestBehavior.translucent,
                                onTap: (){
                                  watchLive
                                  ? Navigator.of(context).pushNamed('/live')
                                  : Navigator.of(context).pushNamed('/discussions');
                                },
                                child: Container(
                                    height: 80,
                                    width: 100,
                                    decoration: BoxDecoration(
                                        gradient: i == 0
                                            ? LinearGradient(colors: [
                                                Colors.deepOrange[
                                                    (index + 1) * 100],
                                                Colors.deepOrange[
                                                    100 + ((index + 1) * 100)]
                                              ])
                                            : null),
                                    // color: Colors.deepOrange[100+(index*100)],
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                        crossAxisAlignment: CrossAxisAlignment.center,
                                        children: <Widget>[
                                          Text(
                                            timeTable['$index'].toString(),
                                            style: TextStyle(
                                              fontSize: 12,
                                            ),
                                            textAlign: TextAlign.center,
                                            overflow: TextOverflow.clip,
                                          ),
                                          hrs == (15+index) && i == 0
                                          ?Align(
                                            alignment: Alignment.bottomRight,
                                            child: IntrinsicWidth(
                                              child: Row(
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: <Widget>[
                                                  Icon(Icons.my_location,color: Colors.red[800],),
                                                  Text('Enter\nClass ')
                                                ],
                                              ),
                                            ),
                                          )
                                          :Container()
                                        ],
                                      ),
                                    )),
                              ),
                              VerticalDivider(
                                thickness: 1,
                                width: 1,
                                color: Colors.white,
                              )
                            ],
                          );
                        })),
                      ),
                    ),
                  ),
                ),
              ]))))
    ]));
  }

  @override
  Widget build(BuildContext context) {
    int hr;
    List<Widget> _dateTileWidgets = [];
    for (int i = 0; i < 20; i++) _dateTileWidgets.add(dateTiles(i));
    return Scaffold(
        body: Column(
      children: <Widget>[
        DigiCampusAppbar(
          icon: Icons.close,
          onDrawerTapped: () {
            Navigator.of(context).pop();
          },
        ),
        SizedBox(height: 12),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 10.0),
          height: 50,
          child: SingleChildScrollView(
            // controller: _controller2,
            controller: _scrollController,
            scrollDirection: Axis.horizontal,
            child: Container(
                height: 30,
                color: Colors.grey[300],
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 50),
                margin: EdgeInsets.only(top: 10, bottom: 10),
                child: Row(
                    children: List.generate(8, (index) {
                  hr = 9 + index;
                  return Row(
                    children: <Widget>[Text('$hr:00'), SizedBox(width: 65)],
                  );
                }))),
          ),
        ),
        Expanded(
            child: SingleChildScrollView(
                child: Column(
          children: _dateTileWidgets,
        ))),
      ],
    ));
  }
  
}