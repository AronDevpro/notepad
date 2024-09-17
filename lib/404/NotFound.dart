import 'package:flutter/material.dart';

import '../Common_widget/Background.dart';

class Notfound extends StatelessWidget {
  const Notfound({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      button: const FloatingActionButton(
        onPressed: null,
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        child: Icon(Icons.add,size: 30,),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img/notfound.png',),
          const SizedBox(height: 10,),
          const Text("No Notes found matching your search", textAlign: TextAlign.center, style: TextStyle(color: Colors.white,),)
        ],
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text('This is a demo alert dialog.'),
                Text('Would you like to approve of this message?'),
              ],
            ),
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('Approve'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
