import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:voltage/ui/trailsscreen.dart';

import '../common/button.dart';
import '../utility/curvepaint.dart';

class SurveyScreen extends StatelessWidget {
  const SurveyScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              CustomPaint(
                //size: MediaQuery.of(context).size,
                painter: CurvePainter(),
              ),
            ],
          ),
          const SizedBox(height: 100,),
          const Align(alignment:Alignment.center,
              child: Text("Let's impact world with power ",style: TextStyle(color: Colors.white,fontSize: 16),)),
          SizedBox(height: 10),
          Align(
            alignment: Alignment.center,
            child: Image.asset(
              'images/Artboard.png',
              fit: BoxFit.contain,
              alignment: Alignment.center,
              width: 350,
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.05,),
          const Align(
            alignment: Alignment.center,
            child: Text(
              "Technology is very simple tool to interlock your decision of ownership beware of everything",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.black,
                fontSize: 15.00,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          SizedBox(height: MediaQuery.of(context).size.height*0.20,),
          CommonButton(
              text: "Survey",
              onPress: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) {
                      return const TrailsScreen();
                    }));
              },
              textColor: Colors.white,
              backGroundColor: const Color(0xFF108768)),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    ));
  }
}
