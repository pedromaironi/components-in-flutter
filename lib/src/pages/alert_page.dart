import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alerts'),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(  Icons.logout, color: Colors.blue),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }
}