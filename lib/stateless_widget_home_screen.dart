import 'package:flutter/material.dart';

class StatelessWidgetHomeScreen extends StatelessWidget {
  StatelessWidgetHomeScreen({Key? key}) : super(key: key);
  int x = 0;
  @override
  Widget build(BuildContext context) {
    print('build');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text('Provider Tetorials'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Center(
                child: Text(
              x.toString(),
              style: TextStyle(fontSize: 50),
            )),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          x++;
          print(x);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
