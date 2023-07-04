import 'package:flutter/material.dart';

class OnBoardingSCreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Image.asset('images/2nd page.jpg'),
          ),
        ),
        SizedBox(height: 20.0),
        Text(
          'See the various requirements for the different faculties or department',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Color(0xFF089048),
            fontSize: 18,
            fontWeight: FontWeight.bold,
            fontFamily: 'Crimson Pro',
          ),
        ),
        SizedBox(height: 40.0),
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
              'Start',
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontSize: 16, color: Colors.white, fontFamily: 'Crimson Pro'),
            ),
          ),
        ),
      ],
    );
  }
}
