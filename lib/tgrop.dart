import 'package:flutter/material.dart';


class tgrop extends StatefulWidget {
  const tgrop({Key? key}) : super(key: key);

  @override
  State<tgrop> createState() => _tgropState();
}

class _tgropState extends State<tgrop> {
  @override
  Widget build(BuildContext context) {
    TextEditingController c2=TextEditingController();
   TextEditingController c1=TextEditingController();

    return Scaffold(
      appBar: AppBar(),
      body:Column(
        children: [
          TextFormField(
            controller: c1,
          ),
          TextFormField(
            controller: c2,
          ),
          MaterialButton(onPressed: (){
            cx.h=c1.text.toString();
            cx.h2=c2.text.toString();

            Navigator.pushNamed(context, "te");

          },
          child: Text("ok"),
            color: Colors.red,
          ),
        ],
      ) ,
    );
  }
}

class cx{

  static String h="";
  static String h2="";

}
class to2 extends StatefulWidget {

  const to2({Key? key}) : super(key: key);

  @override
  State<to2> createState() => _to2State();
}

class _to2State extends State<to2> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(cx.h),
          Text(cx.h2),
        ],
      ),
    );
  }
}
