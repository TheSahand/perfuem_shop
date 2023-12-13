import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:perfume_shop/screens/cart_screen_information.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: true,
        title: Text(
          'سبد خرید',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: SafeArea(
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: CustomScrollView(
                slivers: [
                  Directionality(
                    textDirection: TextDirection.rtl,
                    child: SliverList.builder(
                      itemCount: 14,
                      itemBuilder: (context, index) {
                        return Container(
                          margin: EdgeInsets.only(left: 8),
                          height: 12.h,
                          width: 75.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12)),
                          child: Stack(
                            alignment: Alignment.centerLeft,
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
                                        image:
                                            AssetImage('images/perfume.png')),
                                  ),
                                  SizedBox(
                                    width: 2.w,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text('COCO Mademoiselle'),
                                      Text(
                                        '2،000،000',
                                        style: TextStyle(
                                          fontSize: 15,
                                          decoration:
                                              TextDecoration.lineThrough,
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
                              GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (context) => Dialog(
                                          shape: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(12)),
                                          child: SizedBox(
                                            height: 27.h,
                                            child: Column(
                                              children: [
                                                SizedBox(
                                                  height: 2.h,
                                                ),
                                                SvgPicture.asset(
                                                    'images/alert_icon.svg'),
                                                SizedBox(
                                                  height: 1.h,
                                                ),
                                                Text(
                                                  'آیا از حذف این آیتم اطمینان دارید؟',
                                                  style:
                                                      TextStyle(fontSize: 14),
                                                ),
                                                SizedBox(
                                                  height: 2.5.h,
                                                ),
                                                Row(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.center,
                                                  children: [
                                                    GestureDetector(
                                                      onTap: () {
                                                        Navigator.pop(context);
                                                      },
                                                      child: Container(
                                                        width: 25.w,
                                                        height: 5.h,
                                                        decoration: BoxDecoration(
                                                            border: Border.all(
                                                                color: MyColors
                                                                    .orangeColor),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Center(
                                                          child: Text(
                                                            'انصراف',
                                                            style: TextStyle(
                                                              color: MyColors
                                                                  .orangeColor,
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    ),
                                                    SizedBox(width: 2.5.w),
                                                    GestureDetector(
                                                      onTap: () {},
                                                      child: Container(
                                                        width: 25.w,
                                                        height: 5.h,
                                                        decoration: BoxDecoration(
                                                            color: MyColors
                                                                .orangeColor,
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        12)),
                                                        child: Center(
                                                          child: Text(
                                                            'حذف',
                                                            style: TextStyle(
                                                                color: Colors
                                                                    .white),
                                                          ),
                                                        ),
                                                      ),
                                                    )
                                                  ],
                                                )
                                              ],
                                            ),
                                          )),
                                    );
                                  },
                                  child:
                                      SvgPicture.asset('images/close_icon.svg'))
                            ],
                          ),
                        );
                      },
                    ),
                  ),
                  SliverPadding(
                      padding: EdgeInsets.only(
                    bottom: 10.h,
                  ))
                ],
              ),
            ),
            Positioned(
              bottom: 0,
              child: Container(
                height: 10.h,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CartScreenInformation(),
                              ));
                        },
                        child: Container(
                          width: 40.w,
                          height: 7.h,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              color: MyColors.orangeColor),
                          child: Center(
                            child: Text(
                              'ادامه',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                      Spacer(),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            'جمع مبلغ:',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(fontSize: 16),
                          ),
                          Text(
                            '25،000،000 تومان',
                            textDirection: TextDirection.rtl,
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: MyColors.orangeColor),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
