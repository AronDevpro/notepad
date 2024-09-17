import 'package:flutter/material.dart';

import '../Common_widget/Background.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Background(
      button: FloatingActionButton(
        onPressed: () => _showMyDialog(context),
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        child: const Icon(Icons.add,size: 30,),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/img/note.jpg',),
          const SizedBox(height: 10,),
          const Text("Click the 'Add' button to start noting down your thoughts, inspiration and reminders.", textAlign: TextAlign.center, style: TextStyle(color: Colors.white,),)
        ],
      ),
    );
  }

  Future<void> _showMyDialog(context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false,
      builder: (BuildContext context) {
        final screenWidth = MediaQuery.of(context).size.width;
        return AlertDialog(
          content: SizedBox(
            width: screenWidth,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('TITLE', style: TextStyle(fontSize: 15, color: Colors.red),),
                  const SizedBox(height: 2,),
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'ENTER YOUR NOTE TITLE',
                      labelStyle: TextStyle(fontSize: 15)
                    ),
                  ),
                  const SizedBox(height: 15,),
                  const Text('CONTENT',textAlign: TextAlign.start, style: TextStyle(fontSize: 15, color: Colors.red),),
                  const SizedBox(height: 2,),
                  const TextField(
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'ENTER YOUR DESCRIPTION',
                        labelStyle: TextStyle(fontSize: 15),
                    ),
                    minLines: 6,
                    maxLines: null,
                  ),
                  const SizedBox(height: 15,),
                  const Text('# TAGS',textAlign: TextAlign.start, style: TextStyle(fontSize: 15, color: Colors.red),),
                  const SizedBox(height: 2,),
                  Row(
                    children: [
                      const Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Add Tags',
                              labelStyle: TextStyle(fontSize: 15)
                          ),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(width: 3,color: Colors.blue)
                        ),
                        child: IconButton(onPressed: null, icon: Icon(Icons.add, size: 25,), style: ButtonStyle(
                          foregroundColor: MaterialStateProperty.all(Colors.blue),
                        ),),
                      )
                    ],
                  ),
                  const SizedBox(height: 10,),
                ],
              )
            ),
          ),
          actions: <Widget>[
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.blue),
                    padding: MaterialStateProperty.all(const EdgeInsets.all(5))
                ),
                child: const Text('ADD', style: TextStyle(color: Colors.white),),
              ),
            ),
          ],
        );
      },
    );
  }
}
