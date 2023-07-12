import 'package:flutter/material.dart';

import '../../styles/styles.dart';

class MyCircularProgressIndicator extends StatelessWidget {
  const MyCircularProgressIndicator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: 30,
        height: 30,
        child: /*CupertinoActivityIndicator()*/
            //
            CircularProgressIndicator(
          strokeWidth: 2,
          color: myColorActivity,
        ),
      ),
    );
  }
}
