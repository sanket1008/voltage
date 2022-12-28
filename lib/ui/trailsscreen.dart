import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utility/curvepaint.dart';

class TrailsScreen extends StatelessWidget {
  const TrailsScreen({Key? key}) : super(key: key);

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
            const SizedBox(height: 40,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Text("Trails",style: TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),),
                Spacer(flex: 4,),
                Icon(Icons.ice_skating)
              ],
            )
          ],
        ),
      ),
    );
  }
}
