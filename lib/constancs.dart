import 'package:flutter/material.dart';

import 'core/utliz/stayles.dart';
import 'features/details/cubit/details_cubit.dart';

const backgroundcolor = Color.fromRGBO(36, 42, 50, 1);
const hidecolor = Color.fromRGBO(103, 104, 109, 1);
final List<String> actorsname = [
  "Tom Holland",
  "Zendaya",
  "Benedict Cumberbatch",
  "Brad Pitt"
];


  // ignore: non_constant_identifier_names
  GestureDetector DetailsSubject(BuildContext context, String text, int id) {
    return GestureDetector(
      onTap: () {
        DetailsCubit.get(context).setDetailsObjectIndex(id);
      },
      child: Text(text,
          textAlign: TextAlign.center,
          style: Styles.textStyle16.copyWith(
            color: DetailsCubit.get(context).detailsobjectindex == id
                ? Colors.red
                : Colors.white,
          )),
    );
  }
