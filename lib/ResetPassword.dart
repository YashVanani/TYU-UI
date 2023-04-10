import 'package:flutter/material.dart';
import 'package:tyu/Components/CommonBtn.dart';
import 'package:tyu/Components/CommonTextField.dart';
import 'package:tyu/MyAccountPage.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/textStyleConstant.dart';

import 'Utils/imageRes.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({Key? key}) : super(key: key);

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
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
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ImageRes.appLogo,
                    width: 160,
                    height: 52,
                  ),
                  const SizedBox(
                    height: 81,
                  ),
                  Text(
                    'Reset Password',
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
                        "Enter the email address associated with your account and we will send you a link to reset your password.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontFamily: NeueHaasDisplayRoman,
                            fontSize: 12,
                            color: AppColors.greyColor,
                            height: 1.5)),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: CommonTextFiled(
                      textController: nameController,
                      hint: "Email",
                      isObsecure: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CommonBtn(
                      btnWidth: width,
                      btnOnTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const MyAccountPage(),
                          ),
                        );
                      },
                      btnName: "Send Link",
                    ),
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
