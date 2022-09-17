import 'package:flutter/material.dart';
import 'package:flutter_lesson_app_4/page1.dart';
void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FlutterLessonAppQuessGame',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,),
      home: const MyHomePage(title: 'Flutter Lesson App-4(Quess Game)'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: const Color.fromARGB(255, 196, 232, 229),
      appBar: AppBar(
        backgroundColor: Colors.black54,
        centerTitle: true,
        title: Text(
          widget.title,
          selectionColor: Colors.white),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
                  const Text(
                    'GUESS GAME',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold),),
                  Image.asset('pictures/quess.jpg'),
                  SizedBox(
                    width: 200,
                    height: 50,
                      child: ElevatedButton(
                        child: const Text('Start Game'),
                    onPressed:() {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const PageQuess()));
                    }
                    
                    
              ),
            ),      
          ],
        ),
      ),
    );
  }
}
