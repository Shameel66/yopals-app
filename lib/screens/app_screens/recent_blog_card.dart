import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:yopals/constants.dart';


// ignore: must_be_immutable
class RecentBlogCard extends StatelessWidget {

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
                  'Shop Name',
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  softWrap: false,
                  textAlign: TextAlign.start,
                  style: TextStyles.redBigWeight16PtTextStyle
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 7.0),
              child: Text(
                '23 Feb 2022',
                style: TextStyles.blackNormalTextStyle,
              ),
            ),

            SizedBox(
              height: 7.0,
            ),

            Divider(
              color: Colors.grey.shade400,
              thickness: 0.5,
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(0.0, 5.0, 10.0, 10.0),
              child: GestureDetector(
                onTap: (){},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                          'Read More',
                          textAlign: TextAlign.start,
                          style: TextStyles.redBigWeight16PtTextStyle
                      ),
                    SizedBox(
                      width: 5.0,
                    ),
                    Icon(
                      Icons.double_arrow_rounded,
                      color: Color(0xffFD2225),
                      size: 16.0,
                    )
                  ],
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
