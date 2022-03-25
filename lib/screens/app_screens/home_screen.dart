import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:yopals/constants.dart';
import 'package:yopals/screens/app_screens/RecentActivityCard.dart';
import 'package:yopals/screens/app_screens/business_card.dart';
import 'package:yopals/screens/app_screens/recent_blog_card.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  TextEditingController searchBarController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
          children: [

            Stack(
              overflow: Overflow.visible,
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 4,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/images/cover.jpg'
                      ),
                      fit: BoxFit.cover
                    )
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 30.0, top: 25.0),
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      'We know just the \nplace',
                      style: TextStyles.whiteBigHeadingTextStyle,
                    ),
                  ),
                ),

                Positioned(
                  bottom: -25.0,
                  right: 0.0,
                  left: 0.0,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Material(
                      elevation: 3.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                      child: Container(
                            height: 50.0,
                            width: MediaQuery.of(context).size.width,
                            child: TextFormField(
                                keyboardType: TextInputType.text,
                                controller: searchBarController,
                                decoration: InputDecoration(
                                  disabledBorder: InputBorder.none,
                                  enabledBorder: InputBorder.none,
                                  focusedBorder: InputBorder.none,
                                  isDense: true,
                                  filled: true,
                                  contentPadding:
                                  EdgeInsets.fromLTRB(8, 16, 8, 8),
                                  fillColor: Colors.white,
                                  hintStyle: TextStyles.hintNormalTextStyle,
                                  prefixIcon: SizedBox(
                                    width: 20.0,
                                    height: 20.0,
                                    child: Image.asset(
                                      'assets/images/search.png',
                                      color: Colors.grey.shade800,
                                    ),
                                  ),
                                  hintText: 'Search for burgers, delivery, barbers on ...',
                                ),
                              ),
                          ),
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(
              height: 40.0,
            ),

            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(
                                width: 40.0,
                                height: 40.0,
                                child: Image(
                                  image: AssetImage(
                                    'assets/images/ads.png',
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),

                          SizedBox(
                            height: 5.0,
                          ),

                          Text(
                            'Advertising Agencies',
                            textAlign: TextAlign.center,
                            style: TextStyles.darkGreyNormalTextStyle
                          )
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: Image(
                              image: AssetImage(
                                'assets/images/book.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(
                            height: 5.0,
                          ),

                          Text(
                              'Book Shops',
                              textAlign: TextAlign.center,
                              style: TextStyles.darkGreyNormalTextStyle
                          )
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: Image(
                              image: AssetImage(
                                'assets/images/coffee.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(
                            height: 5.0,
                          ),

                          Text(
                              'Coffee Shops',
                              textAlign: TextAlign.center,
                              style: TextStyles.darkGreyNormalTextStyle
                          )
                        ],
                      ),
                    ),
                  ),

                  InkWell(
                    onTap: () {},
                    child: Container(
                      width: MediaQuery.of(context).size.width / 4.5,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [

                          SizedBox(
                            width: 40.0,
                            height: 40.0,
                            child: Image(
                              image: AssetImage(
                                'assets/images/restaurant.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),

                          SizedBox(
                            height: 5.0,
                          ),

                          Text(
                              'Restaurants',
                              textAlign: TextAlign.center,
                              style: TextStyles.darkGreyNormalTextStyle
                          )
                        ],
                      ),
                    ),
                  ),

                ],
              ),

            SizedBox(
              height: 40.0,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [

                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: Image(
                            image: AssetImage(
                              'assets/images/consultant.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(
                          height: 5.0,
                        ),

                        Text(
                            'Immigration Consultants',
                            textAlign: TextAlign.center,
                            style: TextStyles.darkGreyNormalTextStyle
                        )
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: Image(
                            image: AssetImage(
                              'assets/images/coding.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(
                          height: 5.0,
                        ),

                        Text(
                            'Software Houses',
                            textAlign: TextAlign.center,
                            style: TextStyles.darkGreyNormalTextStyle
                        )
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: Image(
                            image: AssetImage(
                              'assets/images/mall.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(
                          height: 5.0,
                        ),

                        Text(
                            'Malls',
                            textAlign: TextAlign.center,
                            style: TextStyles.darkGreyNormalTextStyle
                        )
                      ],
                    ),
                  ),
                ),

                InkWell(
                  onTap: () {},
                  child: Container(
                    width: MediaQuery.of(context).size.width / 4.5,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [

                        SizedBox(
                          width: 40.0,
                          height: 40.0,
                          child: Image(
                            image: AssetImage(
                              'assets/images/more.png',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),

                        SizedBox(
                          height: 5.0,
                        ),

                        Text(
                            'More',
                            textAlign: TextAlign.center,
                            style: TextStyles.darkGreyNormalTextStyle
                        )
                      ],
                    ),
                  ),
                ),

              ],
            ),

            SizedBox(
              height: 20.0,
            ),

            Card(
              margin: EdgeInsets.zero,
              color: Colors.white,
              elevation: 0.0,
              child: Column(
                children: [

                  SizedBox(
                    height: 15.0,
                  ),

                  Text(
                    'Best Business in Lahore',
                    textAlign: TextAlign.center,
                    style: TextStyles.blackMediumHeadingTextStyle,
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      "Find the best business in Lahore on Pakistan's Best Business Review site",
                      textAlign: TextAlign.center,
                      style: TextStyles.darkGreyNormalTextStyle,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: CarouselSlider.builder(
                        itemCount: 5,
                        options: CarouselOptions(
                          height: 260.0,
                          initialPage: 0,
                          scrollDirection: Axis.horizontal,
                          viewportFraction: 0.50,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 4),
                          onPageChanged: (i, reason) {},
                        ),

                        itemBuilder:
                            (BuildContext context, int index, value) {
                          return BusinessCard();
                        }),
                  )

                ],
              ),
            ),

            Container(
              color: Colors.white,
              height: 20.0,
            ),

            Card(
              margin: EdgeInsets.zero,
              color: Colors.white,
              elevation: 0.0,
              child: Column(
                children: [

                  SizedBox(
                    height: 15.0,
                  ),

                  Text(
                    'Trending Business',
                    textAlign: TextAlign.center,
                    style: TextStyles.blackMediumHeadingTextStyle,
                  ),

                  SizedBox(
                    height: 10.0,
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: Text(
                      "Find Out The Most Visited Local Business in Lahore",
                      textAlign: TextAlign.center,
                      style: TextStyles.darkGreyNormalTextStyle,
                    ),
                  ),

                  Padding(
                    padding: const EdgeInsets.only(left: 20.0, right: 20.0),
                    child: CarouselSlider.builder(
                        itemCount: 5,
                        options: CarouselOptions(
                          height: 260.0,
                          initialPage: 0,
                          scrollDirection: Axis.horizontal,
                          viewportFraction: 0.50,
                          autoPlay: true,
                          autoPlayInterval: Duration(seconds: 4),
                          onPageChanged: (i, reason) {},
                        ),

                        itemBuilder:
                            (BuildContext context, int index, value) {
                          return BusinessCard();
                        }),
                  )

                ],
              ),
            ),

            SizedBox(
              height: 20.0,
            ),

            Text(
              'Recent Blogs',
              textAlign: TextAlign.center,
              style: TextStyles.blackMediumHeadingTextStyle,
            ),

            SizedBox(
              height: 10.0,
            ),

            Padding(
              padding: const EdgeInsets.only(left: 10.0, right: 10.0),
              child: StaggeredGrid.count(
                crossAxisCount: 2,
                mainAxisSpacing: 1,
                crossAxisSpacing: 1,
                children: List.generate(
                    10,
                        (index) => RecentBlogCard()),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            GestureDetector(
              onTap: (){},
              child: Center(
                child: Container(
                        width: 120.0,
                        height: 50.0,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(5.0)
                        ),
                        child: Center(
                          child: Text(
                            'SEE ALL',
                            style: TextStyles.white18PtMediumWeightTextStyle,
                          ),
                        )
                      ),
              ),
            ),

            SizedBox(
              height: 10.0,
            ),

            Container(
              height: 40.0,
              color: Colors.white,
              child: Align(
                alignment: Alignment.bottomCenter,
                child: Text(
                  'Recent Activity',
                  style: TextStyles.blackMediumHeadingTextStyle,
                ),
              ),
            ),

            Container(
              color: Colors.white,
              height: 10.0,
            ),

            ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                children: List.generate(
                  8,
                      (index) => Container(
                        color: Colors.white,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(15.0, 5.0, 15.0, 5.0),
                          child: RecentActivityCard(),
                        ),
                      ),
                )),

            Container(
              color: Colors.white,
              height: 5.0,
            ),

          ],
        ),
    );
  }
}
