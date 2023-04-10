import 'package:flutter/material.dart';
import 'package:tyu/ResetPassword.dart';

import 'Components/CommonBtn.dart';
import 'Components/CommonTextField.dart';
import 'Utils/colorConstants.dart';
import 'Utils/imageRes.dart';
import 'Utils/textStyleConstant.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
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
                  RichText(
                    text: TextSpan(
                      text: 'Sign up ',
                      style: commanBoldTxt(
                          fontSize: 30,
                          color: AppColors.btnColor,
                          fontWeight: FontWeight.w700),
                      children: <TextSpan>[
                        TextSpan(
                          text: 'for an account',
                          style: commanBoldTxt(
                              fontSize: 30,
                              color: AppColors.whiteColor,
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
                      hint: "Name",
                      isObsecure: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CommonTextFiled(
                      textController: nameController,
                      hint: "Last Name",
                      isObsecure: false,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: CommonTextFiled(
                      textController: nameController,
                      hint: "Email",
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
                    child: RichText(
                      text: TextSpan(
                        text: "By Creating an account, you agreeing to our ",
                        style: commanRomanTxt(
                          fontSize: 14,
                          color: AppColors.greyColor,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Privacy Policy, ',
                            style: commanRomanTxt(
                              fontSize: 14,
                              color: AppColors.btnColor,
                            ),
                          ),
                          TextSpan(
                            text: 'and ',
                            style: commanRomanTxt(
                              fontSize: 14,
                              color: AppColors.greyColor,
                            ),
                          ),
                          TextSpan(
                            text: 'Electronics Communication Policy.',
                            style: commanRomanTxt(
                              fontSize: 14,
                              color: AppColors.btnColor,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: CommonBtn(
                      btnWidth: width,
                      btnOnTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ResetPassword(),
                          ),
                        );
                      },
                      btnName: "Sing Up",
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 45),
                    child: RichText(
                      text: TextSpan(
                        text: "Already have an account? ",
                        style: commanRomanTxt(
                            fontSize: 12, color: AppColors.greyColor),
                        children: <TextSpan>[
                          TextSpan(
                            text: 'Sign In',
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
