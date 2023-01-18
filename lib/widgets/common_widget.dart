import 'package:flutter/material.dart';



class MyTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final TextInputType? textInputType;

  const MyTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.hintText = '',
    this.textInputType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: 1,
      expands: false,
      keyboardType: textInputType ?? TextInputType.text,
      controller: controller,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              // color: Color(0xFF957FC3),
              width: 2,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              // color: Color(0xFF957FC3),
            ),
          ),
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Color(0xFF111111).withOpacity(0.5),
          )),
    );
  }
}

class MyPasswordTextField extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;
  final String hintText;
  final bool obscureText;
  final VoidCallback onToggled;

  const MyPasswordTextField({
    Key? key,
    required this.controller,
    required this.labelText,
    this.hintText = '',
    this.obscureText = true,
    required this.onToggled,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      style: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.w500,
      ),
      decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: () => onToggled(),
            child: Icon(
              obscureText ? Icons.visibility_off : Icons.visibility,
              // color: Color(0xFF957FC3),
            ),
          ),
          focusedBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              // color: Color(0xFF957FC3),
              width: 2,
            ),
          ),
          enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(
              // color: Color(0xFF957FC3),
            ),
          ),
          hintText: hintText,
          labelText: labelText,
          labelStyle: TextStyle(
            color: Colors.black.withOpacity(0.5),
          )),
    );
  }
}

class MyButton extends StatelessWidget {
  final double height;
  final double? width;
  final Color color;
  final Color textColor;
  final String title;
  final Function onPressed;
  final double? fontSize;

  const MyButton({
    Key? key,
    this.height = 45,
    this.width = 188,
    this.color = Colors.blue,
    this.textColor = Colors.white,
    required this.title,
    required this.onPressed,
    this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: color,
      ),
      child: ElevatedButton(
        onPressed: () => onPressed(),
        style: ElevatedButton.styleFrom(
          primary: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: fontSize ?? 20,
            color: textColor,
          ),
        ),
      ),
    );
  }
}