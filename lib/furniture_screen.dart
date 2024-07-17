import 'package:flutter/material.dart';
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
            )
          ],
        ),
      ),
    );
  }
}
