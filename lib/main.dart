import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task Flutter',
      theme: ThemeData(
        // is not restarted.
        primarySwatch: Colors.orange,
      ),
      home:  MyHomePage(),
    );
  }
}
class  MyHomePage extends StatelessWidget {
  FocusNode myFocusNode = new FocusNode();
  @override
  Widget build(BuildContext context) {
    const colorr = const Color(0xFFffecb3);

    return Scaffold(
      backgroundColor: colorr,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.orange,
        title: Text("Software Engineering Depatenemt",style: TextStyle(color: colorr ))),
        body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20 ,vertical: 20),
            child:
        Column(
          children: [
            Text("Name student"),
            SizedBox(height: 15,),
            Image.asset("assets/image.png"),
            Row(
                children: <Widget>[
                  Expanded(
                      child: Divider(color: Colors.black)
                  ),
                ]
            ),
            SizedBox(height: 10,),
            TextFormField(
              decoration: InputDecoration(
                icon: Icon(Icons.person),
                labelText: "User Name",
                  labelStyle: TextStyle(
                      color: myFocusNode.hasFocus ? Colors.black38 : Colors.black38
                  )
              )
            ),
            SizedBox(height: 25,),
            TextFormField(
              decoration: InputDecoration(
                  labelText: "First Name",
                  border: OutlineInputBorder(borderRadius: BorderRadius.circular(30))),
            ),
            SizedBox(height: 20,),
            TextFormField(
                decoration: InputDecoration(
                  labelText: "Last Name",
                )
            ),
            SizedBox(height: 20,),
            TextFormField(
                decoration: InputDecoration(
                  labelText: "Password",
                )
            ),
            SizedBox(height: 20,),
            TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.email),
                  labelText: "Email",
                )
            ),
            SizedBox(height: 20,),
            TextFormField(
                decoration: InputDecoration(
                  icon: Icon(Icons.phone ,color: Colors.lightBlue),
                  labelText: "Phone",
                )
            ),









          ],
        )
        ),

      ),

    );

  }
}