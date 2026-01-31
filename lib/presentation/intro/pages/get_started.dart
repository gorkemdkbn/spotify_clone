import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify_clone/common/widgets/button/basic_app_button.dart';
import 'package:spotify_clone/core/configs/assets/app_vectors.dart';
import 'package:spotify_clone/core/configs/theme/app_colors.dart';
import '../../../core/configs/assets/app_images.dart';

class GetStartedPage extends StatelessWidget {
  const GetStartedPage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final width = size.width;
    final height = size.height;

    return Scaffold(
      body: Stack(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              vertical: height * 0.08,
              horizontal: width * 0.08,
            ),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(AppImages.introBG),
              ),
            ),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    AppVectors.logo,
                    width: width * 0.35,
                  ),
                ),

                const Spacer(),

                Text(
                  'Müzik Dinlemenin Tadını Çıkarın',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: width * 0.045,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: height * 0.025),

                Text(
                  'Ruh haline eşlik eden müzikler, keşfet, dinle, hisset, tekrar et.',
                  style: TextStyle(
                    fontWeight: FontWeight.w500,
                    color: AppColors.grey,
                    fontSize: width * 0.04,
                  ),
                  textAlign: TextAlign.center,
                ),

                SizedBox(height: height * 0.03),

                SizedBox(
                  width: width * 0.8,
                  height: height * 0.06,
                  child: BasicAppButton(
                    onPressed: () {},
                    title: 'Başla',
                  ),
                ),
              ],
            ),
          ),

          // Koyu overlay (arka plan için)
          Container(
            color: Colors.black.withOpacity(0.10),
          ),
        ],
      ),
    );
  }
}
