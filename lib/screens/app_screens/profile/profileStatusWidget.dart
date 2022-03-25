import 'package:flutter/material.dart';
import 'package:yopals/constants.dart';
import 'package:yopals/utils/dimensions.dart';

class ProfileStatus extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        padding: EdgeInsets.only(
            left: Dimensions.padding80,
            right: Dimensions.padding80,
            bottom: Dimensions.padding10),
        child: Column(children: [
          SizedBox(height: Dimensions.screenHeight / 8.04),
          Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(150),
              ),
              child: Container(
                  width: Dimensions.profileAvatar,
                  height: Dimensions.profileAvatar,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/profile.jpg"),
                      fit: BoxFit.cover
                    ),
                      shape: BoxShape.circle, color: Colors.white))),
          SizedBox(height: Dimensions.sizeBox10),
          Text("Shameel Irtaza", style: TextStyles.black16PtTextStyle),
          SizedBox(height: Dimensions.sizeBox10),
          Row(
            children: [
              Icon(
                Icons.message_rounded,
                color: AppColors.mainColor,
              ),
              SizedBox(width: Dimensions.sizeBox10),
              Text(
                "Reviews",
                style: TextStyles.profileStatusText,
              ),
              SizedBox(width: Dimensions.sizeBox10),
              Text("0",
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              SizedBox(width: Dimensions.sizeBox10 * 2),
              Icon(
                Icons.star,
                color: AppColors.mainColor,
              ),
              SizedBox(width: Dimensions.sizeBox10),
              Text(
                "Points",
                style: TextStyle(fontSize: 16,color: Colors.grey),
              ),
              SizedBox(width: Dimensions.sizeBox10),
              Text("0",
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ],
          ),
          SizedBox(height: Dimensions.sizeBox10),
          Row(
            children: [
              Icon(
                Icons.male,
                color: AppColors.mainColor,
              ),
              SizedBox(width: Dimensions.sizeBox10),
              Text(
                "Male",
                style: TextStyles.profileStatusText,
              ),
              SizedBox(width: Dimensions.sizeBox10),
              Text("0",
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold)),
              SizedBox(width: Dimensions.sizeBox10 * 2),
              Icon(
                Icons.location_on,
                color: AppColors.mainColor,
              ),
              SizedBox(width: Dimensions.sizeBox10),
              Text(
                "Lahore",
                style: TextStyles.profileStatusText,
              ),
              SizedBox(width: Dimensions.sizeBox10),
              Text("0",
                  style: TextStyle(
                      color: AppColors.mainColor,
                      fontSize: 16,
                      fontWeight: FontWeight.bold))
            ],
          ),
          Image.asset("assets/images/dragon.png", height: 150),
          Row(
            children: [
              Text(
                "Joined on :",
                style: TextStyle(fontSize: 14, color: Colors.grey),
              ),
              Text(
                "March 24th 2022",
                style: TextStyle(
                    fontSize: 15, fontWeight: FontWeight.w500),
              )
            ],
          ),
        ]));
  }
}
