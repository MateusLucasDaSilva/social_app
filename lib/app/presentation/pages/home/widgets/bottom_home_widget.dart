import 'package:flutter/material.dart';
import 'package:social_app/app/core/utils/constants/app_size.dart';
import 'package:social_app/app/presentation/pages/home/controller/home_controller.dart';

class BottomHomeWidget extends StatelessWidget {
  final Function(HomeEnumType) onChangePage;
  const BottomHomeWidget({super.key, required this.onChangePage});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border(
        top: BorderSide(width: .5),
      )),
      child: Padding(
        padding: EdgeInsets.only(
          bottom: AppSize.padding + MediaQuery.of(context).padding.bottom,
          left: AppSize.padding,
          right: AppSize.padding,
          top: AppSize.padding,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: () => onChangePage(HomeEnumType.home),
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () => onChangePage(HomeEnumType.search),
              icon: Icon(Icons.search),
            ),
            Container(
              height: 40,
              width: 80,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                gradient: LinearGradient(
                  begin: Alignment.bottomLeft,
                  end: Alignment.topRight,
                  colors: [
                    Color(0xffFF00D6),
                    Color(0xffFF4D00),
                  ],
                ),
              ),
              child: Icon(
                Icons.add,
                color: Colors.white,
              ),
            ),
            IconButton(
              onPressed: () => onChangePage(HomeEnumType.chat),
              icon: Icon(Icons.chat),
            ),
            IconButton(
              onPressed: () => onChangePage(HomeEnumType.profile),
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
