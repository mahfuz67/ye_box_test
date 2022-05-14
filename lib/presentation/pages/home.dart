import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_yebox/data/commons/constants/colors.dart';
import 'package:test_yebox/data/models/local/list_item.dart';

import '../../data/commons/constants/assets.dart';
import '../components/button.dart';
import '../components/list_items.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  List<ListModel> listItems = [
    ListModel(icon: Assets.thumbsUp, title: 'Números', num: 4 ),
    ListModel(icon: Assets.raisedFisrt, title: 'Gramática', num: 8),
    ListModel(icon: Assets.waving, title: 'Saudações', num: 16)
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        backgroundColor: AppColors.scaffoldBackground,
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: size.height,
            width: size.width,
            padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 50,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(bottom: 2.5),
                                  child: SvgPicture.asset(Assets.helloText),
                                ),
                                const SizedBox(
                                  width: 7,
                                ),
                                const Text(
                                  'Lívia',
                                  style: TextStyle(fontSize: 24, color: AppColors.mE ),
                                )
                              ],
                            ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                                  'Vamos aprender o que hoje?',
                                  textAlign: TextAlign.start,
                                  style: TextStyle(fontSize: 14,color: AppColors.c3),
                                )
                      ],
                    ),
                    GestureDetector(onTap: () {}, child: SvgPicture.asset(Assets.notification))
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Container(
                  decoration: BoxDecoration(color: AppColors.amarelo, borderRadius: BorderRadius.circular(24)),
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Expanded(
                        flex: 8,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text(
                              'Alfabeto em libras',
                              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: AppColors.mE),
                            ),
                            SizedBox(
                              height: 13,
                            ),
                            Text(
                              'O alfabeto em Libras são sinais datilológicos, ou seja, realizados com os dedos.',
                              textAlign: TextAlign.start,
                              style: TextStyle(fontSize: 16, color: AppColors.mE, height: 1.5),
                            ),
                            SizedBox(
                              height: 25,
                            ),
                            Button(
                              color: AppColors.c1,
                              padding: 4,
                              width: 90,
                              height: 30,
                              child: Text(
                                'Começar agora',
                                style: TextStyle(color: AppColors.mE, fontSize: 12),
                              ),
                            )
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Expanded(
                        flex: 4,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [Image.asset(Assets.crossedFingers)],
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 25,
                ),
                const Text(
                  'Módulos',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: AppColors.mE),
                ),
                const SizedBox(
                  height: 25,
                ),
                Column(
                  children: [
                    ...List.generate(listItems.length, (index) => ListItem(listModel: listItems[index],))
                  ]
                )
              ],
            ),
          ),
        ));
  }
}


