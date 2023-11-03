import 'package:atfrag/core/utliz/stayles.dart';
import 'package:flutter/material.dart';

class ReViews extends StatelessWidget {
  const ReViews({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.only(bottom: 8.0),
          child: Row(
            children: [
              const Column(
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage:
                        AssetImage("assets/image/actors/actor0.png"),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "6.3",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                width: 8,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Iqbal Shafiq Rozaan",
                    style: Styles.textStyle16,
                  ),
                  SizedBox(
                    width: MediaQuery.sizeOf(context).width * 0.7,
                    child: Text(
                      "From DC Comics comes the Suicide Squad, an antihero team of incarcerated supervillains who act as deniable assets for the United States government.",
                      style: Styles.textStyle14.copyWith(fontSize: 12),
                      maxLines: 4,
                    ),
                  ),

                 
                ],
              )
            ],
          ),
        );
      },
    );
  }
}
