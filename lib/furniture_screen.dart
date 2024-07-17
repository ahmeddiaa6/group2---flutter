import 'package:flutter/material.dart';

class FurnitureScreen extends StatelessWidget {
  const FurnitureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SizedBox(
        width: 390,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Image.asset("assets/sofa.png",width: 287,height: 303,),
                Icon(Icons.favorite_border),
              ]
          
            )
          ]
        ),
      ),
    );
  }
}