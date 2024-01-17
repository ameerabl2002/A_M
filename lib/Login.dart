

import 'package:flutter/material.dart';
import 'package:untitled4/MyColors.dart';
import 'File_But.dart';


class login extends StatefulWidget {
  login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
      routes: {
        "login": (a) => Home(),
        "pro": (a) => Prod(),
      },
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    TextEditingController c=new TextEditingController();
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.only(top: 120, left: 20, right: 20),
          padding: EdgeInsets.all(20),
          height: 450,
          width: 400,
          decoration: BoxDecoration(
            border: Border.all(color: MyColors.sky, width: 3),
            color: MyColors.bla,
            borderRadius: BorderRadius.circular(15),
          ),
          child: Column(
            children: [
              Icon(
                Icons.logo_dev_outlined,
                size: 100,
                color: MyColors.wh,
              ),
              SizedBox(
                height: 20,
              ),
              File_But.file_text(c,"enter the name"),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                // controller: ,
                decoration: InputDecoration(
                  hintText: "enter the password",
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                    borderSide: BorderSide(color: Colors.white, width: 2),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              MaterialButton(
                  color: Colors.white,
                  height: 55,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    children: [
                      Container(
                        child: Icon(
                          Icons.login,
                          color: Colors.blueAccent,
                          size: 40,
                        ),
                        margin: EdgeInsets.only(left: 15),
                      ),
                      Container(
                        child: Text(
                          "LOGIN",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.blueAccent,
                          ),
                        ),
                        margin: EdgeInsets.only(left: 50),
                      ),
                    ],
                  ),
                  onPressed: () {
                    datam.name=c.text;
                    Navigator.pushNamed(context, "pro");
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

class Prod extends StatefulWidget {
  const Prod({Key? key}) : super(key: key);

  @override
  State<Prod> createState() => _ProdState();
}

class _ProdState extends State<Prod> {

  @override
  Widget build(BuildContext context) {
    Text t;
    if(datam.name=="123")
      {
        t=new Text("back");
      }else{
      t=new Text("dont back");
    }
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          MaterialButton(

              color: Colors.red, child: t,
              onPressed: () {
                if(t.data=="back")
                Navigator.pop(context);
              }),
        ],
      ),
    );
  }
}

class datam {
  static String name="";
}