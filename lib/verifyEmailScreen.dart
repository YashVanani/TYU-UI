import 'dart:async';
import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:otp_text_field/otp_text_field.dart';
import 'package:otp_text_field/style.dart';
import 'package:tyu/Components/CommonBtn.dart';
import 'package:tyu/HomePage.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/bottomBar.dart';
import 'Utils/textStyleConstant.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({Key? key}) : super(key: key);

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen>
    with TickerProviderStateMixin {
  OtpFieldController otpController = OtpFieldController();
  late AnimationController controller;

  Duration get duration => controller.duration! * controller.value;

  bool get expired => duration.inSeconds == 0;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 5),
    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(42.0),
              child: Column(
                children: [
                  Text(
                    'Verify your email',
                    style: commanBoldTxt(
                        fontSize: 30,
                        color: AppColors.whiteColor,
                        fontWeight: FontWeight.w700),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                      "We have sent code to your email",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontFamily: NeueHaasDisplayRoman,
                          fontSize: 12,
                          color: AppColors.greyColor,
                          height: 1.5),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 40, right: 40),
                    child: Text(
                      "cli******@mail.com",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: NeueHaasDisplayRoman,
                        fontSize: 16,
                        color: AppColors.btnColor,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  OTPTextField(
                    controller: otpController,
                    length: 5,
                    otpFieldStyle: OtpFieldStyle(
                      backgroundColor: AppColors.blackColor,
                    ),
                    width: MediaQuery.of(context).size.width,
                    fieldWidth: 50,
                    style: commanMediTxt(
                      fontSize: 17,
                      color: AppColors.whiteColor,
                    ),
                    textFieldAlignment: MainAxisAlignment.spaceAround,
                    fieldStyle: FieldStyle.box,
                    onChanged: (pin) {
                      log("Changed: $pin");
                    },
                    onCompleted: (pin) {
                      log("Completed: $pin");
                    },
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 30),
                    child: CommonBtn(
                        btnWidth: width,
                        btnOnTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => const BottomBarScreen(),
                            ),
                          );
                        },
                        btnName: "Verify Account"),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Resend code in ",
                        style: commanRomanTxt(
                            fontSize: 14, color: AppColors.greyColor),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      AnimatedBuilder(
                          animation: controller,
                          builder: (context, child) {
                            return Text(
                              '${controller.value}',
                              style: commanBoldTxt(
                                  fontSize: 14, color: AppColors.whiteColor),
                            );
                          }),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
