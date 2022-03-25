import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:yopals/constants.dart';

// ignore: must_be_immutable
class RecentActivityCard extends StatelessWidget {

  int businessRating = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.grey.shade500,
          width: 0.4
        )
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0, right: 15.0),
        child: Column(
          children: [

            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Row(
                children: [

                  ClipOval(
                    child: Container(
                      height: 50.0,
                      width: 50.0,
                          child: CachedNetworkImage(
                                imageUrl: 'https://c1.wallpaperflare.com/preview/729/690/547/headphone-black-yellow-shadow.jpg',
                                fit: BoxFit.fill,
                              height: 50.0,
                              width: 50.0,
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
                  ),

                  SizedBox(
                    width: 5.0,
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Row(
                        children: [

                          Icon(
                            Icons.person_rounded,
                            color: Colors.black,
                            size: 22.0,
                          ),

                          Text(
                            'Abdul Wahab',
                            style: TextStyles.blackNormalTextStyle,
                          )

                        ],
                      ),

                      SizedBox(
                        height: 5.0,
                      ),

                      Row(
                        children: [

                          Icon(
                            Icons.star_rate_rounded,
                            color: Colors.black,
                            size: 22.0,
                          ),

                          Text(
                            '245 Reviews',
                            style: TextStyles.blackNormalTextStyle,
                          ),

                          SizedBox(
                            width: 10.0,
                          ),

                          Icon(
                            Icons.location_on_rounded,
                            color: Colors.black,
                            size: 21.0,
                          ),

                          Text(
                            'Lahore',
                            style: TextStyles.blackNormalTextStyle,
                          ),

                        ],
                      )

                    ],
                  )

                ],
              ),
            ),

            Divider(
                color: Colors.grey.shade500,
                thickness: 0.4
            ),

            SizedBox(
              height: 7.0,
            ),

            Row(
                children: [
                  Text(
                    'Benazir Kulfa',
                    style: TextStyles.blue16PtHeavyWeightTextStyle,
                  ),
                ],
              ),

            SizedBox(
              height: 7.0,
            ),

            Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    RatingBar.builder(
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: false,
                      unratedColor: Colors.white,
                      itemCount: 5,
                      itemSize: 30.0,
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
                        size: 30.0,
                      ),
                      onRatingUpdate: (rating) {},
                      updateOnDrag: false,
                    ),
                  ]),

            SizedBox(
              height: 7.0,
            ),

            Text(
                'Lorem Ipsum is simply dummy text of the printing and typesetting industry',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                softWrap: false,
                style: TextStyles.veryDarkGreyNormalTextStyle,
              ),

            SizedBox(
              height: 15.0,
            ),

            GestureDetector(
              onTap: (){},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                      'Read More',
                      textAlign: TextAlign.start,
                      style: TextStyles.redLessWeight14PtTextStyle
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Image(
                    image: AssetImage(
                      'assets/images/down_arrow.png',
                    ),
                    color: Color(0xffFD2225),
                    width: 12.0,
                    height: 12.0,
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

          ],
        ),
      ),
    );
  }
}
