import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:perfume_shop/constants/colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class DetailProductScreen extends StatefulWidget {
  const DetailProductScreen({super.key});

  @override
  State<DetailProductScreen> createState() => _DetailProductScreenState();
}

class _DetailProductScreenState extends State<DetailProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColors.singleItemBackgroundColor,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 12),
          child: GestureDetector(
              onTap: () {
                Navigator.pop(context);
              },
              child: SvgPicture.asset('images/back_icon.svg')),
        ),
        actions: [
          Padding(
              padding: EdgeInsets.only(right: 16),
              child: SvgPicture.asset('images/favorite.svg'))
        ],
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.bottomLeft,
                children: [
                  SvgPicture.asset(
                    'images/back_of_background.svg',
                    fit: BoxFit.fitWidth,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Image(image: AssetImage('images/perfume.png')),
                  ),
                  Positioned(
                    right: 16,
                    bottom: 30,
                    child: Container(
                      width: 22.w,
                      height: 5.5.h,
                      decoration: BoxDecoration(
                          color: MyColors.ccColor,
                          borderRadius: BorderRadius.circular(15)),
                      child: Center(
                        child: Text(
                          '250 ml',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  )
                ],
              )),
          Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Container(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        'Chanel Chance Eau Tendre',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'لورم ایپسوم متن ساختگی با تولید سادگی نامفهوم از صنعت چاپ، و با استفاده از طراحان گرافیک است، چاپگرها و متون بلکه روزنامه و مجله در ستون و سطرآنچنان که لازم است، و برای شرایط فعلی تکنولوژی مورد نیاز، و کاربردهای متنوع با هدف بهبود ابزارهای کاربردی می باشد',
                        maxLines: 5,
                        textAlign: TextAlign.justify,
                        textDirection: TextDirection.rtl,
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      TextButton(
                          style: TextButton.styleFrom(padding: EdgeInsets.zero),
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
                                          Text('Chanel Chance Eau Tendre'),
                                        ],
                                      ),
                                      Divider(
                                        color: MyColors.dividerColor,
                                      )
                                    ]),
                                  ),
                                );
                              },
                            );
                          },
                          child: Text(
                            'توضیحات بیشتر',
                            style: TextStyle(color: MyColors.orangeColor),
                          )),
                      Row(
                        children: [
                          Text(
                            '1،500،000 تومان',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColors.orangeColor),
                              child: SvgPicture.asset('images/minus_icon.svg'),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Text(
                              '1',
                              style: TextStyle(fontSize: 23),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {},
                            child: Container(
                              padding: EdgeInsets.all(7),
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: MyColors.orangeColor),
                              child: SvgPicture.asset('images/plus_icon.svg'),
                            ),
                          )
                        ],
                      ),
                      SizedBox(height: 2.h),
                      Container(
                        height: 8.h,
                        decoration: BoxDecoration(
                            color: MyColors.orangeColor,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                'افزودن به سبد خرید',
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white),
                              ),
                              SizedBox(width: 1.w),
                              SvgPicture.asset(
                                'images/cart.svg',
                                color: Colors.white,
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
    );
  }
}
