import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:testproject/Widget/card_suggested/section_rounded_container.dart';
import 'package:testproject/Widget/card_suggested/section_rounded_image.dart';
import 'package:testproject/constants/colors.dart';
import 'package:testproject/constants/images.dart';
import 'package:testproject/constants/sizes.dart';
import 'package:testproject/Widget/card_suggested/section_dotted_line.dart';


class SuggestedAwardsWidget extends StatelessWidget {
  const SuggestedAwardsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SuggestedCardWidget(),
        Container(
          width: MediaQuery.of(context).size.width * (2 / 3),
          color: ColorConst.backgroundCardBlueLight,
          padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
          child: Column(
            children: [
              Text('discount for joining the Diet Challenge.',
                  textAlign: TextAlign.left,
                  style: Theme.of(context)
                      .textTheme
                      .bodyMedium
                      ?.copyWith(fontSize: 16, fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/timer.svg',
                    width: SizeConst.md20,
                    height: SizeConst.md20,
                  ),
                  const SizedBox(width: 8),
                  Text('6 days left',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color: ColorConst.grayLight))
                ],
              ),
            ],
          ),
        ),
        Stack(
          alignment: Alignment.center, 
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 0.0),
              child: Container(
                width: MediaQuery.of(context).size.width * (2 / 3),
                height: SizeConst.xxl40,
                color: ColorConst.backgroundCardBlueLight,
              ),
            ),

      
            Positioned(
              left: -10,
              child: Container(
                width: SizeConst.lg25,
                height: SizeConst.lg25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: ColorConst.white, width: 15)),
              ),
            ),

          
            Positioned(
              right: -10,
              child: Container(
                width: SizeConst.lg25,
                height: SizeConst.lg25,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 15)),
              ),
            ),

        
            Positioned(
              top: SizeConst.md20, 
              child: Center(
                child: CustomPaint(
                  size: Size(MediaQuery.of(context).size.width * (4 / 7),
                      1), 
                  painter: DottedLinePainter(),
                ),
              ),
            ),
          ],
        ),
        Container(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
          decoration: const BoxDecoration(
              color: ColorConst.backgroundCardBlueLight,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(SizeConst.md16),
                  bottomRight: Radius.circular(SizeConst.md16))),
          width: MediaQuery.of(context).size.width * (2 / 3),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/cup.svg',
                    width: SizeConst.md20,
                    height: SizeConst.md20,
                  ),
                  const SizedBox(width:  SizeConst.sm8),
                  Text('Challenges',
                      style: Theme.of(context)
                          .textTheme
                          .bodySmall
                          ?.copyWith(color:ColorConst.grayLight))
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset(
                    'assets/images/Ethereum.svg',
                    width: SizeConst.lg24,
                    height: SizeConst.lg24,
                  ),
                  const SizedBox(width: SizeConst.sm8),
                  Text('200',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge
                          ?.copyWith(fontWeight: FontWeight.bold))
                ],
              ),
            ],
          ),
        )
      ],
    );
  }
}


class SuggestedCardWidget extends StatelessWidget {
  const SuggestedCardWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        RoundedContainer(
            child: Stack(
          children: [
            RoundedImage(
              width: MediaQuery.of(context).size.width * (2 / 3),
              imageUrl: ImageConst.girlImage,
              applyImageradius: false,
            ),
            Positioned(
                top: 12,
                right: 12,
                child: RoundedContainer(
                  radius: SizeConst.lg24,
                  backgroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                      horizontal: SizeConst.md16, vertical: SizeConst.xs4),
                  child: Text('30%',
                      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontWeight: FontWeight.bold, color: Colors.pink)),
                )),
            Positioned(
                top: 12,
                left: 12,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: Colors.white,
                  ),
                  child: SvgPicture.asset(
                    'assets/images/fire.svg',
                    width: 24,
                    height: 24,
                  ),
                ))
          ],
        ))
      ],
    );
  }
}
