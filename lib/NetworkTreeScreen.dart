import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/textStyleConstant.dart';

import 'MyPayout.dart';
import 'Utils/imageRes.dart';

class NetworkTreeScreen extends StatefulWidget {
  const NetworkTreeScreen({Key? key}) : super(key: key);

  @override
  State<NetworkTreeScreen> createState() => _NetworkTreeScreenState();
}

class _NetworkTreeScreenState extends State<NetworkTreeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        title: Image.asset(ImageRes.uAImage, height: 30),
        actions: [
          InkWell(
            onTap:(){
              Navigator.of(context).push(MaterialPageRoute(builder: (context)=>const Payout()));
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
              child: Image.asset(
                ImageRes.personImage,
                height: 5,
              ),
            ),
          ),
        ],
      ),
      body: 
      
      SingleChildScrollView(
        child: Padding(
          padding:
              const EdgeInsets.only(left: 15, right: 15, top: 60, bottom: 60),
          child: Container(
            decoration: BoxDecoration(
              color: AppColors.backgroundColor,
              borderRadius: BorderRadius.circular(18),
            ),
            alignment: Alignment.center,
            child: Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                children: [
                  Text(
                    "Network Tree",
                    style: commanBoldTxt(
                        fontSize: 30, color: AppColors.whiteColor),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  TextFormField(
                    style: commanRomanTxt(
                        fontSize: 15, color: AppColors.whiteColor),
                    decoration: InputDecoration(
                        filled: true,
                        fillColor: AppColors.blackColor,
                        contentPadding: const EdgeInsets.only(left: 16),
                        hintText: "Search tree",
                        hintStyle: commanRomanTxt(
                            color: AppColors.greyColor, fontSize: 14),
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
                        prefixIcon: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image.asset(
                            ImageRes.searchImage,
                            height: 25,
                            fit: BoxFit.fill,
                            width: 25,
                          ),
                        )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.rankBoxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        children: [
                          Image.asset(
                            ImageRes.user,
                            height: 45,
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "John Doe",
                            style: commanBoldTxt(
                                fontSize: 20, color: AppColors.whiteColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.rankBoxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Personal Qualified\n Volume",
                            style: commanMediTxt(
                              fontSize: 14,
                              color: AppColors.greyColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "1.324.412 PQV",
                            style: commanBoldTxt(
                                fontSize: 15, color: AppColors.btnColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.rankBoxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Current Rank",
                            style: commanMediTxt(
                              fontSize: 14,
                              color: AppColors.greyColor,
                            ),
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Text(
                            "XXXXXX",
                            style: commanBoldTxt(
                                fontSize: 15, color: AppColors.btnColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.rankBoxColor,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "164",
                                style: commanBoldTxt(
                                    fontSize: 45, color: AppColors.btnColor),
                              ),
                              Text(
                                "points",
                                style: commanMediTxt(
                                    fontSize: 12, color: AppColors.greyColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "4",
                                style: commanBoldTxt(
                                    fontSize: 45, color: AppColors.btnColor),
                              ),
                              Text(
                                "branches",
                                style: commanMediTxt(
                                    fontSize: 12, color: AppColors.greyColor),
                              ),
                            ],
                          ),
                          const SizedBox(
                            width: 20,
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Image.asset(
                    ImageRes.networkTreeImage,
                    height: 200,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
