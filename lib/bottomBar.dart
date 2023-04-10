import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:tyu/HomePage.dart';
import 'package:tyu/MenuScreen.dart';
import 'package:tyu/NewsAndUpdate.dart';
import 'package:tyu/Utils/colorConstants.dart';
import 'package:tyu/Utils/imageRes.dart';
import 'package:tyu/Utils/textStyleConstant.dart';
import 'package:tyu/backOffice.dart';
import 'package:tyu/updateOnProject.dart';

class BottomBarScreen extends StatefulWidget {
  const BottomBarScreen({Key? key}) : super(key: key);

  @override
  State<BottomBarScreen> createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
   int _selectedIndex = 0;  
   static const List<Widget> _widgetOptions = <Widget>[  
    Menu(),
    HomePage(),
    BackOffice(),
    News(),
    ProjectUpdate(),
  ];  

  void _onItemTapped(int index) {  
    setState(() {  
      _selectedIndex = index;  
    });  
  }  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
       body: _widgetOptions.elementAt(_selectedIndex),  
      bottomNavigationBar: Container(
        width: MediaQuery.of(context).size.width,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
          color: AppColors.backgroundColor,
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
            bottomLeft: Radius.circular(20),
            bottomRight: Radius.circular(20)
          ),
        ),
        child: BottomNavigationBar(
          backgroundColor: AppColors.backgroundColor,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(ImageRes.bottomMenu,height: 23,),
              ),
              label: "Menu",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(ImageRes.bottomSearch,height: 23),
              ),
              label: "Search",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(ImageRes.bottomBusiness,height: 23),
              ),
              label: "Business",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(ImageRes.bottomNews,height: 23),
              ),
              label: "News",
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(ImageRes.bottomLives,height: 23),
              ),
              label: "Lives",
            ),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle: commanRomanTxt(color: AppColors.whiteColor,fontSize: 10),
          unselectedLabelStyle: commanRomanTxt(color: AppColors.whiteColor,fontSize: 10),
          selectedItemColor: AppColors.whiteColor,
          unselectedItemColor: AppColors.whiteColor,
        ),
      ),
    );
  }
}