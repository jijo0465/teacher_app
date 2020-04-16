import 'package:flutter/material.dart';

class DigiMenuCard extends StatelessWidget {
  const DigiMenuCard(
      {Key key,
      this.menuIcon,
      this.title,
      this.subtitle,
      this.value,
      this.onPressed, this.imagePath})
      : super(key: key);
  final IconData menuIcon;
  final String title, subtitle, value;
  final VoidCallback onPressed;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child:Container(
        height: 140,
        width: 140,
              decoration: BoxDecoration(
                color: Colors.amber,
                borderRadius: new BorderRadius.circular(8.0),
                image: DecorationImage(
                    image: AssetImage(
                      imagePath,
                    ),
                    fit: BoxFit.fill),
                boxShadow: [
                  BoxShadow(
                    color: Colors.white,
                    offset: Offset(0.0, 0.0), //(x,y)
                    blurRadius: 0.0,
                  ),
                ],
              ),
            ),
    );
  }
}
