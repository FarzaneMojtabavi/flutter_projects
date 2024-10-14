import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testproject/constants/colors.dart';
import 'package:testproject/constants/sizes.dart';

class CardCoinWidget extends StatelessWidget {
  const CardCoinWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      width: double.infinity,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 227, 238, 219),
          borderRadius: BorderRadius.circular(SizeConst.md16)),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/images/Ethereum.svg',
                width: 79,
                height: 70,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.info_outline,
                    color: Color(0xff082C50),
                  ),
                  const SizedBox(width: SizeConst.sm8),
                  Text('How to increase',
                      style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
            ],
          ),
          const SizedBox(height: SizeConst.lg24),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('243',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: SizeConst.xl32,
                          )),
                  Text('Coin balance',
                      style: Theme.of(context).textTheme.bodyMedium)
                ],
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    padding: const EdgeInsets.symmetric(
                        horizontal: SizeConst.xxl42, vertical: SizeConst.md20),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                    backgroundColor:  ColorConst.darkBlue,
                  ),
                  child: const Text(
                    "History",
                    style: TextStyle(color: ColorConst.white),
                  ))
            ],
          )
        ],
      ),
    );
  }
}