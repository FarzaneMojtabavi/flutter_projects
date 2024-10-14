import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testproject/Widget/card_coin_widget.dart';
import 'package:testproject/Widget/card_suggested/suggested_widget.dart';
import 'package:testproject/Widget/discount_widget.dart';
import 'package:testproject/constants/colors.dart';
import 'package:testproject/constants/sizes.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: ColorConst.white,
        appBar: AppBar(
          centerTitle: true,
          leading:
              IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back)),
          backgroundColor: ColorConst.white,
          actions: const [
            IconButton(
              onPressed: null,
              icon: Icon(
                Icons.help,
                color: Colors.transparent,
              ),
            )
          ],
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/medal.svg',
                width: SizeConst.lg24,
                height: SizeConst.lg24,
              ),
              Text('Awards', style: Theme.of(context).textTheme.bodyMedium)
            ],
          ),
        ),
        body: ListView(
          padding:  const EdgeInsets.all(SizeConst.lg24),
          children: [
            const CardCoinWidget(),
            const SizedBox(
              height: SizeConst.lg24,
            ),
            Text('My recent discount',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(fontSize: SizeConst.lg24)),
             const SizedBox(
              height: SizeConst.xs4,
            ),
            Text('2 actives',
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color:ColorConst.grayLight
                    )),
            const SizedBox(
              height: SizeConst.sm8,
            ),
            SizedBox(
              height: 215,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  DiscountWidget(
                    discount: 'abc40fjsp',
                  ),
                  const SizedBox(
                    width: SizeConst.sm8,
                  ),
                  DiscountWidget(
                    discount: 'abc40fjsp',
                  ),
                  const SizedBox(
                    width: SizeConst.sm8,
                  ),
                  DiscountWidget(
                    discount: 'abc40fjsp',
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: SizeConst.lg24,
            ),
            Text('Suggested awards',
                style: Theme.of(context)
                    .textTheme
                    .bodyMedium
                    ?.copyWith(fontSize: SizeConst.lg24)),
            const SizedBox(
              height: SizeConst.sm8,
            ),
            SizedBox(
              height: 360,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: const [
                  SuggestedAwardsWidget(),
                  SizedBox(
                    width: SizeConst.sm8,
                  ),
                  SuggestedAwardsWidget(),
                  SizedBox(
                    width: SizeConst.sm8,
                  ),
                  SuggestedAwardsWidget(),
                ],
              ),
            ),
          ],
        ));
  }
}