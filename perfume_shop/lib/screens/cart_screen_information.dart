import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:perfume_shop/screens/order_status_success.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CartScreenInformation extends StatefulWidget {
  const CartScreenInformation({super.key});

  @override
  State<CartScreenInformation> createState() => _CartScreenInformationState();
}

class _CartScreenInformationState extends State<CartScreenInformation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 16),
            child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: SvgPicture.asset('images/back_icon.svg')),
          )
        ],
        title: Text(
          'اطلاعات شخصی',
          style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SizedBox(
                        height: 2.5.h,
                        width: double.infinity,
                      ),
                      Text(
                        'اطلاعات خود را وارد کنید',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 3.h),
                      Text(
                        'نام و نام خانوادگی',
                      ),
                      SizedBox(height: 1.h),
                      Directionality(
                        textDirection: TextDirection.rtl,
                        child: TextField(
                          keyboardType: TextInputType.name,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(15),
                              hintStyle: const TextStyle(fontSize: 14),
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
                      SizedBox(
                        height: 2.h,
                      ),
                      Text(
                        'شماره موبایل',
                      ),
                      SizedBox(height: 1.h),
                      Directionality(
                        textDirection: TextDirection.ltr,
                        child: TextField(
                          keyboardType: TextInputType.number,
                          decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(15),
                              hintStyle: const TextStyle(fontSize: 14),
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
                      SizedBox(
                        height: 2.h,
                      ),
                      Row(
                        children: [
                          TextButton(
                            style:
                                TextButton.styleFrom(padding: EdgeInsets.zero),
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return Dialog(
                                    backgroundColor: Colors.white,
                                    insetPadding: EdgeInsets.all(20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20))),
                                    child: Padding(
                                      padding: EdgeInsets.all(16),
                                      child: Column(children: [
                                        Row(
                                          children: [
                                            GestureDetector(
                                              onTap: () {
                                                Navigator.pop(context);
                                              },
                                              child: SvgPicture.asset(
                                                  'images/close_icon.svg'),
                                            ),
                                            Spacer(),
                                            Text('انتخاب آدرس'),
                                          ],
                                        ),
                                        Divider(
                                          color: MyColors.dividerColor,
                                        ),
                                        Expanded(child: ListView.builder(
                                          itemBuilder: (context, index) {
                                            return Container(
                                              padding: EdgeInsets.all(10),
                                              margin:
                                                  EdgeInsets.only(bottom: 16),
                                              decoration: BoxDecoration(
                                                  color:
                                                      MyColors.textFieldColor,
                                                  borderRadius:
                                                      BorderRadius.circular(8)),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        'شرکت',
                                                        style: TextStyle(
                                                            fontSize: 15,
                                                            fontWeight:
                                                                FontWeight
                                                                    .bold),
                                                      ),
                                                      SizedBox(width: 1.w),
                                                      SvgPicture.asset(
                                                          'images/selected_icon.svg')
                                                    ],
                                                  ),
                                                  SizedBox(height: 2.h),
                                                  Text(
                                                    'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و ',
                                                    style:
                                                        TextStyle(fontSize: 13),
                                                    textDirection:
                                                        TextDirection.rtl,
                                                    textAlign:
                                                        TextAlign.justify,
                                                  ),
                                                  SizedBox(height: 2.h),
                                                  Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.end,
                                                    children: [
                                                      Text(
                                                        '6931394631',
                                                        style: TextStyle(
                                                            fontSize: 12),
                                                      ),
                                                      SizedBox(width: 1.w),
                                                      Text(
                                                        'کد پستی:',
                                                        style: TextStyle(
                                                            fontSize: 13),
                                                        textDirection:
                                                            TextDirection.rtl,
                                                      ),
                                                      SizedBox(width: 1.w),
                                                      SvgPicture.asset(
                                                          'images/zip_code_icon.svg')
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            );
                                          },
                                        ))
                                      ]),
                                    ),
                                  );
                                },
                              );
                            },
                            child: Text(
                              'انتخاب آدرس',
                              style: TextStyle(color: MyColors.orangeColor),
                            ),
                          ),
                          Spacer(),
                          Text(
                            'آدرس',
                          ),
                        ],
                      ),
                      Container(
                        height: 15.h,
                        decoration: BoxDecoration(
                            color: MyColors.textFieldColor,
                            borderRadius: BorderRadius.circular(12)),
                        child: Directionality(
                          textDirection: TextDirection.rtl,
                          child: TextField(
                            maxLines: null,
                            keyboardType: TextInputType.streetAddress,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(15),
                              hintStyle: const TextStyle(fontSize: 14),
                              enabledBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12)),
                              focusedBorder: OutlineInputBorder(
                                  borderSide: BorderSide.none,
                                  borderRadius: BorderRadius.circular(12)),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 2.h,
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
          Container(
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
                            builder: (context) => OrderStatusSuccessScreen(),
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
                          'پرداخت',
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
        ],
      ),
    );
  }
}
