import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yopals/constants.dart';


class BusinessCard extends StatelessWidget {

  int businessRating = 3;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Colors.grey[300]
            )
            // boxShadow: [
            //   BoxShadow(
            //     color: Color(0xFFEEEEEE),
            //     spreadRadius: 4,
            //     offset: Offset(0.0, 0.5), //(x,y)
            //     blurRadius: 6,
            //   ),
            // ]
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Stack(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10)),
                  child: CachedNetworkImage(
                      imageUrl: 'https://c1.wallpaperflare.com/preview/729/690/547/headphone-black-yellow-shadow.jpg',
                      fit: BoxFit.fill,
                      height: 150.0,
                      width: MediaQuery.of(context).size.width,
                      placeholder: (context, url) =>
                          Image.asset(
                            "assets/images/loading_image.jpg",
                            fit: BoxFit.cover,
                          ),
                      imageBuilder: (context, imageProvider) => Container(
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: imageProvider,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      errorWidget: (context, string, dynamic) {
                        return Image.asset(
                          "assets/images/loading_image.jpg",
                          fit: BoxFit.cover,
                        );
                      }
                  ),

                ),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 7.0, top: 8.0),
              child: Text(
                'Product Name',
                maxLines: 1,
                textAlign: TextAlign.start,
                style: TextStyles.darkGreyNormalTextStyle
              ),
            ),

            SizedBox(
              height: 8.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 4.0),
              child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [

                      RatingBar.builder(
                        initialRating: 5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: false,
                        unratedColor: Colors.white,
                        itemCount: 5,
                        itemSize: 23.0,
                        itemPadding: EdgeInsets.symmetric(horizontal: 0),
                        itemBuilder: (context, index) => businessRating >= index + 1 ? Container(
                          margin: EdgeInsets.all(3.0),
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            shape: BoxShape.circle,
                          ),
                          child: Icon(
                            Icons.star_rate_rounded,
                            color: Colors.white,
                          ),
                        ) : Icon(
                          Icons.star_border_rounded,
                          color: Colors.grey.shade600,
                          size: 23.0,
                        ),
                        onRatingUpdate: (rating) {},
                        updateOnDrag: false,
                      ),
                    ]),
            ),

            SizedBox(
              height: 7.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Text(
                    'Company',
                    textAlign: TextAlign.start,
                    style: TextStyles.red12PtTextStyle
                ),
            ),

          ],
        ),
      ),
    );
  }
}
