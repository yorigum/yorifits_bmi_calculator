import 'package:flutter/cupertino.dart';

class IconContent extends StatelessWidget {
  const IconContent({super.key, required this.icon, required this.label});

  static const labelTextStyle =  TextStyle(fontSize: 18.0, color: Color(0xFF8d8e98));

  final IconData icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(icon, size: 80.0),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          label,
          style:labelTextStyle,
        )
      ],
    );
  }
}
