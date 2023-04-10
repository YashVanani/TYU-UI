import 'package:flutter/material.dart';
import 'package:tyu/Components/CommonBtn.dart';
import 'package:tyu/MyPayout.dart';
import 'package:tyu/NetworkTreeScreen.dart';

import 'Utils/colorConstants.dart';
import 'Utils/imageRes.dart';
import 'Utils/textStyleConstant.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isClickAllRank = false;
  bool isCheck = false;
  TextEditingController codeController = TextEditingController();
  bool isAuthnticatior = true;
  bool isEmail = false;
  bool isSMS = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        title: Image.asset(ImageRes.uAImage, height: 30),
        actions: [
          GestureDetector(
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
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(ImageRes.gridImage, height: 30),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      "Dashboard",
                      style: commanBoldTxt(fontSize: 25),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              GestureDetector(
                onTap:(){
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const NetworkTreeScreen(),
                    ),
                  );
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Center(
                      child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    child: Text(
                      "Lifetime Income",
                      style: commanBoldTxt(),
                    ),
                  )),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text("Qualified Volume",
                                  style: commanRomanTxt(fontSize: 18))),
                          Text("Weekly",
                              style: commanBoldTxt(
                                  fontSize: 15, color: AppColors.btnColor)),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Image.asset(
                              ImageRes.arrowDown2Image,
                              color: AppColors.btnColor,
                              height: 8,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Image.asset(ImageRes.chartImage),
                      Row(
                        children: [
                          Expanded(
                              child: Text("20.324 QV",
                                  style: commanBoldTxt(
                                      color: AppColors.btnColor,
                                      fontSize: 28))),
                          Text("\u0024 1.572",
                              style: commanBoldTxt(
                                  color: AppColors.btnColor, fontSize: 28))
                        ],
                      ),
                      Row(
                        children: [
                          Expanded(
                              child: Text("qualified volume",
                                  style: commanMediTxt(fontSize: 15))),
                          Text("Total income",
                              style: commanMediTxt(fontSize: 15))
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Your Current Rank",
                            style: commanRomanTxt(),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .04),
                        Row(
                          children: [
                            Expanded(
                                child: Image.asset(
                              ImageRes.ribbonImage,
                              height: 80,
                            )),
                            Container(
                              height: MediaQuery.of(context).size.height * .11,
                              width: MediaQuery.of(context).size.width * .55,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  color: AppColors.rankBoxColor),
                            )
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    )),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Text(
                            "Progress of your rank",
                            style: commanRomanTxt(),
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .04),
                        Image.asset(ImageRes.progessImage),
                        const SizedBox(height: 20),
                        Row(
                          children: [
                            Image.asset(
                              ImageRes.ribbonImage,
                              height: 50,
                            ),
                            const Spacer(),
                            Image.asset(
                              ImageRes.ribbonImage,
                              height: 50,
                              color: AppColors.greyColor.withOpacity(.3),
                            ),
                            Image.asset(ImageRes.ribbonImage,
                                height: 50,
                                color: AppColors.greyColor.withOpacity(.3)),
                          ],
                        ),
                        const SizedBox(height: 15),
                        Row(
                          children: [
                            Text(
                              "The next rank requires ",
                              style: commanMediTxt(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                            Text(
                              "XXX",
                              style: commanMediTxt(fontSize: 15),
                            ),
                            Text(
                              " more TrustPoints",
                              style: commanMediTxt(
                                  color: AppColors.greyColor, fontSize: 14),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                      ],
                    )),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 5),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                  child: Text(
                                "Total Team Partners",
                                style: commanRomanTxt(),
                              )),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Text(
                                    "194",
                                    style: commanBoldTxt(
                                        color: AppColors.btnColor,
                                        fontSize: 35),
                                  ),
                                  Text(
                                    "person",
                                    style: commanRomanTxt(
                                        color: AppColors.greyColor,
                                        fontSize: 15),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .04),
                        buildTeamPartners("#1", false),
                        const SizedBox(height: 10),
                        buildTeamPartners("#2", false),
                        const SizedBox(height: 10),
                        buildTeamPartners("#3", false),
                        const SizedBox(height: 5),
                      ],
                    )),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Countdown",
                          style: commanRomanTxt(),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .04),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12",
                                style: commanBoldTxt(
                                    fontSize: 45, color: AppColors.btnColor),
                              ),
                              Text(
                                "days",
                                style: commanBoldTxt(
                                    fontSize: 12, color: AppColors.greyColor),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Image.asset(
                              ImageRes.boxImage,
                              height: 20,
                              width: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "03",
                                style: commanBoldTxt(
                                    fontSize: 45, color: AppColors.btnColor),
                              ),
                              Text(
                                "hours",
                                style: commanBoldTxt(
                                    fontSize: 12, color: AppColors.greyColor),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Image.asset(
                              ImageRes.boxImage,
                              height: 20,
                              width: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "43",
                                style: commanBoldTxt(
                                    fontSize: 45, color: AppColors.btnColor),
                              ),
                              Text(
                                "minutes",
                                style: commanBoldTxt(
                                    fontSize: 12, color: AppColors.greyColor),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 15),
                            child: Image.asset(
                              ImageRes.boxImage,
                              height: 20,
                              width: 20,
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12",
                                style: commanBoldTxt(
                                    fontSize: 45, color: AppColors.btnColor),
                              ),
                              Text(
                                "seconds",
                                style: commanBoldTxt(
                                    fontSize: 12, color: AppColors.greyColor),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text("Expected payout",
                                  style: commanRomanTxt(fontSize: 18))),
                          Text("Weekly",
                              style: commanBoldTxt(
                                  fontSize: 15, color: AppColors.btnColor)),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Image.asset(
                              ImageRes.arrowDown2Image,
                              color: AppColors.btnColor,
                              height: 8,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .05),
                      buildRowExpectedPayout("Direct", "1.324.412"),
                      const SizedBox(height: 10),
                      buildRowExpectedPayout("Binary", "28.543"),
                      const SizedBox(height: 10),
                      buildRowExpectedPayout("Differential", "1.738"),
                      const SizedBox(height: 10),
                      buildRowExpectedPayout("Shares", "72.452"),
                      const SizedBox(height: 10),
                      buildRowExpectedPayout("Sum", "2.464,53",
                          color1: AppColors.whiteColor,
                          color2: AppColors.btnColor,
                          size1: 18,
                          size2: 24),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                              child: Text("Trust Points",
                                  style: commanRomanTxt(fontSize: 18))),
                          Text("Weekly",
                              style: commanBoldTxt(
                                  fontSize: 16, color: AppColors.btnColor)),
                          Padding(
                            padding: const EdgeInsets.only(left: 8),
                            child: Image.asset(
                              ImageRes.arrowDown2Image,
                              color: AppColors.btnColor,
                              height: 8,
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 15),
                      Container(
                        decoration: BoxDecoration(
                            color: AppColors.rankBoxColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 10, horizontal: 15),
                          child: Row(
                            children: [
                              Expanded(
                                  child: Text(
                                "Total",
                                style: commanMediTxt(
                                    color: AppColors.whiteColor, fontSize: 18),
                              )),
                              Text(
                                "1.432 TP",
                                style: commanMediTxt(
                                    fontSize: 22, color: AppColors.btnColor),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      buildTrustPoint(
                          context, "Rocket", "74%", ImageRes.roketImage),
                      const SizedBox(height: 10),
                      buildTrustPoint(
                        context,
                        "Planet",
                        "14%",
                        ImageRes.stopImage,
                        progress: 0.2,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                        vertical: 18, horizontal: 15),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Expanded(
                                child: Text("Next Rankups",
                                    style: commanRomanTxt(fontSize: 18))),
                            Text("Weekly",
                                style: commanBoldTxt(
                                    fontSize: 16, color: AppColors.btnColor)),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Image.asset(
                                ImageRes.arrowDown2Image,
                                color: AppColors.btnColor,
                                height: 8,
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                            height: MediaQuery.of(context).size.height * .04),
                        buildTeamPartners("#1", true),
                        const SizedBox(height: 10),
                        buildTeamPartners("#2", true),
                        const SizedBox(height: 10),
                        buildTeamPartners("#3", true),
                        const SizedBox(height: 5),
                        buildTeamPartners("#4", true),
                        const SizedBox(height: 5),
                        buildTeamPartners("#5", true),
                        const SizedBox(height: 20),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("Other coins",
                                style: commanBoldTxt(
                                    fontSize: 16, color: AppColors.whiteColor)),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Image.asset(
                                ImageRes.arrowDown2Image,
                                color: AppColors.whiteColor,
                                height: 8,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 15),
                      ],
                    )),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .1),
              Row(
                children: [
                  Image.asset(
                    ImageRes.peopleImage,
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "Clients",
                      style: commanBoldTxt(fontSize: 30),
                    ),
                  ),
                  Image.asset(
                    ImageRes.searchImage,
                    height: 45,
                    width: 45,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              buildClientContainer(context),
              const SizedBox(height: 15),
              buildClientContainer(context),
              const SizedBox(height: 15),
              buildClientContainer(context),
              SizedBox(height: MediaQuery.of(context).size.height * .06),
              Row(
                children: [
                  Image.asset(
                    ImageRes.folderOpenImage,
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "Marketing Center",
                      style: commanBoldTxt(fontSize: 20),
                    ),
                  ),
                  Image.asset(
                    ImageRes.arrowDown2Image,
                    height: 45,
                    width: 45,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(20)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            ImageRes.albumsImage,
                            height: 40,
                            width: 40,
                          ),
                          const SizedBox(width: 10),
                          Text(
                            "Pinjabi",
                            style: commanMediTxt(
                                color: AppColors.greyColor, fontSize: 18),
                          ),
                          Text(
                            " - TUY Presentation",
                            style: commanMediTxt(
                                color: AppColors.whiteColor, fontSize: 18),
                          )
                        ],
                      ),
                      const SizedBox(height: 20),
                      Row(
                        children: [
                          Text(
                            "Available to all",
                            style: commanMediTxt(
                                color: AppColors.btnColor, fontSize: 16),
                          ),
                          const SizedBox(width: 10),
                          Image.asset(
                            ImageRes.arrowDown2Image,
                            height: 10,
                            width: 10,
                            color: AppColors.btnColor,
                          ),
                          const Spacer(),
                          Text(
                            "Trust Your Universe...",
                            style: commanMediTxt(
                                color: AppColors.greyColor, fontSize: 16),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      CommonBtn(
                          btnWidth: MediaQuery.of(context).size.width,
                          btnOnTap: () {},
                          btnName: "Download"),
                      const SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .06),
              Row(
                children: [
                  Image.asset(
                    ImageRes.planetImage,
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "Shareholder Club",
                      style: commanBoldTxt(fontSize: 20),
                    ),
                  ),
                  Image.asset(
                    ImageRes.arrowDown2Image,
                    height: 45,
                    width: 45,
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(18)),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.rankBoxColor,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                ImageRes.roketImage,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Rocket",
                                        style: commanBoldTxt(
                                            fontSize: 18,
                                            color: AppColors.whiteColor),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6.5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "1%",
                                            style: commanBoldTxt(
                                              fontSize: 15,
                                              color: AppColors.btnColor,
                                            ),
                                          ),
                                          Text(
                                            "weekly revenue",
                                            style: commanBoldTxt(
                                              fontSize: 12,
                                              color: AppColors.greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 160,
                                    decoration: BoxDecoration(
                                        color: AppColors.backgroundColor,
                                        borderRadius: BorderRadius.circular(4)),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "\$ 432,23",
                                            style: commanBoldTxt(
                                              fontSize: 14,
                                              color: AppColors.whiteColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "per share",
                                            style: commanBoldTxt(
                                              fontSize: 10,
                                              color: AppColors.greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.rankBoxColor,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                ImageRes.stopImage,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Space",
                                        style: commanBoldTxt(
                                            fontSize: 18,
                                            color: AppColors.whiteColor),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                6.5,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "2.5%",
                                            style: commanBoldTxt(
                                              fontSize: 15,
                                              color: AppColors.btnColor,
                                            ),
                                          ),
                                          Text(
                                            "weekly revenue",
                                            style: commanBoldTxt(
                                              fontSize: 12,
                                              color: AppColors.greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 160,
                                    decoration: BoxDecoration(
                                        color: AppColors.backgroundColor,
                                        borderRadius: BorderRadius.circular(4)),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "\$ 510,23",
                                            style: commanBoldTxt(
                                              fontSize: 14,
                                              color: AppColors.whiteColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "per share",
                                            style: commanBoldTxt(
                                              fontSize: 10,
                                              color: AppColors.greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: AppColors.rankBoxColor,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Image.asset(
                                ImageRes.starImage,
                                height: 50,
                                width: 50,
                              ),
                              const SizedBox(
                                width: 15,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        "Universe",
                                        style: commanBoldTxt(
                                            fontSize: 18,
                                            color: AppColors.whiteColor),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "2.5%",
                                            style: commanBoldTxt(
                                              fontSize: 15,
                                              color: AppColors.btnColor,
                                            ),
                                          ),
                                          Text(
                                            "weekly revenue",
                                            style: commanBoldTxt(
                                              fontSize: 12,
                                              color: AppColors.greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 160,
                                    decoration: BoxDecoration(
                                        color: AppColors.backgroundColor,
                                        borderRadius: BorderRadius.circular(4)),
                                    alignment: Alignment.center,
                                    child: Padding(
                                      padding: const EdgeInsets.only(
                                          left: 10, top: 5, bottom: 5),
                                      child: Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        children: [
                                          Text(
                                            "\$ 531,23",
                                            style: commanBoldTxt(
                                              fontSize: 14,
                                              color: AppColors.whiteColor,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "per share",
                                            style: commanBoldTxt(
                                              fontSize: 10,
                                              color: AppColors.greyColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(
                height: 20,
              ),
              //Current Trust Points
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: Text(
                              "Current Trust Points",
                              style: commanRomanTxt(fontSize: 18),
                            ),
                          ),
                          const Icon(
                            Icons.info_outline,
                            color: AppColors.greyColor,
                          )
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .04),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                style: commanBoldTxt(
                                    fontSize: 15, color: AppColors.greyColor),
                              ),
                            ],
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12",
                                style: commanBoldTxt(
                                    fontSize: 45, color: AppColors.btnColor),
                              ),
                              Text(
                                "shares",
                                style: commanBoldTxt(
                                    fontSize: 15, color: AppColors.greyColor),
                              ),
                            ],
                          ),
                          Image.asset(
                            ImageRes.ribbonImage,
                            height: 60,
                          ),
                        ],
                      ),
                      const SizedBox(height: 5),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 20,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.4,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.btnColor),
                            backgroundColor: AppColors.darkGreyColor,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                                text: "points to the next level: ",
                                style: commanBoldTxt(
                                    fontSize: 13, color: AppColors.greyColor),
                                children: <TextSpan>[
                              TextSpan(
                                text: "6",
                                style: commanBoldTxt(
                                    fontSize: 14, color: AppColors.whiteColor),
                              )
                            ])),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Your Package
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "Your Package",
                              style: commanRomanTxt(fontSize: 18),
                            ),
                          ),
                          Text(
                            "Space",
                            style: commanBoldTxt(
                                fontSize: 45, color: AppColors.whiteColor),
                          )
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .04),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                                text: "300 TP ",
                                style: commanBoldTxt(
                                    fontSize: 14, color: AppColors.whiteColor),
                                children: <TextSpan>[
                              TextSpan(
                                text: "of 1500 TP",
                                style: commanBoldTxt(
                                    fontSize: 14, color: AppColors.greyColor),
                              )
                            ])),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.2,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.btnColor),
                            backgroundColor: AppColors.darkGreyColor,
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                                text: "Total Packages sold ",
                                style: commanMediTxt(
                                    fontSize: 14, color: AppColors.greyColor),
                                children: <TextSpan>[
                              TextSpan(
                                text: "XX ",
                                style: commanMediTxt(
                                    fontSize: 14, color: AppColors.whiteColor),
                              ),
                              TextSpan(
                                text: "out of ",
                                style: commanMediTxt(
                                    fontSize: 14, color: AppColors.greyColor),
                              ),
                              TextSpan(
                                text: "XX ",
                                style: commanMediTxt(
                                    fontSize: 14, color: AppColors.whiteColor),
                              ),
                            ])),
                      ),
                      Container(
                        margin: const EdgeInsets.symmetric(vertical: 20),
                        width: MediaQuery.of(context).size.width,
                        height: 30,
                        child: const ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(10)),
                          child: LinearProgressIndicator(
                            value: 0.9,
                            valueColor: AlwaysStoppedAnimation<Color>(
                                AppColors.btnColor),
                            backgroundColor: AppColors.darkGreyColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Weekly Sale
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Text(
                              "Weekly sale",
                              style: commanRomanTxt(fontSize: 18),
                            ),
                          ),
                          Text(
                            "Universe",
                            style: commanBoldTxt(
                                fontSize: 45, color: AppColors.whiteColor),
                          )
                        ],
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .04),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "This week you sold:",
                          style: commanMediTxt(
                              fontSize: 14, color: AppColors.greyColor),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.btnColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ImageRes.bagHandleImage,
                                      height: 30,
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      "1 Package",
                                      style: commanMediTxt(
                                          fontSize: 14,
                                          color: AppColors.whiteColor),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              decoration: BoxDecoration(
                                color: AppColors.darkGreyColor,
                                borderRadius: BorderRadius.circular(8),
                              ),
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.all(19.0),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Image.asset(
                                      ImageRes.bagHandleImage,
                                      height: 30,
                                      color: AppColors.backgroundColor,
                                    ),
                                    const SizedBox(
                                      width: 14,
                                    ),
                                    Text(
                                      "2 Package",
                                      style: commanMediTxt(
                                          fontSize: 14,
                                          color: AppColors.backgroundColor),
                                    ),
                                    const SizedBox(
                                      width: 8,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Sell the second package and get a reward!",
                          style: commanMediTxt(
                              fontSize: 14, color: AppColors.whiteColor),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              //Hall of Fame
              SizedBox(height: MediaQuery.of(context).size.height * .06),
              Row(
                children: [
                  Image.asset(
                    ImageRes.medalImage,
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "Hall of Fame",
                      style: commanBoldTxt(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              //Top Shareholder this month
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                                text: "Top Shareholder ",
                                style: commanRomanTxt(fontSize: 20),
                                children: <TextSpan>[
                              TextSpan(
                                text: "this month",
                                style: commanMediTxt(
                                    fontSize: 20, color: AppColors.whiteColor),
                              ),
                            ])),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .04),
                      buildHallofFame("#1", false),
                      const SizedBox(height: 10),
                      buildHallofFame("#2", false),
                      const SizedBox(height: 10),
                      buildHallofFame("#3", false),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              //Top Shareholder LifeTime
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: RichText(
                            text: TextSpan(
                                text: "Top Shareholder ",
                                style: commanRomanTxt(fontSize: 20),
                                children: <TextSpan>[
                              TextSpan(
                                text: "Lifetime",
                                style: commanMediTxt(
                                    fontSize: 20, color: AppColors.whiteColor),
                              ),
                            ])),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .04),
                      buildHallofFame("#1", false),
                      const SizedBox(height: 10),
                      buildHallofFame("#2", false),
                      const SizedBox(height: 10),
                      buildHallofFame("#3", false),
                      const SizedBox(height: 5),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
              //Ranks
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(18)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: Text(
                          "Ranks",
                          style: commanRomanTxt(),
                        ),
                      ),
                      SizedBox(
                          height: MediaQuery.of(context).size.height * .04),
                      ListView.builder(
                          shrinkWrap: true,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Image.asset(
                                      ImageRes.ribbonImage,
                                      height: 70,
                                    ),
                                  ),
                                  Container(
                                    height: MediaQuery.of(context).size.height *
                                        .11,
                                    width:
                                        MediaQuery.of(context).size.width * .62,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(12),
                                        color: AppColors.rankBoxColor),
                                  )
                                ],
                              ),
                            );
                          }),
                      const SizedBox(
                        height: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isClickAllRank = !isClickAllRank;
                          });
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("All Ranks",
                                style: commanBoldTxt(
                                    fontSize: 16, color: AppColors.greyColor)),
                            Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Image.asset(
                                isClickAllRank == true
                                    ? ImageRes.arrowUpImage
                                    : ImageRes.arrowDown2Image,
                                color: AppColors.greyColor,
                                height: 8,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 15),
                      isClickAllRank == true
                          ? ListView.builder(
                              shrinkWrap: true,
                              physics: const NeverScrollableScrollPhysics(),
                              itemCount: 10,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.only(bottom: 10),
                                  child: Row(
                                    children: [
                                      Expanded(
                                        child: Image.asset(
                                          ImageRes.ribbonImage,
                                          height: 70,
                                        ),
                                      ),
                                      Container(
                                        height:
                                            MediaQuery.of(context).size.height *
                                                .11,
                                        width:
                                            MediaQuery.of(context).size.width *
                                                .62,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(12),
                                            color: AppColors.rankBoxColor),
                                      )
                                    ],
                                  ),
                                );
                              })
                          : Container(),
                      SizedBox(height: isClickAllRank == true ? 15 : 0),
                    ],
                  ),
                ),
              ),
              //My Academies
              SizedBox(height: MediaQuery.of(context).size.height * .06),
              Row(
                children: [
                  Image.asset(
                    ImageRes.schoolImage,
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "My Academies",
                      style: commanBoldTxt(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Text(
                        "Lesson:",
                        style: commanMediTxt(
                            fontSize: 24, color: AppColors.whiteColor),
                      ),
                      Text(
                        "XXXXXXXXXXX",
                        style: commanMediTxt(
                            fontSize: 24, color: AppColors.greyColor),
                      )
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Image.asset(
                ImageRes.videoCardImage,
              ),
              const SizedBox(
                height: 20,
              ),
              // Multiple choice quiz
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
                  borderRadius: BorderRadius.circular(18),
                ),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Multiple choice quiz",
                          style: commanRomanTxt(),
                        ),
                      ),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Question No1",
                          style: commanBoldTxt(
                              fontSize: 25, color: AppColors.whiteColor),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Skrill has been helping to make it, send it and spend it for millions of customers since 2001. So wherever you are and whatever you want to do with your money, just skrill it.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: NeueHaasDisplayRoman,
                              fontSize: 14,
                              color: AppColors.whiteColor,
                              height: 1.3),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: AppColors.blackColor,
                                  ),
                                  child: Checkbox(
                                    value: isCheck,
                                    onChanged: (val) {
                                      setState(() {
                                        isCheck = val!;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  "XXXXXXXXXXXXXX",
                                  style: commanMediTxt(
                                      fontSize: 17,
                                      color: AppColors.whiteColor),
                                )
                              ],
                            );
                          }),
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Question No2",
                          style: commanBoldTxt(
                              fontSize: 25, color: AppColors.whiteColor),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      const Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          "Skrill has been helping to make it, send it and spend it for millions of customers since 2001. So wherever you are and whatever you want to do with your money, just skrill it.",
                          textAlign: TextAlign.justify,
                          style: TextStyle(
                              fontFamily: NeueHaasDisplayRoman,
                              fontSize: 14,
                              color: AppColors.whiteColor,
                              height: 1.3),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      ListView.builder(
                          shrinkWrap: true,
                          padding: EdgeInsets.zero,
                          physics: const NeverScrollableScrollPhysics(),
                          itemCount: 5,
                          itemBuilder: (context, index) {
                            return Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Theme(
                                  data: Theme.of(context).copyWith(
                                    unselectedWidgetColor: AppColors.blackColor,
                                  ),
                                  child: Checkbox(
                                    value: isCheck,
                                    onChanged: (val) {
                                      setState(() {
                                        isCheck = val!;
                                      });
                                    },
                                  ),
                                ),
                                Text(
                                  "XXXXXXXXXXXXXX",
                                  style: commanMediTxt(
                                      fontSize: 17,
                                      color: AppColors.whiteColor),
                                ),
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ),
              //Live Sessions
              SizedBox(height: MediaQuery.of(context).size.height * .06),
              Row(
                children: [
                  Image.asset(
                    ImageRes.videoCamImage,
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "Live sessions",
                      style: commanBoldTxt(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              Image.asset(ImageRes.videoCardImage),
              //Chat
              const SizedBox(height: 30),
              Container(
                  decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  alignment: Alignment.center,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Chat",
                            style: commanRomanTxt(),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.darkGreyColor,
                              borderRadius: BorderRadius.circular(18)),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          ImageRes.personImage,
                                          height: 28,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "John Doe",
                                          style: commanMediTxt(
                                              fontSize: 10,
                                              color: AppColors.whiteColor),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      ImageRes.chatBoxImage,
                                      height: 42,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: AppColors.darkGreyColor,
                              borderRadius: BorderRadius.circular(18)),
                          alignment: Alignment.center,
                          child: Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Image.asset(
                                          ImageRes.personImage,
                                          height: 28,
                                        ),
                                        const SizedBox(height: 5),
                                        Text(
                                          "John Doe",
                                          style: commanMediTxt(
                                              fontSize: 10,
                                              color: AppColors.whiteColor),
                                        ),
                                      ],
                                    ),
                                    Image.asset(
                                      ImageRes.chatBoxImage,
                                      height: 42,
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(height: 20),
                        TextFormField(
                          style: commanMediTxt(
                              fontSize: 15, color: AppColors.whiteColor),
                          decoration: InputDecoration(
                              filled: true,
                              fillColor: AppColors.darkGreyColor,
                              border: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(18)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(18)),
                              errorBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(18)),
                              suffix: Container(
                                width: 63,
                                height: 30,
                                decoration: BoxDecoration(
                                    color: AppColors.btnColor,
                                    borderRadius: BorderRadius.circular(18)),
                                alignment: Alignment.center,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 14, vertical: 9),
                                  child: Text(
                                    "Send",
                                    style: commanMediTxt(
                                        fontSize: 12,
                                        color: AppColors.whiteColor),
                                  ),
                                ),
                              )),
                        )
                      ],
                    ),
                  )),
              //Opportunities
              SizedBox(height: MediaQuery.of(context).size.height * .06),
              Row(
                children: [
                  Image.asset(
                    ImageRes.earthImage,
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "Opportunities",
                      style: commanBoldTxt(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        const Color(0xffAAADE2).withOpacity(0.40),
                        const Color(0xffAAADE2),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.backgroundColor),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            "Forex",
                            style: commanBoldTxt(
                                fontSize: 45, color: AppColors.whiteColor),
                          ),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CommonBtn(
                            btnWidth: MediaQuery.of(context).size.width,
                            btnOnTap: () {},
                            btnName: "Learn more")
                      ]),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft,
                      colors: [
                        const Color(0xffAAADE2).withOpacity(0.40),
                        const Color(0xffAAADE2),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(18),
                    color: AppColors.backgroundColor),
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.all(21.0),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                              text: TextSpan(
                                  text: "Crypto ",
                                  style: commanBoldTxt(
                                      fontSize: 45,
                                      color: AppColors.whiteColor),
                                  children: <TextSpan>[
                                TextSpan(
                                  text: "& ",
                                  style: commanBoldTxt(
                                      fontSize: 45, color: AppColors.btnColor),
                                ),
                                TextSpan(
                                  text: "NFT ",
                                  style: commanBoldTxt(
                                      fontSize: 45,
                                      color: AppColors.whiteColor),
                                ),
                              ])),
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        CommonBtn(
                            btnWidth: MediaQuery.of(context).size.width,
                            btnOnTap: () {},
                            btnName: "Learn more"),
                      ]),
                ),
              ),
              //Settings
              SizedBox(height: MediaQuery.of(context).size.height * .06),
              Row(
                children: [
                  Image.asset(
                    ImageRes.settingsImage,
                    height: 45,
                    width: 45,
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Text(
                      "Settings",
                      style: commanBoldTxt(fontSize: 20),
                    ),
                  ),
                ],
              ),
              SizedBox(height: MediaQuery.of(context).size.height * .04),
              Container(
                decoration: BoxDecoration(
                    color: AppColors.backgroundColor,
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
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                        color: AppColors.blackColor),
                                  ),
                                  Text(
                                    "Authentificator",
                                    style: commanMediTxt(
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
                                        color: AppColors.blackColor),
                                  ),
                                  Text(
                                    "E-mail",
                                    style: commanMediTxt(
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
                                        color: AppColors.blackColor),
                                  ),
                                  Text(
                                    "SMS",
                                    style: commanMediTxt(
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
                            fillColor: AppColors.blackColor,
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
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: AppColors.backgroundColor,
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
                        decoration: BoxDecoration(
                            color: AppColors.rankBoxColor,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "3vf32094vnnfe94urfj349r4otvme0",
                                style: commanMediTxt(
                                    color: AppColors.whiteColor, fontSize: 14),
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
                        decoration: BoxDecoration(
                            color: AppColors.rankBoxColor,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "3vf32094vnnfe94urfj349r4otvme0",
                                style: commanMediTxt(
                                    color: AppColors.whiteColor, fontSize: 14),
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
                        decoration: BoxDecoration(
                            color: AppColors.rankBoxColor,
                            borderRadius: BorderRadius.circular(8)),
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                "3vf32094vnnfe94urfj349r4otvme0",
                                style: commanMediTxt(
                                    color: AppColors.whiteColor, fontSize: 14),
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
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Container buildClientContainer(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.circular(20)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Image.asset(
                  ImageRes.personImage,
                  height: 40,
                ),
                const SizedBox(width: 15),
                Text(
                  "XXXXXXXXXXX",
                  overflow: TextOverflow.ellipsis,
                  style: commanBoldTxt(fontSize: 18),
                )
              ],
            ),
            SizedBox(height: MediaQuery.of(context).size.height * .04),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "XXXXXX QV",
                          style: commanMediTxt(
                              color: AppColors.btnColor, fontSize: 18),
                        ),
                        Text(
                          "Weekly Revenue",
                          style: commanMediTxt(
                              color: AppColors.greyColor, fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "XXXX",
                          style: commanMediTxt(
                              color: AppColors.whiteColor, fontSize: 18),
                        ),
                        Text(
                          "TP",
                          style: commanMediTxt(
                              color: AppColors.greyColor, fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              ImageRes.arrowUpImage,
                              height: 10,
                              width: 10,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "34,4%",
                              style: commanMediTxt(
                                  color: AppColors.greenColor, fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "WC",
                          style: commanMediTxt(
                              color: AppColors.greyColor, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "XXXXXX QV",
                          style: commanMediTxt(
                              color: AppColors.btnColor, fontSize: 18),
                        ),
                        Text(
                          "Personal Investment",
                          style: commanMediTxt(
                              color: AppColors.greyColor, fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "XXXX",
                          style: commanMediTxt(
                              color: AppColors.whiteColor, fontSize: 18),
                        ),
                        Text(
                          "Crank High",
                          style: commanMediTxt(
                              color: AppColors.greyColor, fontSize: 10),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              ImageRes.arrowDown2Image,
                              height: 10,
                              width: 10,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "4,4%",
                              style: commanMediTxt(
                                  color: AppColors.greColor, fontSize: 18),
                            ),
                          ],
                        ),
                        Text(
                          "MC",
                          style: commanMediTxt(
                              color: AppColors.greyColor, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Image.asset(
                              ImageRes.arrowDown2Image,
                              height: 10,
                              width: 10,
                            ),
                            const SizedBox(width: 8),
                            Text(
                              "10,9%",
                              style: commanMediTxt(
                                  color: AppColors.greenColor, fontSize: 18),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Text(
                          "3MC",
                          style: commanMediTxt(
                              color: AppColors.greyColor, fontSize: 10),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildTrustPoint(
      BuildContext context, String name, String percentage, String image,
      {double? progress}) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.rankBoxColor,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: [
            Image.asset(
              image,
              height: 60,
              width: 60,
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      name,
                      style: commanMediTxt(fontSize: 18),
                    ),
                    Text(
                      percentage,
                      style: commanMediTxt(
                          fontSize: 14, color: AppColors.greyColor),
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width * .53,
                  height: 20,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.all(Radius.circular(10)),
                    child: LinearProgressIndicator(
                      value: progress ?? 0.8,
                      valueColor: const AlwaysStoppedAnimation<Color>(
                          AppColors.btnColor),
                      backgroundColor: AppColors.backgroundColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }

  Container buildRowExpectedPayout(String name, String amount,
      {Color? color1, Color? color2, double? size1, double? size2}) {
    return Container(
      decoration: BoxDecoration(
          color: AppColors.rankBoxColor,
          borderRadius: BorderRadius.circular(10)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
        child: Row(
          children: [
            Expanded(
                child: Text(
              name,
              style: commanMediTxt(
                  color: color1 ?? AppColors.greyColor, fontSize: size1 ?? 15),
            )),
            Text(
              "\u0024 $amount",
              style: commanMediTxt(
                  fontSize: size2 ?? 18, color: color2 ?? Colors.white),
            )
          ],
        ),
      ),
    );
  }

  Container buildTeamPartners(String rankNumber, bool isNextRank) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.rankBoxColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: Row(
          children: [
            const SizedBox(width: 10),
            Text(
              rankNumber,
              style:
                  commanMediTxt(color: AppColors.backgroundColor, fontSize: 18),
            ),
            const SizedBox(width: 5),
            Image.asset(
              ImageRes.personImage,
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Text(
              "Jonh Doe",
              style: commanMediTxt(fontSize: 17),
            )),
            Text(
              isNextRank ? "1.324.412 QV" : "\u0024 1.324.412",
              style: commanBoldTxt(color: AppColors.btnColor),
            ),
            const SizedBox(width: 2),
            if (!isNextRank) ...[
              Image.asset(
                ImageRes.triangleImage,
                height: 15,
                width: 15,
              ),
            ],
            const SizedBox(width: 10),
          ],
        ),
      ),
    );
  }

  Container buildHallofFame(String rankNumber, bool isNextRank) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.rankBoxColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 15,
        ),
        child: Row(
          children: [
            const SizedBox(width: 16),
            Image.asset(
              ImageRes.trophyImage,
              height: 18,
            ),
            const SizedBox(width: 10),
            Text(
              rankNumber,
              style:
                  commanMediTxt(color: AppColors.backgroundColor, fontSize: 18),
            ),
            const SizedBox(width: 5),
            Image.asset(
              ImageRes.personImage,
              height: 30,
              width: 30,
            ),
            const SizedBox(width: 10),
            Expanded(
                child: Text(
              "Jonh Doe",
              style: commanMediTxt(fontSize: 17),
            )),
            Text(
              isNextRank ? "1.324.412 QV" : "\u0024 1.324.412",
              style: commanBoldTxt(color: AppColors.btnColor),
            ),
            const SizedBox(width: 2),
            if (!isNextRank) ...[
              Image.asset(
                ImageRes.triangleImage,
                height: 15,
                width: 15,
              ),
            ],
            const SizedBox(width: 16),
          ],
        ),
      ),
    );
  }
}
