import 'package:flutter/material.dart';

const bottomCornerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const bottomCornerColor = Color(0xffeb1555);

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: const Color(0xFF0a0E21),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
              child: Row(
            children: const <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColor)),
              Expanded(child: ReusableCard(colour: activeCardColor))
            ],
          )),
          const Expanded(child: ReusableCard(colour: Color(0xff1d1e33))),
          Expanded(
              child: Row(
            children: const <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColor)),
              Expanded(child: ReusableCard(colour: activeCardColor))
            ],
          )),
          Container(
            color: bottomCornerColor,
            margin: const EdgeInsets.only(top: 10.0),
            width: double.infinity,
            height: bottomCornerHeight,
          )
        ],
      ),
    );
  }
}


class ReusableCard extends StatelessWidget {
  const ReusableCard({required this.colour});
  final Color colour;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
          color: colour, borderRadius: BorderRadius.circular(10.0)),
    );
  }
}
