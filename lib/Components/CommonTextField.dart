import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/textStyleConstant.dart';

class CommonTextFiled extends StatefulWidget {
  TextEditingController textController;
  String hint;
  bool isObsecure;
  CommonTextFiled(
      {Key? key,
      required this.textController,
      required this.hint,
      required this.isObsecure})
      : super(key: key);

  @override
  State<CommonTextFiled> createState() => _CommonTextFiledState();
}

class _CommonTextFiledState extends State<CommonTextFiled> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.textController,
      obscureText: widget.isObsecure,
      style: commanRomanTxt(fontSize: 15, color: AppColors.whiteColor),
      cursorColor: AppColors.darkBlueColor,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.blackColor,
        hintStyle: commanRomanTxt(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: AppColors.darkGreyColor),
        hintText: widget.hint,
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(8.0),
        ),
        suffixIcon: widget.isObsecure
            ? const Icon(Icons.remove_red_eye_outlined,
                color: AppColors.btnColor)
            : const Icon(Icons.remove_red_eye_outlined,
                color: Colors.transparent),
      ),
    );
  }
}
