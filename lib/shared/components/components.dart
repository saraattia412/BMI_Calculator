import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase = true,
  double radius = 20,
  required Function function,
  required String text,
}) =>
    Container(
      height: 40,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(radius),
        color: background,
      ),
      child: MaterialButton(
        onPressed: () {
          function();
        },
        child: Text(
          isUpperCase ? text.toUpperCase() : text,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 30.0,
            color: Colors.white,
          ),
        ),
      ),
    );

Widget defaultFormField({
   TextEditingController? controller,
  required TextInputType type,
  Function? onSubmit,
  required FormFieldValidator? validator,
  required String label,
  required IconData prefix,



  //part password
  bool isPassword = false,
  IconData? suffix,
  Function? suffixPressed,

  //todo app
  Function? onTap,
  bool isClickable=true,


}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,

      onFieldSubmitted: (value) {
        onSubmit!(value);
      },

      validator: validator,
      decoration: InputDecoration(
        labelText: label,
        prefixIcon: Icon(
          prefix,
        ),

        border: const OutlineInputBorder(),

        //password
        suffixIcon :suffix != null ?  IconButton(
          onPressed: (){
             suffixPressed!();
          },
          icon: Icon(
            suffix,
          ),
        ) : null,

      ),

      //password
      obscureText:isPassword,

      //todo app
      onTap: (){
        onTap!();
      },
      enabled: isClickable,


    );
