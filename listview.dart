import 'package:flutter/material.dart';
import 'package:hms/main.dart';

class Listview extends StatelessWidget {
  const Listview({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyPhone(),
    );
  }
}

class MyPhone extends StatefulWidget {
  const MyPhone({super.key});

  @override
  State<MyPhone> createState() => _MyPhoneState();
}

class _MyPhoneState extends State<MyPhone> {
  List <String> student=["Rahim","Korim","Sumon"];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleSpacing: 100,
        title: Text('Welcome to Listview Page'),
        backgroundColor: Colors.pink,
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(8),
        itemCount: student.length,
        itemBuilder: (BuildContext context,int index){
          return Container(
            margin: EdgeInsets.all(2),
            height: 50,
            color: Colors.amber[200],
            child: Center(
              child: Text(student [index]),
            ),


          ) ;
        },

      ),

      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_back),
        tooltip: 'go home',
        onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>MyApp()));
          // Navigator.pop(context); ( kaj kora ai ta )
        },
      ),
    );
  }
}