import 'package:flutter/material.dart';
void main()=>runApp(calc());
class calc extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Clculator App",
      home:home() ,
    );
    throw UnimplementedError();
  }
}
class home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return calculator();

      throw UnimplementedError();

  }
}

class calculator extends State<home>{
  var num1=0,num2=0,sum=0;
  final TextEditingController t1 = new TextEditingController(text: "0");
  final TextEditingController t2 = new TextEditingController(text: "0");
  void asum()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1+num2;
    });
  }
  void aminus()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1-num2;
    });
  }
  void amul()
  {
    setState(() {
      num1=int.parse(t1.text);
      num2=int.parse(t2.text);
      sum=num1*num2;
    });
  }
  void doclear()
  {
    setState(() {
      t1.text="0";
      t2.text="0";
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          children: <Widget>[
                TextField(
                  keyboardType:TextInputType.number ,
                  decoration: InputDecoration(
                    hintText: "Enter your number",
                  ),
                  controller: t1,
                ),
            TextField(
              keyboardType:TextInputType.number ,
              decoration: InputDecoration(
                hintText: "Enter your number",
              ),
              controller: t2,
            ),
            Text("Output:$sum",style:TextStyle(color: Colors.blue,fontSize: 40.0),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                RaisedButton(
                  color: Colors.red,
                  onPressed: (){
                    asum();
                  },
                  child: Text("+"),
                ),

                RaisedButton(
                  onPressed: (){
                    aminus();
                  },
                  child: Text("-"),
                ),
                RaisedButton(
                  color: Colors.red,
                  onPressed: amul,
                  child: Text("*"),
                ),

              ],
            ),
            RaisedButton(
              onPressed:doclear,
              child: Text("Clear"),
            ),
          ],
        ),
      ),
    );

    throw UnimplementedError();
  }
}