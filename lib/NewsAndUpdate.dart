import 'package:flutter/material.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/imageRes.dart';

import 'MyPayout.dart';

class News extends StatefulWidget {
  const News({Key? key}) : super(key: key);

  @override
  State<News> createState() => _NewsState();
}

class _NewsState extends State<News> {
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
          )
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        shrinkWrap: true,
        children: [
          Column(
            children: [
              const SizedBox(height: 30),
              const Text(
                'News and Updates',
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: AppColors.whiteColor),
              ),
              const SizedBox(height: 30),
              sample('10.12.2023', 'XXXXXXXXXXXXXX',
                  Image.asset('informationCircleImage'),context),
              sample('10.12.2023', 'XXXXXXXXXXXXXX',
                  Image.asset('informationCircleImage'),context),
              sample('10.12.2023', 'XXXXXXXXXXXXXX',
                  Image.asset('informationCircleImage'),context),
            ],
          )
        ],
      ),
    );
  }
}

Widget sample(String date, String text, Image image, BuildContext context) {
  return Container(
    padding: const EdgeInsets.all(15),
    margin: const EdgeInsets.all(10),
    decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(12.0)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          date,
          style: const TextStyle(
              fontSize: 15,
              color: AppColors.greyColor),
        ),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: AppColors.whiteColor),
        ),
        const SizedBox(height: 10),
        Row(
          children:[
            const Text(
              'Learn more',
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: AppColors.btnColor),
            ),
            const SizedBox(width: 10),
            Image.asset(ImageRes.downArrow,
              color: AppColors.btnColor,
              height: 8,
            )
          ],
        ),
        const SizedBox(height: 20),
        ClipRRect(
          borderRadius: BorderRadius.circular(12.0),
          child:  Image.asset(
            ImageRes.computerImg,
            height: MediaQuery.of(context).size.width * 0.65,
            width: MediaQuery.of(context).size.width * 1,
            fit: BoxFit.fill,
          ),
        )
      ],
    ),
  );
}
