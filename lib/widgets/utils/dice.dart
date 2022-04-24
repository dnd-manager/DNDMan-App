import 'dart:math';

import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceWidget extends StatefulWidget {
  final int maxValue;

  const DiceWidget({Key? key, required this.maxValue}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<DiceWidget> {
  int _currentValue = 0;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.maxValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white, width: 2),
            ),
            child: Align(
              child: Text(
                _currentValue.toString(),
                style: GoogleFonts.notoSerif(
                  fontSize: 25,
                ),
              ),
              alignment: Alignment.center,
            ),
            width: 70,
            height: 70,
          ),
        ),
        DNDManButtonWidget(
          onPressed: () {
            reRollValue();
          },
          child: Text(
            "D" + widget.maxValue.toString(),
            style: GoogleFonts.notoSans(
              fontSize: 15,
            ),
          ),
          width: 70,
          height: 35,
          padding: const EdgeInsets.only(top: 10),
        ),
      ],
    );
  }

  void reRollValue({int i = 0}) {
    if (i >= 20) {
      return;
    }
    var num = randValue(i);
    num.then((value) => setState(() {
      _currentValue = value;
      reRollValue(i: i + 1);
    }));
  }

  Future<int> randValue(int i) {
    return Future.delayed(Duration(milliseconds: i * 10), () => random(1, widget.maxValue));
  }

  static int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }
}
