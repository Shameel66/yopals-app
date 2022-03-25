import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:yopals/constants.dart';
import 'package:yopals/screens/app_screens/categories_screen.dart';
import 'package:yopals/screens/app_screens/home_screen.dart';


class LandingScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LandingScreenState();
  }
}

class _LandingScreenState extends State<LandingScreen> {

  int _currentIndex = 0;

  final List<Widget> _bodyChildren = [
    HomeScreen(),
    Categories(),
    Container(),
    Container(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(60.0),
        child: ClipRect(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: Container(
              color: Colors.white.withOpacity(0.8),
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [

                    SizedBox(
                      width: 120.0,
                      height: 60.0,
                      child: Image(
                        image: AssetImage(
                            'assets/images/logo.png'
                        ),
                      ),
                    ),

                    Container(
                      child: Text(
                          'Abdul Wahab',
                          style: TextStyles.redBigWeight18PtTextStyle
                      ),
                    ),

                    Container(
                      width: 90.0,
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: IconButton(
                          onPressed: (){},
                          icon: Icon(
                            Icons.notifications_rounded,
                          ),
                          color: AppColors.mainColor,
                          iconSize: 25.0,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            )
          ),
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: _bodyChildren[_currentIndex],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Colors.white,
        ),
        child: Container(
          decoration: BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ],
          ),
          child: BottomNavigationBar(
            selectedItemColor: AppColors.mainColor,
            unselectedItemColor: Colors.grey,
            elevation: 10.0,
            showUnselectedLabels: true,
            type: BottomNavigationBarType.fixed,
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                icon: Icon(
              Icons.home_outlined,
            color: Colors.grey,
            size: 24.0,
          ),
                activeIcon: Icon(
                  Icons.home_rounded,
                  color: AppColors.mainColor,
                  size: 24.0,
                ),
                 title: new Text(
                  'Home',
                   style: TextStyles.blackNormalTextStyle
                 ),
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.category_outlined,
                  color: Colors.grey,
                  size: 24.0,
                ),
                activeIcon: Icon(
                  Icons.category_rounded,
                  color: AppColors.mainColor,
                  size: 24.0,
                ),
                title: new Text(
                     'Categories',
                     style: TextStyles.blackNormalTextStyle
                 ),
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.feed_outlined,
                    size: 24.0,
                    color: Colors.grey,
                  ),
                  activeIcon: Icon(
                    Icons.feed_rounded,
                    size: 24.0,
                    color: AppColors.mainColor,
                  ),
                  title: Text(
                    'Social Feeds',
                     style: TextStyles.blackNormalTextStyle
                   )
                ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person_outline_rounded,
                  color: Colors.grey,
                  size: 24.0,
                ),
                activeIcon: Icon(
                  Icons.person_rounded,
                  color: AppColors.mainColor,
                  size: 24.0,
                ),
                title: new Text(
                   'Profile',
                    style: TextStyles.blackNormalTextStyle
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
