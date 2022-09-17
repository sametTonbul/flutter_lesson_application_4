import 'dart:math';
import 'package:flutter/material.dart';
import 'package:flutter_lesson_app_4/page2.dart';

class PageQuess extends StatefulWidget {
  const PageQuess({super.key});
  @override
  State<PageQuess> createState() => _PageQuessState();}

class _PageQuessState extends State<PageQuess> {

  var textFieldController = TextEditingController();
  var randomNumber = 0;
  var remaining = 5;
  var toHint = '';
  bool textFieldNonEmpty = false;

  @override
  void initState() {
      super.initState();
    randomNumber = Random().nextInt(101);
    // ignore: avoid_print
    print('random number at startApp : $randomNumber');}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 196, 232, 229),
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: const Text('PAGE QUESS',selectionColor: Colors.white),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children:[
            Text('REMAINING : $remaining',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Text('HELP : $toHint',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: textFieldController,
                keyboardType: TextInputType.number, 
                textAlign: TextAlign.center,
                decoration: const InputDecoration(
                  labelText: 'QUESS WRITE',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0)))),),),
             SizedBox(
              width: 200,
              height: 50,
              child: ElevatedButton(
                child: const Text('QUESS IT'),
                onPressed:() {
                  setState(() {remaining = remaining-1;});
                    int userQuess = int.parse(textFieldController.text);
                    if (userQuess == randomNumber) 
                    {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) =>  PageResult(result: true)));}
                    if (userQuess < randomNumber) 
                    {setState(() {toHint = 'Quess is Low, Please increase it';});}
                    if (userQuess > randomNumber) 
                    {setState(() {toHint = 'Quess is High, Please reduce it';});}
                    if (remaining == 0)
                    {Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => PageResult(result: false)));}
                    textFieldController.text = '';}
              ),
            ), 
          ], // Children
        ),
      ),
    );
  }
}