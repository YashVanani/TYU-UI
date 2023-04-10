import 'package:flutter/material.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/imageRes.dart';
import 'package:tyu/Utils/textStyleConstant.dart';

class BackOffice extends StatefulWidget {
  const BackOffice({Key? key}) : super(key: key);

  @override
  State<BackOffice> createState() => _BackOfficeState();
}

class _BackOfficeState extends State<BackOffice> {
  bool isCheck = false;
  bool showNetworkTree = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.blackColor,
      appBar: AppBar(
        backgroundColor: AppColors.backgroundColor,
        automaticallyImplyLeading: false,
        title: Image.asset(ImageRes.uAImage, height: 30),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 15, top: 10, bottom: 10),
            child: Image.asset(
              ImageRes.personImage,
              height: 5,
            ),
          )
        ],
      ),
      body: 
      
      showNetworkTree?
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
      )
      :ListView(
        scrollDirection: Axis.vertical,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.only(left: 15,right: 15,top: 50),
            decoration: BoxDecoration(
                color: AppColors.backgroundColor,
                borderRadius: BorderRadius.circular(12.0)),
            child: Column(
              children: [
                const SizedBox(height: 10,),
                const Text('NFT / Metaverse',
                  style: TextStyle(fontSize: 30,color: AppColors.whiteColor,
                      fontWeight: FontWeight.bold
                  ),),
                const SizedBox(height: 20),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.transparent,
                    border: Border.all(
                        width: 2,
                        color: AppColors.btnColor
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.greyColor
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    onChanged: (state) =>
                                        setState(() => isCheck = !isCheck),
                                    activeColor: Colors.transparent,
                                    checkColor: AppColors.btnColor,
                                    materialTapTargetSize: MaterialTapTargetSize.padded,
                                    value: isCheck,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Basic',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                              Text('Academy',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18),),
                            ],
                          ),
                          const SizedBox(width: 60,),
                          RichText(
                            text: const TextSpan(text: '300 \$',
                                style:TextStyle(fontSize: 22,
                                  fontWeight: FontWeight.bold,color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: '/',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'month',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ]
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Divider(
                        thickness: 1.5,
                        color: AppColors.blackColor,
                      ),
                      const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w100,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.transparent,
                    border: Border.all(
                        width: 2,
                        color: AppColors.darkGreyColor
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.greyColor
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    onChanged: (state) =>
                                        setState(() => isCheck = !isCheck),
                                    activeColor: Colors.transparent,
                                    checkColor: AppColors.btnColor,
                                    materialTapTargetSize: MaterialTapTargetSize.padded,
                                    value: isCheck,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Advance',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                              Text('Academy',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 18),),
                            ],
                          ),
                          const SizedBox(width: 50,),
                          RichText(
                            text: const TextSpan(text: '1800 \$',
                                style:TextStyle(fontSize: 22,
                                  fontWeight: FontWeight.bold,color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: '/',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'month',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ]
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Divider(
                        thickness: 1.5,
                        color: AppColors.blackColor,
                      ),
                      const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w100,
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  margin: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.0),
                    color: Colors.transparent,
                    border: Border.all(
                        width: 2,
                        color: AppColors.darkGreyColor
                    ),
                  ),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            clipBehavior: Clip.hardEdge,
                            borderRadius: const BorderRadius.all(Radius.circular(30)),
                            child: SizedBox(
                              width: 25,
                              height: 25,
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      color: AppColors.greyColor
                                  ),
                                  borderRadius: BorderRadius.circular(50),
                                ),
                                child: Theme(
                                  data: ThemeData(
                                    unselectedWidgetColor: Colors.transparent,
                                  ),
                                  child: Checkbox(
                                    onChanged: (state) =>
                                        setState(() => isCheck = !isCheck),
                                    activeColor: Colors.transparent,
                                    checkColor: AppColors.btnColor,
                                    materialTapTargetSize: MaterialTapTargetSize.padded,
                                    value: isCheck,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text('Live sessions',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18),),
                              Text('only the level of academy',
                                style: TextStyle(color: Colors.white,fontWeight: FontWeight.normal,fontSize: 11),),
                            ],
                          ),
                          RichText(
                            text: const TextSpan(text: '29.99\$',
                                style:TextStyle(fontSize: 22,color: Colors.white,
                                ),
                                children: [
                                  TextSpan(
                                    text: '/',
                                    style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'month',
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.w100,
                                    ),
                                  ),
                                ]
                            ),
                          )
                        ],
                      ),
                      const SizedBox(height: 20,),
                      const Divider(
                        thickness: 1.5,
                        color: AppColors.blackColor,
                      ),
                      const Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry.",
                        style: TextStyle(
                          fontSize: 15,
                          color: AppColors.greyColor,
                          fontWeight: FontWeight.w100,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 15,),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: ElevatedButton(
                    style: ButtonStyle(
                        padding: MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(15)),
                        backgroundColor: MaterialStateProperty.all(AppColors.btnColor),
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.white),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0),
                            )
                        )
                    ),
                    onPressed: (){
                      setState(() {
                        showNetworkTree = true;
                      });

                    }, child: const Text('Save Change',style: TextStyle(fontSize: 18),),
                  )
                )
              ],
            ),
          ),
          SizedBox(height: 20,)
        ],
      )
    );
  }
}
