import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  //final TextEditingController controller;
  final String? hintText;
  //bool? isObsecure;
  const CustomTextField({Key? key, this.hintText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.grey.shade200,
          borderRadius: const BorderRadius.all(
            Radius.circular(7.0),
          ),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        //margin: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextFormField(
          // controller: controller,
          obscureText: false,
          cursorColor: Theme.of(context).primaryColor,
          decoration: InputDecoration(
            border: InputBorder.none,
            focusColor: Theme.of(context).primaryColor,
            hintText: hintText,
          ),
        ),
      ),
    );
  }
}
