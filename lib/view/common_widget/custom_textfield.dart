import 'package:Snuggli/view/colours.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final Icon? icon;
  const CustomTextField({
    Key? key,
    required this.controller,
    required this.hintText,
    this.icon,
  }) : super(key: key);

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      decoration: InputDecoration(
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
            borderSide: const BorderSide(
              color: primaryColor,
              width: 3,
            ),
          ),
          hintText: widget.hintText,
          suffixIcon: widget.icon,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              20,
            ),
            borderSide: BorderSide(
              color: Colors.grey,
            ),
          ),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(
                20,
              ),
              borderSide: BorderSide(
                color: Colors.grey,
              ))),
      validator: (value) {},
    );
  }
}
