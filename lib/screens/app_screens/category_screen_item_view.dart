import 'package:flutter/material.dart';
import 'package:yopals/constants.dart';

class CategoryItemView extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _CategoryItemViewState();
  }
}

class _CategoryItemViewState extends State<CategoryItemView> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFFFFFFFF),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: Center(
                child: Column(
                  children: [
                    Image(
                        image: NetworkImage("https://media.wired.co.uk/photos/615dae0f8c9ac31fb9792d3b/4:3/w_2664,h_1998,c_limit/05102021_G_02.jpg"),
                        height: 24,
                        width: 24),
                    Text(
                      'Headphones',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              width: 4,
              height: 50,
              color:
              AppColors.mainColor,
            )
          ],
        ),
      ),
    );
  }
}
