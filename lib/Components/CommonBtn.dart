import 'package:flutter/cupertino.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/textStyleConstant.dart';

class CommonBtn extends StatefulWidget {
  double btnWidth;
  VoidCallback btnOnTap;
  String btnName;
  CommonBtn(
      {Key? key,
      required this.btnWidth,
      required this.btnOnTap,
      required this.btnName})
      : super(key: key);

  @override
  State<CommonBtn> createState() => _CommonBtnState();
}

class _CommonBtnState extends State<CommonBtn> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.btnOnTap,
      child: Container(
        width: widget.btnWidth,
        height: 40,
        decoration: BoxDecoration(
            color: AppColors.btnColor, borderRadius: BorderRadius.circular(8)),
        alignment: Alignment.center,
        child: Text(
          widget.btnName,
          style: commanBoldTxt(
            fontSize: 16,
            color: AppColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
