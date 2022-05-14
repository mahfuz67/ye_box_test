import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:test_yebox/data/commons/constants/assets.dart';
import 'package:test_yebox/data/commons/constants/colors.dart';
import 'package:test_yebox/presentation/components/tag.dart';

import '../../data/models/local/list_item.dart';

class ListItem extends StatelessWidget {
  const ListItem({Key? key, required this.listModel}) : super(key: key);

  final ListModel listModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      height: 85,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: const Color(0xffFFFFFF),
        borderRadius: BorderRadius.circular(25)
      ),
      child: Row(
        children: [
          Image.asset(listModel.icon),
          const SizedBox(
            width: 15,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
               Text(
                 listModel.title,
                style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: AppColors.mE),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Tag(text: '${listModel.num} Vídeos', textColor: const Color(0xffB18411) , color: const Color(0xffFFF4BD),),
                  const SizedBox(
                    width: 10,
                  ),
                  Tag(text: '0~${listModel.num}', textColor: const Color(0xff70B3F5), color: const Color(0xffE6F2FF),)
                ],
              )
            ],
          ),
          const Spacer(),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SvgPicture.asset(Assets.lock)
            ],
          ),
          const SizedBox(
            width: 10,
          ),
        ],
      ),
    );
  }
}
