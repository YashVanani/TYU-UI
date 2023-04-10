import 'package:flutter/material.dart';
import 'package:tyu/MyPayout.dart';
import 'package:tyu/Utils/colorConstants.dart';

import 'Utils/imageRes.dart';

class Menu extends StatefulWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 150,),
          Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const Text(
                  'My Business',
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: AppColors.menuTextColor),
                ),
                const SizedBox(width: 50),
                Image.asset(ImageRes.arrowImg,
                  color: AppColors.menuTextColor,
                  height: 10,
                )
              ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'My Academies',
                style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.bold,
                    color: AppColors.menuTextColor),
              ),
              const SizedBox(width: 50),
              Image.asset(ImageRes.arrowImg,
                color: AppColors.menuTextColor,
                height: 10,
              )
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Opportunities',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: AppColors.menuTextColor),
              ),
              const SizedBox(width: 50),
              Image.asset(ImageRes.arrowImg,
                color: AppColors.menuTextColor,
                height: 10,
              )
            ],
          ),
          const SizedBox(height: 30,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Text(
                'Love your Universe',
                style: TextStyle(
                    fontSize: 27,
                    fontWeight: FontWeight.bold,
                    color: AppColors.menuTextColor ),
              ),
              SizedBox(width: 30,)
            ],
          ),
        ],
      ),
    );
  }
}
