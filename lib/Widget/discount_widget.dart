import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:testproject/constants/sizes.dart';

class DiscountWidget extends StatelessWidget {
  DiscountWidget({super.key, required this.discount});
  final String discount;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: const Color(0xffFAE8E8),
          borderRadius: BorderRadius.circular(16)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
           const SizedBox(
            height: 16,
          ),
          Container(
            width: 150,
            height: 60,
            child: Stack(
              alignment: Alignment.center,
              children: [
                // دایره آبی سمت چپ
                Positioned(
                  left: 69,
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 211, 211),
                      shape: BoxShape.circle,
                    ),
                    child:  Center(
                      child: Text('35%',
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontWeight: FontWeight.bold, color: Colors.pink)),
                    ),
                  ),
                ),
                // دایره قرمز سمت راست و کمی پایین‌تر
                Positioned(
                  left: 18, // فاصله از سمت چپ برای دایره قرمز
                  child: Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: SvgPicture.asset(
                      'assets/images/fire.svg',
                      width: SizeConst.md16,
                      height: SizeConst.md16,
                                        ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 16,
          ),
          Text("For Shopping", style: Theme.of(context).textTheme.bodySmall),
          const SizedBox(
            height: 16,
          ),
          // کادری که درون آن متن تخفیف و دکمه کپی قرار دارد
          Container(
            padding: const EdgeInsets.fromLTRB(12, 8, 0, 12),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(50)),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(discount, style: Theme.of(context).textTheme.bodySmall),
                ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff082C50),
                      padding: EdgeInsets.all(8),
                      shape: CircleBorder(),
                    ),
                
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: const Icon(
                        Icons.copy,
                        color: Colors.white,
                        size: 20,
                      ),
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
