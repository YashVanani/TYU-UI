import 'package:flutter/material.dart';
import 'package:tyu/Components/CommonBtn.dart';
import 'package:tyu/Components/CommonTextField.dart';
import 'package:tyu/SignUpScreen.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/textStyleConstant.dart';

import 'Utils/imageRes.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
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
                    height: 123,
                  ),
                  RichText(
                    text: TextSpan(
                      text: 'Welcome to ',
                      style: commanBoldTxt(
                          fontSize: 30,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.w700),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'TYU',
                          style: commanBoldTxt(
                              fontSize: 30,
                              color: AppColors.btnColor,
                              fontWeight: FontWeight.w700),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Discover your potential, transform your future",
                    style: commanRomanTxt(
                        fontSize: 12, color: AppColors.greyColor),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 10),
                    child: CommonTextFiled(
                      textController: nameController,
                      hint: "Login",
                      isObsecure: false,
                    ),
                  ),
                  CommonTextFiled(
                    textController: passwordController,
                    hint: "Password",
                    isObsecure: true,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CommonBtn(
                      btnWidth: width,
                      btnOnTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignUpScreen(),
                          ),
                        );
                      },
                      btnName: "Sing In",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: Text(
                      "Forgot Password?",
                      style: commanBoldTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: AppColors.whiteColor),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: commanRomanTxt(
                            fontSize: 12, color: AppColors.greyColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign Up',
                            style: commanBoldTxt(
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                                color: AppColors.whiteColor),
                          ),
                        ],
                      ),
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
