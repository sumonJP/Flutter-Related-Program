import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:hms/Student.dart';


class CardItem extends StatelessWidget {
  const CardItem({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Page2",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage3(),
    );
  }
}

class MyHomePage3 extends StatefulWidget {
  const MyHomePage3({super.key});

  @override
  State<MyHomePage3> createState() => _MyHomePage3State();
}

class _MyHomePage3State extends State<MyHomePage3> {
  late List<String> student2;
  List<Student> slist=[
Student("name", "details", "photo"),

  ];

  TextEditingController name = TextEditingController();
  TextEditingController password = TextEditingController();

  @override
  void dispose() {
    // Don't forget to dispose the controller when it's no longer needed to avoid memory leaks
    name.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<String> student = [
      "rahim",
      "karim",
      "jaman",
      "rashid",
      "jalal",
      "ahamed",
      "jasim",
      "jihad"
    ];

    List<Student> slist = [
      Student(
          "shamim",
          "Basically, each flower consists of a floral axis upon which are borne the essential "
              "organs of reproduction (stamens and pistils) and usually accessory organs (sepals and petals);"
              " the latter may serve to both attract pollinating insects and protect",
          "https://e7.pngegg.com/pngimages/119/921/png-clipart-flower-dahlia-flower-flower-garden-annual-plant-thumbnail.png"),
      Student(
          "ahamed",
          "Basically, each flower consists of a floral axis upon which are borne the essential "
              "organs of reproduction (stamens and pistils) and usually accessory organs (sepals and petals);"
              " the latter may serve to both attract pollinating insects and protect",
          "https://t3.ftcdn.net/jpg/05/27/02/36/240_F_527023659_ALnekTGD1kmW7cyErGG6sM0kBDZc3PMF.jpg"),
      Student(
          "jaman",
          "Basically, each flower consists of a floral axis upon which are borne the essential "
              "organs of reproduction (stamens and pistils) and usually accessory organs (sepals and petals);"
              " the latter may serve to both attract pollinating insects and protect",
          "https://t3.ftcdn.net/jpg/05/22/44/20/240_F_522442081_Re5UaVSmuQbYkgZwXRfqCYwaod0s9h1h.jpg"),
      Student(
          "jihad",
          "Basically, each flower consists of a floral axis upon which are borne the essential "
              "organs of reproduction (stamens and pistils) and usually accessory organs (sepals and petals);"
              " the latter may serve to both attract pollinating insects and protect",
          "https://t4.ftcdn.net/jpg/07/03/84/63/240_F_703846399_KbNZUwHaH73GbAywVXoxuMKLhCn8s3Mm.jpg"),
      Student(
          "jasi,",
          "Basically, each flower consists of a floral axis upon which are borne the essential "
              "organs of reproduction (stamens and pistils) and usually accessory organs (sepals and petals);"
              " the latter may serve to both attract pollinating insects and protect",
          "https://e7.pngegg.com/pngimages/119/921/png-clipart-flower-dahlia-flower-flower-garden-annual-plant-thumbnail.png"),
    ];
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
          title: const Text("Home Page"),
        ),
        body: ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: slist.length,
          itemBuilder: (BuildContext context, int index) {
            return Center(
                child: Card(
                  elevation: 50,
                  shadowColor: Colors.black,
                  color: Colors.amber[100],
                  child: SizedBox(
                    height: 500,
                    width: 300,
                    child: Padding(
                      padding: EdgeInsets.all(10),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            radius: 100,
                            backgroundImage:
                            NetworkImage(slist[index].photo.toString()),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            slist[index].name.toString(),
                            style: TextStyle(
                                color: Colors.red,
                                fontSize: 30,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(
                            slist[index].details.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                              height: 50,
                              width: double.infinity,
                              child: Padding(
                                padding: EdgeInsets.all(8),
                                child: ElevatedButton(
                                  onPressed: () {},
                                  child: Text("click me"),
                                  style: ButtonStyle(
                                      backgroundColor:
                                      WidgetStateProperty.all(Colors.green)),
                                ),
                              ))
                        ],
                      ),
                    ),
                  ),
                ));
          },
        ));
  }
}