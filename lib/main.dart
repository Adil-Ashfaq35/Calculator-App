
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
   title: "Calculator App",
      theme: new ThemeData(
        primarySwatch: Colors.red),
      home: new HomePage(),
    );
  }
}
class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

 class _HomePageState extends State<HomePage>
 {

  var num1=0,num2=0;
  var sum=0;
  final  TextEditingController text1=TextEditingController(text: "0");
  final TextEditingController text2 =TextEditingController(text: "0");
  void doAddition() {
    setState(() {
      num1 = int.parse(text1.text);
      num2 = int.parse(text2.text);

      sum = num1 + num2;

    });
  }
    void doSub() {
      setState(() {
        num1 = int.parse(text1.text);
        num2 = int.parse(text2.text);

        sum = num1 - num2;
      });
    }
      void doMul() {
        setState(() {
          num1 = int.parse(text1.text);
          num2 = int.parse(text2.text);

          sum = num1 * num2;
        });
      }
        void doDiv() {
          setState(() {
            num1 = int.parse(text1.text);
            num2 = int.parse(text2.text);

            sum = num1 ~/ num2;
          });
        }
          void doClear() {
            setState(() {
              text1.text = "0";
              text2.text = "0";
              sum=0;

            });
          }


        @override
        Widget build(BuildContext context) {
          return new Scaffold(
            appBar: new AppBar(
                title: Center(
                  child: new Text("CALCULATOR", style: new TextStyle(
                      color: Colors.white

                  ),),
                )
            ),
            body: new Container(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  new Text("Output:$sum", style: TextStyle(color: Colors.black,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold),),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        hintText: "Enter First Number"

                    ),
                    controller: text1,
                  ),
                  new TextField(
                    keyboardType: TextInputType.number,
                    decoration: new InputDecoration(
                        hintText: "Enter secound Number"

                    ),
                    controller: text2,
                  ),
                  new Padding(padding: EdgeInsets.only(top: 20.0),),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new MaterialButton(
                        child: Text("+", style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.bold),),
                        color: Colors.redAccent,
                        onPressed: () => {doAddition()},
                      ),
                      new MaterialButton(
                        child: Text("-", style: TextStyle(fontSize: 22.0,
                            fontWeight: FontWeight.bold),),
                        color: Colors.redAccent,
                        onPressed: () => {doSub()},
                      ),
                    ],
                  ),

                  new Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      new MaterialButton(
                        child: Text("*", style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.bold),),
                        color: Colors.redAccent,

                        onPressed: () => {doMul()},
                      ),
                      new MaterialButton(
                        child: Text("/", style: TextStyle(fontSize: 20.0,
                            fontWeight: FontWeight.bold),),
                        color: Colors.redAccent,
                        onPressed: () => {doDiv()},
                      ),
                    ],
                  ),
                  new Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        new MaterialButton(
                          child: Text("Clear",style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),

                          ),
                          color: Colors.redAccent,
                          onPressed: ()=>{doClear()},
                        ),

                      ],
                  ),
                ],

              ),
            ),

          );
        }
      }







