import 'package:flutter/material.dart';

import 'package:untitled4/MyColors.dart';


class File_But
{



  static file_text(TextEditingController c,String text)
  {
   return TextFormField(
      controller: c,

      decoration: InputDecoration(
        label: Icon(Icons.person,color: MyColors.sky,),

        hintText: text,
        hintStyle: TextStyle(color: MyColors.wh),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: MyColors.wh, width: 2),
        ),
        enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: MyColors.wh, width: 2),
        ),
    border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }


}