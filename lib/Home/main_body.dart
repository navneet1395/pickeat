import 'package:flutter/material.dart';
import 'package:pickeat/Widget/icon_text.dart';
import 'package:pickeat/utils/big_text.dart';
import 'package:pickeat/utils/colors.dart';
import 'package:pickeat/utils/small_text.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  State<HomeBody> createState() => _HomeBodyState();
}

PageController pageController = PageController(viewportFraction: 0.85);
var _currentPageValue = 0.0;
double _scaleFactor = 0.8;

@override
void initState() {
  super.initState();
  pageController.addListener(() {
    setState(() {
      _currentPageValue = pageController.page!;
    });
  });
}

@override //when we leave the page we dont need the old memoryt so we are telling our memory managment to dispose the old value.
void dispose() {
  pageController.dispose();
}

class _HomeBodyState extends State<HomeBody> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      child: PageView.builder(
          controller: pageController, //this is very good
          itemCount: 5,
          itemBuilder: (context, index) {
            return _buildPageItem(index);
          }),
    );
  }
}

Widget _buildPageItem(int index) {
  //for scalling we use matrix4
  Matrix4 matrix = new Matrix4.identity();

  if (index == _currentPageValue.floor()) {
    var currScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
  }

  return Stack(
    children: [
      Container(
        height: 220,
        margin: EdgeInsets.only(left: 5, right: 5, top: 5),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage("assets/food1.jpg"),
            )),
      ),
      Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          height: 140,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 15),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.white,
          ),
          child: Container(
            padding: EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.start,
              children: [
                BigText(text: "Title of Image"),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Wrap(
                      children: List.generate(
                        5,
                        (index) => Icon(
                          Icons.star,
                          color: AppColor.primaryColor,
                          size: 15,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(
                      text: "4.5", //Rating Number
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "12354"), //comments count
                    SizedBox(
                      width: 10,
                    ),
                    SmallText(text: "Comments")
                  ],
                ),
                SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(
                        text: "Normal",
                        icon: Icons.circle_sharp,
                        iconColor: Colors.amber),
                    IconText(
                        text: "1.2m",
                        icon: Icons.location_on,
                        iconColor: Colors.green),
                    IconText(
                        text: "32min",
                        icon: Icons.watch_later_outlined,
                        iconColor: Colors.red)
                  ],
                )
              ],
            ),
          ),
        ),
      )
    ],
  );
}
