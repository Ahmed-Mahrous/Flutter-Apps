import 'package:flutter/material.dart';

class NoWeatherBody extends StatelessWidget {
  const NoWeatherBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
         crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'There is no weather 😔',
              style: TextStyle(
                fontSize: 25,
              ),
            ),
            Text(
              ' Start searching now 🔍',
              style: TextStyle(
                fontSize: 25,
              ),
            )
          ],
        ),
      ),
    );
  }
}
