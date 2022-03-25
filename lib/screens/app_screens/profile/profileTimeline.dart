import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:yopals/constants.dart';
import 'package:yopals/utils/dimensions.dart';

class ProfileTimeline extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(Dimensions.padding10),
      padding: EdgeInsets.only(
          right: Dimensions.padding10,
          top: Dimensions.padding10,
          left: Dimensions.padding10 * 2,
          bottom: Dimensions.padding10),
      width: double.maxFinite,
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Timeline",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 50,
          ),
          Text(
            "Add Post",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: Dimensions.sizeBox10,
          ),
          Container(
            height: 40,
            padding: EdgeInsets.all(Dimensions.padding10),
            decoration:
            BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
              children: [
                Text(
                  "B",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: Dimensions.sizeBox10,
                ),
                Text(
                  "I",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, fontSize: 16),
                ),
                SizedBox(
                  width: Dimensions.sizeBox10,
                ),
                Icon(Icons.attachment)
              ],
            ),
          ),
          Container(
              height: 100,
              padding: EdgeInsets.only(
                  left: Dimensions.padding10,
                  right: Dimensions.padding10),
              width: double.maxFinite,
              decoration: BoxDecoration(
                border: Border(
                  left: BorderSide(color: Colors.black),
                  right: BorderSide(color: Colors.black),
                  bottom: BorderSide(color: Colors.black),
                ),
              ),
              child: TextField(
                keyboardType: TextInputType.multiline,
                maxLines: 4,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: "Type the Content Here !",
                ),
              )),
          SizedBox(
            height: Dimensions.sizeBox10 * 3,
          ),
          Container(
            height: 40,
            width: double.maxFinite,
            decoration:
            BoxDecoration(border: Border.all(color: Colors.black)),
            child: Row(
              children: [
                Container(
                  width: Get.context.width / 1.5,
                  child: Center(
                      child: Text(
                        "Upload Images Here",
                        style: TextStyles.profileStatusText,
                      )),
                ),
                Container(
                  width: Get.context.width / 5,
                  color: Colors.grey,
                  child: Center(
                    child: Text("Browse"),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: Dimensions.sizeBox10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5.0),
                    ),
                  ),
                  onPressed: () {},
                  child: Text(
                    "Publish",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.bold),
                  )),
            ],
          )
        ],
      ),
    );
  }
}
