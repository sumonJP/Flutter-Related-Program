import 'package:flutter/material.dart';
import 'package:hms/admit.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Dream Care Hospital Ltd',
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.pink,
        ),
        body: Column(
          children: [
            Text("Home"),
            Expanded(
                child: GridView.count(
              crossAxisCount: 2,
              padding: EdgeInsets.all(20),
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              primary: false,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(30, 30),
                    child: ClipOval(
                      child: Material(
                        color: Colors.orange,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              Icon(Icons.person_3_outlined,size: 25),
                              Text("Admit",style: TextStyle(fontSize: 20),)
                            ],
                          ),
                          onTap: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Admit())
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.orange,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              Icon(Icons.email,size: 50),
                              Text("Contact",style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.orange,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              Icon(Icons.share_rounded,size: 50),
                              Text("Share",style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SizedBox.fromSize(
                    size: Size(80, 80),
                    child: ClipOval(
                      child: Material(
                        color: Colors.orange,
                        child: InkWell(
                          splashColor: Colors.green,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children:<Widget> [
                              Icon(Icons.mobile_friendly_outlined,size: 50),
                              Text("Phone",style: TextStyle(fontSize: 20),)
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            )),
          ],
        ),
      ),
    );
  }
}
