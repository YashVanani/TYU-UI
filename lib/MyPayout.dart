import 'package:flutter/material.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/imageRes.dart';

import 'Components/CommonTextField.dart';

class Payout extends StatefulWidget {
  const Payout({Key? key}) : super(key: key);

  @override
  State<Payout> createState() => _PayoutState();
}

class _PayoutState extends State<Payout> {
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
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                const Center(
                    child: Text(
                  'My Payout',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
                const SizedBox(
                  height: 30,
                ),
                one(context),
                second(context),
                three(context),
                four(context),
              ],
            ),
          ],
        ));
  }
}

Widget one(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20)),
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Crypto',
            style: TextStyle(fontSize: 25, color: AppColors.whiteColor),
          ),
          const SizedBox(
            height: 15,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.darkGreyColor.withOpacity(1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Total balance',
                    style: TextStyle(fontSize: 20, color: AppColors.whiteColor),
                  ),
                  const SizedBox(
                    width: 60,
                  ),
                  const Text(
                    '\$ 20.425',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.btnColor),
                  ),
                  Image.asset(
                    ImageRes.downArrow,
                    color: AppColors.btnColor,
                    height: 8,
                  )
                ]),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.darkGreyColor.withOpacity(1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'bhjbhlbbhsushuhuxxjjsnhb',
                    style: TextStyle(fontSize: 20, color: AppColors.whiteColor),
                  ),
                  Image.asset(
                    ImageRes.iconImage,
                    color: AppColors.btnColor,
                    height: 25,
                  )
                ]),
          ),
          const SizedBox(height: 15),
          const Text(
            'Updated 06:30PM UST+2 06.05.22',
            style: TextStyle(fontSize: 17, color: AppColors.greyColor),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                ImageRes.bitImage,
                height: 70,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  RichText(
                    text: const TextSpan(
                      text: '13.48502113',
                      style: TextStyle(
                          fontSize: 20,
                          color: AppColors.whiteColor,
                          fontWeight: FontWeight.bold),
                      children: <TextSpan>[
                        TextSpan(
                            text: ' BTC',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: AppColors.btnColor,
                                fontSize: 20)),
                      ],
                    ),
                  ),
                  const Text(
                    '1.782,85 USD',
                    style: TextStyle(fontSize: 18, color: AppColors.greyColor),
                  ),
                ],
              ),
              Image.asset(
                ImageRes.downArrow,
                height: 10,
                color: AppColors.btnColor,
              ),
            ],
          ),
          const SizedBox(height: 30),
          Center(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(15)),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.btnColor),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                    onPressed: () {},
                    child: const Text(
                      'Send',
                      style: TextStyle(fontSize: 18),
                    ),
                  ))),
          const SizedBox(height: 10),
          Center(
              child: SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(
                            const EdgeInsets.all(15)),
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.btnColor),
                        foregroundColor:
                            MaterialStateProperty.all<Color>(Colors.white),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.0),
                        ))),
                    onPressed: () {},
                    child: const Text(
                      'Receive',
                      style: TextStyle(fontSize: 18),
                    ),
                  ))),
          const SizedBox(
            height: 40,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.darkGreyColor.withOpacity(1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset(
                  ImageRes.bitImage,
                  height: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Bitcoin",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.23,
                ),
                Column(
                  children: const [
                    Text('23.424 BTC',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor)),
                    Text('\$ 1.324.412',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.btnColor))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.darkGreyColor.withOpacity(1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset(
                  ImageRes.bitImage,
                  height: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Bitcoin",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.23,
                ),
                Column(
                  children: const [
                    Text('23.424 BTC',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor)),
                    Text('\$ 1.324.412',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.btnColor))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            decoration: BoxDecoration(
                color: AppColors.darkGreyColor.withOpacity(1),
                borderRadius: BorderRadius.circular(10)),
            child: Row(
              children: [
                Image.asset(
                  ImageRes.bitImage,
                  height: 35,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Text("Bitcoin",
                    style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: AppColors.whiteColor)),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.23,
                ),
                Column(
                  children: const [
                    Text('23.424 BTC',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.whiteColor)),
                    Text('\$ 1.324.412',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: AppColors.btnColor))
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Other coins',
                  style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: AppColors.greyColor)),
              const SizedBox(width: 10),
              Image.asset(
                ImageRes.downArrow,
                height: 8,
              ),
            ],
          )
        ],
      ),
    ),
  );
}

Widget second(BuildContext context) {
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Skrill',
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'The online wallet for money movers and makers',
          style: TextStyle(fontSize: 15, color: Colors.grey),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: Image.asset(
            ImageRes.walletImage,
            height: 70,
          ),
        ),
        const SizedBox(height: 30),
        Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(15)),
                      backgroundColor:
                          MaterialStateProperty.all(AppColors.btnColor),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ))),
                  onPressed: () {},
                  child: const Text(
                    'Open a skrill',
                    style: TextStyle(fontSize: 18),
                  ),
                ))),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Skrill has been helping to make it, send it and spend it for millions of customers since 2001. So wherever you are and whatever you want to do with your money, just skrill it.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 15, color: Colors.white),
        ),
      ],
    ),
  );
}

Widget three(BuildContext context){
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Vouchers',
          style: const TextStyle(fontSize: 25, color: Colors.white),
        ),
        const SizedBox(
          height: 15,
        ),
        const Text(
          'Enter the value of the voucher to get the money',
          style: const TextStyle(fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.grey),
        ),
        const SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: AppColors.blackColor,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            children: [
               Image.asset(
                ImageRes.walletImage,
                color: AppColors.btnColor,
                height: 20,
              ),
              const SizedBox(width: 10,),
              Image.asset(
                ImageRes.downArrow,
                color: AppColors.btnColor,
                height: 7,
              ),
              const SizedBox(width: 10,),
              const Text('Value', style: TextStyle(fontSize: 15,
                  color: AppColors.greColor),),
            ],
          ),
        ),
        const SizedBox(height:10),
        const Text('The maximum available output is 12.490\$', style: TextStyle(fontSize: 15,
            color: AppColors.whiteColor),),
        const SizedBox(height: 30),
        Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(15)),
                      backgroundColor:
                      MaterialStateProperty.all(AppColors.btnColor),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                  onPressed: () {},
                  child: const Text(
                    'Confirm',
                    style: TextStyle(fontSize: 18),
                  ),
                ))),

      ],
    ),
  );
}
Widget four(BuildContext context){
  return Container(
    margin: const EdgeInsets.all(10),
    padding: const EdgeInsets.all(15),
    width: MediaQuery.of(context).size.width,
    decoration: BoxDecoration(
        color: AppColors.backgroundColor,
        borderRadius: BorderRadius.circular(20)),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Credit Card',
          style: TextStyle(fontSize: 22, color: Colors.white),
        ),
         const SizedBox(height: 20,),
        Image.asset(
          ImageRes.cardImg,
        ),
        const SizedBox(height: 20,),
        Container(
          padding: const EdgeInsets.all(15),
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
              color: AppColors.blackColor,
              borderRadius: BorderRadius.circular(10)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text('XXXXXXXXXXXXXXXXX', style: TextStyle(fontSize: 15,
                  color: AppColors.greColor),),
              Image.asset(
                ImageRes.iconImage,
                height: 25,
              ),
            ],
          ),
        ),
        const SizedBox(height: 20,),
        Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(15)),
                      backgroundColor:
                      MaterialStateProperty.all(AppColors.btnColor),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                  onPressed: () {},
                  child: const Text(
                    'Block card',
                    style: TextStyle(fontSize: 18),
                  ),
                ))),
        SizedBox(height: 20,),
        Center(
            child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.9,
                child: ElevatedButton(
                  style: ButtonStyle(
                      padding: MaterialStateProperty.all<EdgeInsets>(
                          const EdgeInsets.all(15)),
                      backgroundColor:
                      MaterialStateProperty.all(AppColors.btnColor),
                      foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ))),
                  onPressed: () {},
                  child: const Text(
                    'Change pin',
                    style: TextStyle(fontSize: 18),
                  ),
                ))),
      ],
    ),
  );
}
