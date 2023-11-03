import 'package:flutter/material.dart';

import '../../../../constancs.dart';
import '../../../../core/utliz/stayles.dart';

class Cast extends StatelessWidget {
  const Cast({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
        crossAxisCount: 2,
        shrinkWrap: true,
        primary: false,
        crossAxisSpacing: 2,
        children: List.generate(4, (index) {
          return GridTile(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 50,
                  backgroundImage:
                      AssetImage("assets/image/actors/actor${index + 1}.png"),
                ),
                const SizedBox(
                  height: 8,
                ),
                Text(actorsname[index], style: Styles.textStyle16)
              ],
            ),
          );
        }));
  }
}
