import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../data/commons/constants/assets.dart';
import '../../data/commons/constants/colors.dart';
import '../../data/commons/constants/routes.dart';
import '../../data/services/navigation/navigation.dart';
import '../../di/get_it.dart';
import '../components/button.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
        getIt<NavigationServiceImpl>().replaceWith(Routes.home);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Container(
      height: size.height,
      width: size.width,
      decoration: BoxDecoration(image: DecorationImage(fit: BoxFit.cover, image: AssetImage(Assets.background))),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.waving),
                const SizedBox(height: 15),
                SvgPicture.asset(Assets.logoText),
              ],
            ),
          ),
          const Text(
            'Comece já a\naprender libras',
            textAlign: TextAlign.center,
            style: TextStyle(fontSize: 30, color: AppColors.mC2),
          ),
          const SizedBox(
            height: 15,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 40.0),
            child: Button(color: AppColors.mC2,
            padding: 14,
            child: Text(
              'Começar agora',
              style: TextStyle(color: AppColors.c1, fontSize: 24, fontWeight: FontWeight.bold),
            ),)
          ),
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    ));
  }
}
