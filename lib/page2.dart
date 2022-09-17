import 'package:flutter/material.dart';

class PageResult extends StatefulWidget {
  bool result;
  PageResult({required this.result});
  @override
  State<PageResult> createState() => _PageResultState();}

class _PageResultState extends State<PageResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 232, 229),
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text('PAGE RESULT',
          selectionColor: Colors.white),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
          widget.result ? Image.asset('pictures/smiley.png') : Image.asset('pictures/crying.jpg'),
          
          Text(
            widget.result ? 'WON' : 'LOST',
            style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold),),
          SizedBox(
            width: 200,
            height: 50,
            child:ElevatedButton(
              child: const Text('TRY AGAIN'),
              onPressed:() {Navigator.of(context).popUntil((route) => route.isFirst);}),
            ),
          ],
        ),
      ),
    );
  }
}