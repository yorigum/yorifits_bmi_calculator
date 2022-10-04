import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:yorifits_bmi_calculator/reusable_card.dart';

import 'icon_content.dart';

const bottomCornerHeight = 80.0;
const activeCardColor = Color(0xff1d1e33);
const inActiveCardColor = Color(0xff111328);
const bottomCornerColor = Color(0xffeb1555);

enum Gender { male, female }

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Gender selectedGender = Gender.male;

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
            children: <Widget>[
              Expanded(
                child: ReusableCard(
                  colour: selectedGender == Gender.male
                      ? activeCardColor
                      : inActiveCardColor,
                  cardChild: const IconContent(
                    icon: FontAwesomeIcons.mars,
                    label: 'MALE',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.male;
                    });
                  },
                ),
              ),
              Expanded(
                child: ReusableCard(
                  colour: selectedGender == Gender.female
                      ? activeCardColor
                      : inActiveCardColor,
                  cardChild: const IconContent(
                    icon: FontAwesomeIcons.venus,
                    label: 'FEMALE',
                  ),
                  onPress: () {
                    setState(() {
                      selectedGender = Gender.female;
                    });
                  },
                ),
              )
            ],
          )),
         Expanded(child: ReusableCard(colour: activeCardColor, onPress:(){},)),
          Expanded(
              child: Row(
            children: <Widget>[
              Expanded(child: ReusableCard(colour: activeCardColor, onPress: (){},)),
              Expanded(child: ReusableCard(colour: activeCardColor, onPress: (){},))
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
