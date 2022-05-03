import 'dart:math';

import 'package:dndman_app/utils/text.dart';
import 'package:dndman_app/widgets/utils/button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DiceWidget extends StatefulWidget {
  final int maxValue;
  final int maxTryCount;
  final Function(int value)? onChanged;
  final double? width;
  final double? height;

  const DiceWidget({Key? key, required this.maxValue, this.maxTryCount = 0, this.onChanged, this.width, this.height}) : super(key: key);

  @override
  _DiceState createState() => _DiceState();
}

class _DiceState extends State<DiceWidget> {
  int _currentValue = 0;
  int _tryCount = 0;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.maxValue;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (ctx, constraints) => Column(
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
                  style: DNDTextStyle.normalText(
                    fontSize: widget.width == null ? constraints.maxWidth / 20 : widget.width! / 2.5,
                  ),
                ),
                alignment: Alignment.center,
              ),
              width: widget.width ?? constraints.maxWidth / 7,
              height: widget.height ?? constraints.maxWidth / 7,
            ),
          ),
          IgnorePointer(
            ignoring: widget.maxTryCount != 0 && _tryCount >= widget.maxTryCount,
            child: DNDManButtonWidget(
              onPressed: () {
                reRollValue();
                setState(() {
                  _tryCount++;
                });
              },
              child: Text(
                "D" + widget.maxValue.toString(),
                style: DNDTextStyle.normalText(
                  fontSize: widget.width == null ? constraints.maxWidth / 35 : widget.width! / 5,
                  color: widget.maxTryCount != 0 && _tryCount >= widget.maxTryCount ? Colors.grey : Colors.white,
                ),
              ),
              width: widget.width ?? constraints.maxWidth / 7,
              height: widget.height == null ? constraints.maxWidth / 12 : widget.height! / 2,
              padding: const EdgeInsets.only(top: 10),
              flat: false,
            ),
          ),
        ],
      ),
    );
  }

  void reRollValue({int i = 0}) {
    if (i >= 20) {
      if (widget.onChanged != null) {
        widget.onChanged!(_currentValue);
      }
      return;
    }
    var num = randValue(i);
    num.then((value) => setState(() {
      _currentValue = value;
      reRollValue(i: i + 1);
    }));
  }

  Future<int> randValue(int i) {
    return Future.delayed(Duration(milliseconds: i * 10), () => random(1, widget.maxValue + 1));
  }

  static int random(int min, int max) {
    return min + Random().nextInt(max - min);
  }
}
