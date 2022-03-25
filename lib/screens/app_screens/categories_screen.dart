import 'package:cached_network_image/cached_network_image.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:yopals/constants.dart';
import 'package:yopals/screens/app_screens/category_screen_item_view.dart';

// ignore: must_be_immutable
class Categories extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoriesState();
  }
}

class _CategoriesState extends State<Categories> {

  bool allSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
            child: Container(
              color: Colors.grey[200],
              child: Column(
                children: [
                  // Padding(
                  //   padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  //   child: Container(
                  //     color: Colors.white,
                  //     child: Row(
                  //       children: [
                  //         Padding(
                  //           padding: const EdgeInsets.fromLTRB(10, 5, 8, 10),
                  //           child: Image.asset(
                  //             'assets/images/toolbar_logo.png',
                  //             height: 35,
                  //             // height: 20.0,
                  //             // width: 55.0,
                  //           ),
                  //         ),
                  //       ],
                  //     ),
                  //   ),
                  // ),
                  Material(
                    elevation: 1.0,
                    child: Container(
                      height: 1.0,
                      color: Colors.white,
                    ),
                  ),
                  Expanded(
                    child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Flexible(
                                    child: Container(
                                      color: Colors.white,
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        children: [
                                          GestureDetector(
                                            onTap: () {

                                            },
                                            child: Container(
                                              color: allSelected == true
                                                  ? Colors.white
                                                  : Colors.transparent,
                                              child: Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        vertical: 8.0),
                                                child: Row(
                                                  children: [
                                                    Flexible(
                                                      flex: 1,
                                                      child: Center(
                                                        child: Column(
                                                          children: [
                                                            Text(
                                                              'All',
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: TextStyles.black12PtTextStyle
                                                            )
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                        width: 4,
                                                        height: 50,
                                                        color: allSelected ==
                                                                true
                                                            ? AppColors.mainColor
                                                            : Colors
                                                                .transparent)
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ),

                                          for (int i = 0; i<8; i++)
                                            GestureDetector(
                                                onTap: () {
                                                  allSelected = false;
                                                  setState(() {});
                                                },
                                                child: CategoryItemView()),

                                        ],
                                      ),
                                    ),
                                    flex: 1,
                                  ),
                                  Flexible(
                                    child: Container(
                                      color: Colors.grey[200],
                                      margin: EdgeInsets.fromLTRB(8, 10, 8, 0),
                                      child: ListView(
                                        padding: EdgeInsets.zero,
                                        shrinkWrap: true,
                                        children: [
                                          Container(
                                            color: Colors.white,
                                            child: Row(
                                              children: [
                                                Padding(
                                                  padding:
                                                      const EdgeInsets.only(
                                                          left: 8.0, top: 5.0),
                                                  child: Text(
                                                    "Subcategories",
                                                    style: TextStyles.black16PtHeavyWeightTextStyle
                                                  ),
                                                ),
                                                Spacer(),
                                              ],
                                            ),
                                          ),

                                          Container(
                                            height: 7.0,
                                            color: Colors.white,
                                          ),

                                          SizedBox(
                                            height: 8.0,
                                          ),

                                          Padding(
                                            padding: const EdgeInsets.only(left: 8.0),
                                            child: ExpandablePanel(
                                              header: Container(
                                                height: 40.0,
                                                width: MediaQuery.of(context).size.width,
                                                color: AppColors.mainColor,
                                                child: Padding(
                                                  padding: const EdgeInsets.only(top: 10.0, left: 10.0),
                                                  child: Text(
                                                      'Headphones',
                                                    style: TextStyles.white14PtHeavyWeightTextStyle
                                                  ),
                                                ),
                                              ),
                                              builder: (_, collapsed, expanded) {
                                                return Padding(
                                                  padding: EdgeInsets.only(bottom: 10),
                                                  child: Expandable(
                                                    collapsed: collapsed,
                                                    expanded: expanded,
                                                    theme: const ExpandableThemeData(
                                                        crossFadePoint: 0,
                                                        hasIcon: false
                                                    ),
                                                  ),
                                                );
                                              },
                                              collapsed: Container(),
                                              expanded: Container(
                                              margin:
                                                  EdgeInsets.fromLTRB(0, 8, 0, 0),
                                              child: GridView.count(
                                                  physics:
                                                      NeverScrollableScrollPhysics(),
                                                  padding: EdgeInsets.zero,
                                                  crossAxisCount: 3,
                                                  childAspectRatio: 0.75,
                                                  shrinkWrap: true,
                                                  children: [
                                                    for (int i=0; i<8; i++)
                                                      GestureDetector(
                                                        onTap: () {

                                                        },
                                                        child: Card(
                                                          elevation: 0,
                                                          // shape:
                                                          //     RoundedRectangleBorder(
                                                          //   borderRadius:
                                                          //       BorderRadius
                                                          //           .circular(3),
                                                          // ),
                                                          color: Colors.white,
                                                          child: Column(
                                                            children: [
                                                              SizedBox(
                                                                height: 3.0,
                                                              ),
                                                              Container(
                                                                width: MediaQuery.of(
                                                                            context)
                                                                        .size
                                                                        .width /
                                                                    2,
                                                                height: 60,
                                                                decoration:
                                                                    BoxDecoration(
                                                                        color: Colors
                                                                            .white,
                                                                        borderRadius:
                                                                            BorderRadius
                                                                                .only(
                                                                          topLeft:
                                                                              Radius.circular(5),
                                                                          topRight:
                                                                              Radius.circular(5),
                                                                          bottomLeft:
                                                                              Radius.circular(5),
                                                                          bottomRight:
                                                                              Radius.circular(5),
                                                                        )),
                                                                child: Center(
                                                                  child:
                                                                      ClipRRect(
                                                                    child: CachedNetworkImage(
                                                                        imageUrl: ("https://media.wired.co.uk/photos/615dae0f8c9ac31fb9792d3b/4:3/w_2664,h_1998,c_limit/05102021_G_02.jpg"),
                                                                        fit: BoxFit.cover,
                                                                        // height: 150.0,
                                                                        // width: MediaQuery.of(context).size.width,
                                                                        placeholder: (context, url) => Image.asset(
                                                                              "assets/images/loading_image.jpg",
                                                                              fit:
                                                                                  BoxFit.cover,
                                                                            ),
                                                                        imageBuilder: (context, imageProvider) => Container(
                                                                              decoration:
                                                                                  BoxDecoration(
                                                                                image: DecorationImage(
                                                                                  image: imageProvider,
                                                                                  fit: BoxFit.cover,
                                                                                ),
                                                                              ),
                                                                            ),
                                                                        errorWidget: (context, string, dynamic) {
                                                                          return Image
                                                                              .asset(
                                                                            "assets/images/loading_image.jpg",
                                                                            fit: BoxFit
                                                                                .cover,
                                                                          );
                                                                        }),

                                                                    //     OptimizedCacheImage(
                                                                    //   imageUrl: ("https://testapi.storak.qa/storage/subcategories/image/lg/${subCategory.image}"),
                                                                    //   fit: BoxFit
                                                                    //       .cover,
                                                                    //   placeholder:
                                                                    //       (context,
                                                                    //           string) {
                                                                    //     return Image
                                                                    //         .asset(
                                                                    //       "assets/images/place_holder_image.jpg",
                                                                    //       fit: BoxFit
                                                                    //           .cover,
                                                                    //     );
                                                                    //   },
                                                                    //   errorWidget:
                                                                    //       (context,
                                                                    //           string,
                                                                    //           dynamic) {
                                                                    //     return Image
                                                                    //         .asset(
                                                                    //       "assets/images/place_holder_image.jpg",
                                                                    //       fit: BoxFit
                                                                    //           .cover,
                                                                    //     );
                                                                    //   },
                                                                    // ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Expanded(
                                                                child: Center(
                                                                  child: Text(
                                                                      'Headphone',
                                                                      textAlign:
                                                                          TextAlign
                                                                              .center,
                                                                      maxLines: 2,
                                                                      style: TextStyle(
                                                                          fontWeight:
                                                                              FontWeight
                                                                                  .w500,
                                                                          color: Colors
                                                                              .black,
                                                                          fontSize:
                                                                              11)),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      )
                                                  ]),
                                            ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                    flex: 3,
                                  )
                                ],
                              )
                  ),
                ],
              ),
            ),
          ),
        ),
    );
  }
}
