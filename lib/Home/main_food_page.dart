import 'package:flutter/material.dart';
import 'package:pickeat/Home/main_body.dart';
import 'package:pickeat/utils/big_text.dart';
import 'package:pickeat/utils/colors.dart';
import 'package:pickeat/utils/small_text.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(top: 45, bottom: 15), //ouside Space
            padding: EdgeInsets.only(left: 15, right: 15), //inside Space
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    BigText(
                      text: "Country",
                      color: AppColor.primaryColor,
                    ),
                    Row(
                      children: [
                        SmallText(
                          text: "city list",
                          color: Colors.black54,
                        ),
                        Icon(Icons.arrow_drop_down_rounded)
                      ],
                    )
                  ],
                ),
                Container(
                  height: 45,
                  width: 45,
                  child: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: AppColor.primaryColor,
                  ),
                )
              ],
            ),
          ),
          
          const HomeBody(),
        ],
      ),
    );
  }
}
