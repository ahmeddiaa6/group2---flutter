import 'package:flutter/material.dart';
import 'package:project/counter_provider.dart';
import 'package:provider/provider.dart';

import 'favourite_provider.dart';

class FurnitureScreen extends StatelessWidget {
  const FurnitureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: 390,
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(Icons.arrow_back),
                Image.asset(
                  "assets/sofa.png",
                  width: 287,
                  height: 303,
                ),
                InkWell(
                  onTap: () {
                    context.read<FavouriteProvider>().toggle();
                  },
                  child: Consumer<FavouriteProvider>(
                      builder: (context, provider, _) {
                    return provider.isFavourite
                        ? Icon(Icons.favorite, color: Colors.red)
                        : Icon(Icons.favorite_border);
                  }),
                ),
              ],
            ),
            SizedBox(
              height: 21,
            ),
            Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              // mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Text(
                    "Room Sofa",
                    style: TextStyle(fontWeight: FontWeight.w600, fontSize: 32),
                  ),
                ),
                // Spacer(),
                Container(
                  decoration: BoxDecoration(
                      color: Color(0xffE7E7E7),
                      borderRadius: BorderRadius.circular(5)),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: () {                      
                          context.read<CounterProvider>().decrement();
                          print("decrement");
                        },
                        child: Icon(Icons.remove),
                      ),
                      Consumer<CounterProvider>(
                        builder: (context,provider,_) {
                          return Text("${provider.counter}");
                        }
                      ),
                      InkWell(
                        onTap: () {
                          Provider.of<CounterProvider>(context,listen: false).increment();
                          print("inctement");
                        },
                        child: Icon(Icons.add),
                      ),
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
