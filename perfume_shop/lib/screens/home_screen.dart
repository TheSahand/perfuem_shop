import 'package:flutter/material.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:perfume_shop/screens/detail_product_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double showMenCircle = 0.0;
  double showWomenCircle = 1.0;
  double showNewsestProduct = 0.0;
  double showPopularProduct = 1.0;
  int firstItem = 0;
  PageController controller = PageController(viewportFraction: 0.75);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: MyColors.backgroundColor,
      appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Padding(
            padding: EdgeInsets.all(4.w),
            child: Image(image: AssetImage('images/menu.png')),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showMenCircle = 1.0;
                      showWomenCircle = 0.0;
                    });
                  },
                  child: Stack(alignment: Alignment.center, children: [
                    Text('Men'),
                    Opacity(
                        opacity: showMenCircle,
                        child: Image(
                            width: 40.w,
                            image: AssetImage('images/circle.png')))
                  ]),
                ),
                SizedBox(
                  width: 5.w,
                ),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      showMenCircle = 0.0;
                      showWomenCircle = 1.0;
                    });
                  },
                  child: Stack(alignment: Alignment.center, children: [
                    Text('Women'),
                    Opacity(
                        opacity: showWomenCircle,
                        child: Image(
                            width: 40.w,
                            image: AssetImage('images/circle.png')))
                  ]),
                ),
              ],
            ),
            SizedBox(
              height: 2.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.w),
              child: SizedBox(
                height: 6.h,
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.all(8),
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Image(
                            height: 5.w,
                            width: 5.w,
                            image: AssetImage('images/search.png')),
                      ),
                      border: InputBorder.none,
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColors.borderColor),
                          borderRadius: BorderRadius.circular(8)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: MyColors.borderColor),
                          borderRadius: BorderRadius.circular(8))),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 4.w),
              child: Row(
                children: [
                  Expanded(
                      flex: 2,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showPopularProduct = 1.0;
                                showNewsestProduct = 0.0;
                              });
                            },
                            child: Row(
                              children: [
                                RotatedBox(
                                  quarterTurns: -1,
                                  child: Text('Popular products'),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Opacity(
                                  opacity: showPopularProduct,
                                  child: Container(
                                    width: 3.w,
                                    height: 3.w,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.amber,
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 4.h,
                          ),
                          GestureDetector(
                            onTap: () {
                              setState(() {
                                showPopularProduct = 0.0;
                                showNewsestProduct = 1.0;
                              });
                            },
                            child: Row(
                              children: [
                                RotatedBox(
                                  quarterTurns: -1,
                                  child: Text('Newest products'),
                                ),
                                SizedBox(
                                  width: 4.w,
                                ),
                                Opacity(
                                  opacity: showNewsestProduct,
                                  child: Container(
                                      width: 3.w,
                                      height: 3.w,
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.amber,
                                      )),
                                )
                              ],
                            ),
                          )
                        ],
                      )),
                  Expanded(
                    flex: 8,
                    child: Container(
                      height: 40.h,
                      child: PageView.builder(
                        onPageChanged: (int index) {
                          setState(() {
                            firstItem = index;
                          });
                        },
                        controller: controller,
                        physics: const BouncingScrollPhysics(),
                        padEnds: false,
                        itemBuilder: (context, index) {
                          if (index == firstItem) {
                            return GestureDetector(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) =>
                                          DetailProductScreen(),
                                    ));
                              },
                              child: Container(
                                margin: EdgeInsets.symmetric(
                                    vertical: 20, horizontal: 15),
                                decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(12),
                                    boxShadow: [
                                      BoxShadow(
                                          color: MyColors.shadowColor,
                                          blurRadius: 20,
                                          offset: Offset(0, 16)),
                                    ]),
                                child: Column(
                                  children: [
                                    Padding(
                                      padding: EdgeInsets.all(4.w),
                                      child: Container(
                                        height: 25.h,
                                        width: double.infinity,
                                        decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(8),
                                            color: MyColors.golbehiColor),
                                        child: Padding(
                                          padding: EdgeInsets.all(5.w),
                                          child: Image(
                                              image: AssetImage(
                                                  'images/perfume.png')),
                                        ),
                                      ),
                                    ),
                                    Text('Chanel Chance Eau Tendre'),
                                    Text('\$199.9'),
                                  ],
                                ),
                              ),
                            );
                          } else {
                            return Padding(
                                padding: EdgeInsets.symmetric(
                                  vertical: 5.h,
                                ),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(12)),
                                  child: Column(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(4.w),
                                        child: Container(
                                          height: 21.h,
                                          width: double.infinity,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                              color: MyColors.golbehiColor),
                                          child: Padding(
                                            padding: const EdgeInsets.all(15),
                                            child: Image(
                                                image: AssetImage(
                                                    'images/perfume.png')),
                                          ),
                                        ),
                                      ),
                                      Text('Chanel Chance Eau Tendre'),
                                      Text('\$199.9'),
                                    ],
                                  ),
                                ));
                          }
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 5.h),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text('Suggested'),
                ],
              ),
            ),
            SizedBox(
              height: 17.h,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Container(
                        margin:
                            EdgeInsets.only(left: 16, top: 3.h, bottom: 3.h),
                        height: 15.h,
                        width: 70.w,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 30,
                                  offset: Offset(0, 16),
                                  color: MyColors.shadowColor)
                            ],
                            borderRadius: BorderRadius.circular(15)),
                        child:
                            Stack(alignment: Alignment.bottomRight, children: [
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.all(5),
                                width: 80,
                                decoration: BoxDecoration(
                                    color: MyColors.keremColor,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.all(5),
                                  child: Image(
                                      image: AssetImage('images/perfume2.png')),
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('COCO Mademoiselle'),
                                  Text(
                                    '\$256',
                                    style: TextStyle(
                                        decoration: TextDecoration.lineThrough),
                                  ),
                                  Text(
                                    '\$166.4',
                                    style: TextStyle(color: Colors.green),
                                  ),
                                ],
                              )
                            ],
                          ),
                          Container(
                            width: 52,
                            height: 25,
                            decoration: BoxDecoration(
                                color: MyColors.orangeColor,
                                borderRadius: BorderRadius.only(
                                    bottomRight: Radius.circular(15),
                                    topLeft: Radius.circular(20))),
                            child: Center(
                                child: Text(
                              '%-30',
                              style: TextStyle(color: Colors.white),
                            )),
                          )
                        ]),
                      ),
                    ],
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
