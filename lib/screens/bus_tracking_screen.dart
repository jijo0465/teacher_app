import 'package:flutter/material.dart';

class BusTrackingScreen extends StatelessWidget {
  const BusTrackingScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Track Bus'),
      ),
      body: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.black38,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.only(bottom:12),
              child: RaisedButton(
                
                onPressed: () {},
                child: Text('Contact driver'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
