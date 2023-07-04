import 'package:flutter/material.dart';

class OnBoardingSCreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/1st page.jpg'),
          ),
        ),
        SizedBox(height: 5.0),
        Text(
          'Calculate your point for the FUOYE P -UTME using your UTME score and 0- Level result(s)',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF089048),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Crimson Pro',
          ),
        ),
        SizedBox(height: 10.0),
        Container(
          width: 165,
          height: 40,
          child: ElevatedButton(
            onPressed: () {
              // Handle button click
              print('Button clicked');
            },
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF089048),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              'Get Started',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: 'Crimson Pro'),
            ),
          ),
        ),
        SizedBox(height: 5.0),
        onBoardingDot(
            index: 2,
            changedValue: 2,
            setpositionwidth: 20.0,
            kAnimationDotDuration: Duration(seconds: 1)),
      ],
    );
  }

  AnimatedContainer onBoardingDot(
      {int? index,
      changedValue,
      double? setpositionwidth,
      kAnimationDotDuration}) {
    return AnimatedContainer(
      margin: const EdgeInsets.all(10),
      duration: kAnimationDotDuration,
      height: 12,
      width: index == changedValue ? setpositionwidth : 10,
      decoration: BoxDecoration(
        border:
            Border.all(width: 2, color: Colors.amberAccent.withOpacity(0.5)),
        color: index == changedValue
            ? Colors.yellow[700]
            : const Color(0xFFE65100),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}
