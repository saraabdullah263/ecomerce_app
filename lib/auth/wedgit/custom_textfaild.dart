import 'package:ecomerce_app/common/app_color.dart';
import 'package:flutter/material.dart';

class CustomTextfaild extends StatefulWidget {
  const CustomTextfaild({super.key, this.hintText, this.controller, this.prefixIcon, this.suffixIcon, this.validator, this.keyboardType,  this.password=false});
  final String? hintText;
  final TextEditingController? controller;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;
  final TextInputType? keyboardType;
  final bool password;

  @override
  State<CustomTextfaild> createState() => _CustomTextfaildState();
}

class _CustomTextfaildState extends State<CustomTextfaild> {
  bool showPass = false;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32,vertical: 20),
      child: TextFormField(
          cursorColor: AppColor.textfaildColorTitle,
          cursorErrorColor: AppColor.textfaildColorTitle,
          controller: widget.controller,
          validator: widget.validator,
          keyboardType: widget.keyboardType,
          obscureText: widget.password && !showPass,
          style: const TextStyle(fontSize: 18, color: AppColor.textfaildColorTitle),
          decoration: InputDecoration(
            filled: true,
            fillColor: AppColor.customTextfaildColor,
              focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColor.customTextfaildEdgeColor, width: 1)),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color:AppColor.customTextfaildEdgeColor, width: 1)),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColor.customTextfaildEdgeColor, width: 1)),
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: AppColor.customTextfaildEdgeColor, width: 1)),
              errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(color: Colors.red, width: 1)),
              hintText: widget.hintText,
              prefixIcon: widget.prefixIcon,
              suffixIcon: widget.password == true
                  ? IconButton(
                      onPressed: () {
                        showPass = !showPass;
                        setState(() {});
                      },
                      icon: Icon(
                        showPass == false
                            ? Icons.visibility_off
                            : Icons.visibility,
                        color: AppColor.customTextfaildColor,
                        size: 30,
                      ))
                  : widget.suffixIcon,
              errorStyle: const TextStyle(color: Colors.red),
              hintStyle:  TextStyle(
                  color: AppColor.textfaildColorTitle, fontWeight: FontWeight.normal,fontSize: 12)),
        ),
    );
  }
}