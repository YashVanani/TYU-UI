import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tyu/Components/CommonBtn.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/imageRes.dart';
import 'package:tyu/verifyEmailScreen.dart';

import 'Components/CommonTextField.dart';
import 'Utils/textStyleConstant.dart';

class MyAccountPage extends StatefulWidget {
  const MyAccountPage({Key? key}) : super(key: key);

  @override
  State<MyAccountPage> createState() => _MyAccountPageState();
}

class _MyAccountPageState extends State<MyAccountPage> {
  TextEditingController nameController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController lastNameController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController phoneController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController emailController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController countryController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController cityController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController streetController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController houseController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController postalCodeController =
      TextEditingController(text: "XXXXXXXXXXXXXX");
  TextEditingController codeController = TextEditingController();
  bool isAuthnticatior = true;
  bool isEmail = false;
  bool isSMS = false;
  bool isTerms = true;
  bool isRiskDisclosure = false;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.backgroundColor,
        body: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'My Account Page',
                  style: commanBoldTxt(
                      fontSize: 30,
                      color: AppColors.whiteColor,
                      fontWeight: FontWeight.w700),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 31),
                  child: Image.asset(
                    ImageRes.user,
                    height: 120,
                    width: 120,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 11),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.edit,
                        color: AppColors.btnColor,
                        size: 10,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        "Edit Photo",
                        style: commanMediTxt(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            color: AppColors.btnColor),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Name",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: nameController,
                    hint: "Name",
                    isObsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Last Name",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: lastNameController,
                    hint: "Last Name",
                    isObsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Phone",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: lastNameController,
                    hint: "Phone",
                    isObsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "E-mail",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: lastNameController,
                    hint: "E-mail",
                    isObsecure: false,
                  ),
                ),
                const Divider(
                  color: AppColors.blackColor,
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Country",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 5, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: nameController,
                    hint: "Country",
                    isObsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "City/Town",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: lastNameController,
                    hint: "City/Town",
                    isObsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Street",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: lastNameController,
                    hint: "Street",
                    isObsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "House",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: lastNameController,
                    hint: "House",
                    isObsecure: false,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 42, right: 42),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Postal Code",
                      style: commanRomanTxt(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                          color: AppColors.greyColor),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      top: 10, bottom: 10, left: 42, right: 42),
                  child: CommonTextFiled(
                    textController: lastNameController,
                    hint: "Postal Code",
                    isObsecure: false,
                  ),
                ),
                const Divider(
                  color: AppColors.blackColor,
                  indent: 20,
                  endIndent: 20,
                  thickness: 1,
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                        color: AppColors.blackColor,
                        borderRadius: BorderRadius.circular(18)),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "2FA",
                              style: commanRomanTxt(
                                  color: AppColors.whiteColor, fontSize: 18),
                            ),
                          ),
                          Wrap(
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: isAuthnticatior,
                                        onChanged: (val) {
                                          setState(() {
                                            isAuthnticatior = val!;
                                          });
                                        },
                                        activeColor: AppColors.btnColor,
                                        side: const BorderSide(
                                            color: AppColors.greyColor),
                                      ),
                                      Text(
                                        "Authentificator",
                                        style: commanBoldTxt(
                                          color: AppColors.whiteColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: isEmail,
                                        onChanged: (val) {
                                          setState(() {
                                            isEmail = val!;
                                          });
                                        },
                                        activeColor: AppColors.btnColor,
                                        side: const BorderSide(
                                            color: AppColors.greyColor),
                                      ),
                                      Text(
                                        "E-mail",
                                        style: commanBoldTxt(
                                          color: AppColors.whiteColor,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  ),
                                  Row(
                                    children: [
                                      Checkbox(
                                        value: isSMS,
                                        onChanged: (val) {
                                          setState(() {
                                            isSMS = val!;
                                          });
                                        },
                                        activeColor: AppColors.btnColor,
                                        side: const BorderSide(
                                            color: AppColors.greyColor),
                                      ),
                                      Text(
                                        "SMS",
                                        style: commanBoldTxt(
                                          color: AppColors.whiteColor,
                                          fontSize: 12,
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 40,
                            child: TextFormField(
                              controller: codeController,
                              style: commanRomanTxt(
                                  fontSize: 15, color: AppColors.whiteColor),
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: AppColors.darkGreyColor,
                                contentPadding: const EdgeInsets.only(left: 16),
                                hintText: "Enter Code",
                                hintStyle: commanMediTxt(
                                    color: AppColors.whiteColor, fontSize: 14),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                errorBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(8),
                                  borderSide: BorderSide.none,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              Expanded(
                                flex: 2,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: AppColors.btnColor,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(15),
                                    child: Text(
                                      "Send Code",
                                      style: commanBoldTxt(
                                        fontSize: 16,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 2,
                                child: GestureDetector(
                                  onTap: () {},
                                  child: Container(
                                    decoration: BoxDecoration(
                                        color: AppColors.darkGreyColor,
                                        borderRadius: BorderRadius.circular(8)),
                                    alignment: Alignment.center,
                                    padding: const EdgeInsets.all(15),
                                    child: Text(
                                      "Save",
                                      style: commanBoldTxt(
                                        fontSize: 16,
                                        color: AppColors.blackColor,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.blackColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Column(
                        children: [
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Wallet Whitelisting",
                              style: commanRomanTxt(
                                  color: AppColors.whiteColor, fontSize: 18),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: width,
                            decoration: BoxDecoration(
                                color: AppColors.darkGreyColor,
                                borderRadius: BorderRadius.circular(8)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3vf32094vnnfe94urfj349r4otvme0",
                                    style: commanMediTxt(
                                        color: AppColors.whiteColor,
                                        fontSize: 14),
                                  ),
                                  Image.asset(
                                    ImageRes.downArrow,
                                    height: 8,
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: width,
                            decoration: BoxDecoration(
                                color: AppColors.darkGreyColor,
                                borderRadius: BorderRadius.circular(8)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3vf32094vnnfe94urfj349r4otvme0",
                                    style: commanMediTxt(
                                        color: AppColors.whiteColor,
                                        fontSize: 14),
                                  ),
                                  Image.asset(
                                    ImageRes.downArrow,
                                    height: 8,
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 8,
                          ),
                          Container(
                            width: width,
                            decoration: BoxDecoration(
                                color: AppColors.darkGreyColor,
                                borderRadius: BorderRadius.circular(8)),
                            alignment: Alignment.center,
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(
                                    "3vf32094vnnfe94urfj349r4otvme0",
                                    style: commanMediTxt(
                                        color: AppColors.whiteColor,
                                        fontSize: 14),
                                  ),
                                  Image.asset(
                                    ImageRes.downArrow,
                                    height: 8,
                                    width: 10,
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Container(
                    width: width,
                    decoration: BoxDecoration(
                      color: AppColors.blackColor,
                      borderRadius: BorderRadius.circular(22),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(22.0),
                      child: Wrap(
                        children: [
                          Row(
                            children: [
                              Checkbox(
                                value: isTerms,
                                onChanged: (val) {
                                  setState(() {
                                    isTerms = val!;
                                  });
                                },
                                activeColor: AppColors.btnColor,
                                side: const BorderSide(
                                    color: AppColors.greyColor),
                              ),
                              Text(
                                "Terms and Conditions",
                                style: commanBoldTxt(
                                  color: AppColors.whiteColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isRiskDisclosure,
                                onChanged: (val) {
                                  setState(() {
                                    isRiskDisclosure = val!;
                                  });
                                },
                                activeColor: AppColors.btnColor,
                                side: const BorderSide(
                                    color: AppColors.greyColor),
                              ),
                              Text(
                                "Risk Disclousure",
                                style: commanBoldTxt(
                                  color: AppColors.whiteColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                          Row(
                            children: [
                              Checkbox(
                                value: isRiskDisclosure,
                                onChanged: (val) {
                                  setState(() {
                                    isRiskDisclosure = val!;
                                  });
                                },
                                activeColor: AppColors.btnColor,
                                side: const BorderSide(
                                    color: AppColors.greyColor),
                              ),
                              Text(
                                "Risk Disclousure",
                                style: commanBoldTxt(
                                  color: AppColors.whiteColor,
                                  fontSize: 12,
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 42, right: 42, top: 20, bottom: 20),
                  child: CommonBtn(
                      btnWidth: MediaQuery.of(context).size.width,
                      btnOnTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const VerifyEmailScreen(),
                          ),
                        );
                      },
                      btnName: "Save Change"),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 42, right: 42, bottom: 30),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: width,
                      height: 40,
                      decoration: BoxDecoration(
                          color: AppColors.darkBlueColor,
                          borderRadius: BorderRadius.circular(8)),
                      alignment: Alignment.center,
                      child: Text(
                        "Log Out of Profile",
                        style: commanBoldTxt(
                          fontSize: 16,
                          color: AppColors.whiteColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
