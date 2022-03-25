import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:yopals/constants.dart';
import 'package:yopals/screens/app_screens/profile/profileStatusWidget.dart';
import 'package:yopals/screens/app_screens/profile/profileTimeline.dart';
import 'package:yopals/utils/dimensions.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatefulWidget {
  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController searchController = TextEditingController();
  TextEditingController Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            //Profile Avatar and Status Container
            ProfileStatus(),
            SizedBox(height: Dimensions.sizeBox10 * 4),
            //Refferral Link
            Container(
                padding: EdgeInsets.only(
                    left: Dimensions.padding10,
                    right: Dimensions.padding10,
                    top: Dimensions.padding10,
                    bottom: Dimensions.padding10 * 3),
                margin: EdgeInsets.only(
                    left: Dimensions.padding10, right: Dimensions.padding10),
                height: 100,
                width: double.maxFinite,
                color: Colors.white,
                child: Row(children: [
                  Expanded(
                      child: Container(
                    height: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.mainColor)),
                    child: Center(
                        child: Text(
                      "GET REFERRAL LINK",
                      style: TextStyle(
                          color: AppColors.mainColor,
                          fontSize: 16,
                          fontWeight: FontWeight.w900),
                    )),
                  )),
                  SizedBox(width: Dimensions.sizeBox10),
                  Container(
                    height: 40,
                    width: 60,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        border: Border.all(color: AppColors.mainColor)),
                    child: Center(
                      child: Text(
                        "?",
                        style: TextStyle(
                            color: AppColors.mainColor,
                            fontSize: 17,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  )
                ])),
            //Search Users
            Container(
                padding: EdgeInsets.all(Dimensions.padding10),
                margin: EdgeInsets.all(Dimensions.padding10),
                height: 100,
                width: double.maxFinite,
                color: Colors.white,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      " Search User",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    SizedBox(
                      height: Dimensions.padding10,
                    ),
                    Container(
                      height: 40,
                      padding: EdgeInsets.only(left: Dimensions.padding10),
                      width: double.maxFinite,
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.black)),
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none, hintText: 'Search Users'),
                      ),
                    ),
                  ],
                )),
            //Timeline Container
            ProfileTimeline()
          ],
        ),
      ),
    );
  }
}
