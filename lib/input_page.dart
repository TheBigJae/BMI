import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconcontent.dart';
import 'reusablecard.dart';

const activeCardColor = Color(0xFF1D1E33);
const inActiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      print('Male card was pressed');
                    },
                    child: ReusableCard(
                      colour: inActiveCardColor,
                      cardChild: contentW(
                        icon: FontAwesomeIcons.mars,
                        label: 'MALE',
                      ),
                    ),
                  ),
                ),
                Expanded(
                    child: ReusableCard(
                        colour: inActiveCardColor,
                        cardChild: contentW(
                          icon: FontAwesomeIcons.venus,
                          label: 'FEMALE',
                        )))
              ],
            )),
            Expanded(
                child: ReusableCard(
                    colour: Color(0xFF1D1E33),
                    cardChild: contentW(
                      icon: FontAwesomeIcons.mars,
                      label: 'MALE',
                    ))),
            Expanded(
                child: Row(
              children: [
                Expanded(
                    child: ReusableCard(
                        colour: Color(0xFF1D1E33),
                        cardChild: contentW(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        ))),
                Expanded(
                    child: ReusableCard(
                        colour: Color(0xFF1D1E33),
                        cardChild: contentW(
                          icon: FontAwesomeIcons.mars,
                          label: 'MALE',
                        )))
              ],
            )),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: 80.0,
            )
          ],
        ));
  }
}
