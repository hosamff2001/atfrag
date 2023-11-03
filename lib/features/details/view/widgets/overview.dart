import 'package:atfrag/core/utliz/stayles.dart';
import 'package:flutter/material.dart';

class OverView extends StatelessWidget {
  const OverView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Text(
        "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government, undertaking high-risk black ops missions in exchange for commuted prison sentences.",
        style: Styles.textStyle16,
      ),
    );
  }
}
