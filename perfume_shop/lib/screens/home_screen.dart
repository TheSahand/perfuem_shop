import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:perfume_shop/screens/detail_product_screen.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final List<String> categoryListItems = [
      'همه',
      'زنانه',
      'مردانه',
      'کودک',
    ];
    int selectedCategoryListItems = 0;
    CarouselController controller = CarouselController();
    return Scaffold(
      backgroundColor: MyColors.backgroundColor,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverPadding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverToBoxAdapter(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    SizedBox(height: 3.h),
                    Directionality(
                      textDirection: TextDirection.rtl,
                      child: TextField(
                        decoration: InputDecoration(
                            hintText: 'جستجو کنید...',
                            contentPadding: const EdgeInsets.all(15),
                            hintStyle: const TextStyle(fontSize: 14),
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                'images/search_icon.svg',
                              ),
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(12)),
                            filled: true,
                            fillColor: MyColors.textFieldColor),
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Image(image: AssetImage('images/banner.png')),
                    SizedBox(height: 3.h),
                    const Text(
                      'دسته بندی',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 3.h),
                    SizedBox(
                      height: 3.8.h,
                      child: Directionality(
                        textDirection: TextDirection.rtl,
                        child: ListView.builder(
                          itemCount: categoryListItems.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(left: 38),
                              child: GestureDetector(
                                onTap: () {
                                  setState(() {
                                    selectedCategoryListItems = index;
                                  });
                                },
                                child: Column(
                                  children: [
                                    Text(
                                      categoryListItems[index],
                                      style: TextStyle(
                                          color:
                                              selectedCategoryListItems == index
                                                  ? MyColors.orangeColor
                                                  : Colors.black),
                                    ),
                                    Opacity(
                                      opacity:
                                          selectedCategoryListItems == index
                                              ? 1.0
                                              : 0.0,
                                      child: Container(
                                        height: 2.w,
                                        width: 2.w,
                                        decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: MyColors.orangeColor),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                  height: 45.h,
                  child: CarouselSlider(
                    carouselController: controller,
                    options: CarouselOptions(
                      height: 45.h,
                      viewportFraction: 0.55,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: true,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      enlargeCenterPage: true,
                      enlargeFactor: 0.17,
                      scrollDirection: Axis.horizontal,
                    ),
                    items: [1, 2, 3, 4, 5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => DetailProductScreen(),
                                  ));
                            },
                            child: Container(
                              margin: EdgeInsets.only(
                                  left: 2, right: 2, bottom: 24),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: Colors.white,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.all(18),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 10, vertical: 20),
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(8),
                                        color: MyColors.itemBackgroundColor),
                                    child: Image(
                                        height: 40.w,
                                        width: 40.w,
                                        image:
                                            AssetImage('images/perfume.png')),
                                  ),
                                  Text('Chanel Chance Eau Tendre'),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        'تومان',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(width: 1.w),
                                      Text(
                                        '1،200،000',
                                        style: TextStyle(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }).toList(),
                  )),
            ),
            SliverToBoxAdapter(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      'محصولات پیشنهادی',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 12.h,
                child: Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListView.builder(
                    padding: EdgeInsets.only(right: 16),
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Container(
                        margin: EdgeInsets.only(left: 8),
                        height: 12.h,
                        width: 75.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12)),
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Row(
                              children: [
                                Container(
                                  height: 20.w,
                                  width: 20.w,
                                  padding: EdgeInsets.all(8),
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      color: MyColors.itemBackgroundColor),
                                  child: Image(
                                      image: AssetImage('images/perfume.png')),
                                ),
                                SizedBox(
                                  width: 2.w,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('COCO Mademoiselle'),
                                    Text(
                                      '2،000،000',
                                      style: TextStyle(
                                        fontSize: 15,
                                        decoration: TextDecoration.lineThrough,
                                        decorationColor: MyColors.orangeColor,
                                      ),
                                    ),
                                    Text(
                                      '1،500،000 تومان',
                                      style: TextStyle(
                                          fontSize: 15,
                                          fontWeight: FontWeight.bold),
                                    )
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 3.h,
                              width: 15.w,
                              decoration: BoxDecoration(
                                  color: MyColors.orangeColor,
                                  borderRadius: BorderRadius.only(
                                      bottomLeft: Radius.circular(
                                        12,
                                      ),
                                      topRight: Radius.circular(20))),
                              child: Center(
                                child: Text(
                                  '30%-',
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ),
            ),
            SliverPadding(padding: EdgeInsets.only(top: 16))
          ],
        ),
      ),
    );
  }
}
