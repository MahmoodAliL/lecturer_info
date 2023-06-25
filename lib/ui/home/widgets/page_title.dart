import 'package:flutter/material.dart';

class PageTitle extends StatelessWidget {
  const PageTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text('معلومات الخبراء العلميين',
        style: Theme.of(context).textTheme.headlineSmall);
  }
}
