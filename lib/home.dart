import 'package:flutter/material.dart';
import 'package:secondproject/new_page.dart';

String naberMudur = "naber müdür";
Color colorOne = Colors.black;
Color colorTwo = Colors.white;

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 200,
              height: 200,
              color: Colors.orange,
              child: Text(
                naberMudur,
              style: TextStyle(
                color: colorOne,
                fontSize: 24,
                fontWeight: FontWeight.w500,
                backgroundColor: Colors.deepOrangeAccent,
                letterSpacing: 2,
              ),),
            ),
            ElevatedButton(onPressed: (){
              print("tıkla laaan!!!!");
              setState(() {
                naberMudur = "naber müdür 2";
                if(naberMudur == "naber müdür 2")
                  naberMudur = "naber müdür";
                else
                  naberMudur = "naber müdür 2";
              });
            },
              child: Text(naberMudur),style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.deepOrangeAccent),
            ),
            ),
            ListView(

              children: [
                GestureDetector(child: Center(child: Text("safsafsaf")),onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => NewPage()));
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

///overflow => text sıgmadıgında nasıl gözüksün bunu ayarlıyor!