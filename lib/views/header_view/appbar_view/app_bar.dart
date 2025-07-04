import 'package:flutter/material.dart';

import '../../../core/controller/utils/app_colors/app_colors.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      centerTitle: true,
      elevation: 0,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: const [
              Text(
                'Bimore Design',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColors.greenColor),
              ),
              SizedBox(height: 4),
              Row(
                children: [
                  Icon(Icons.location_on_outlined,color: AppColors.lightText,size: 18,),
                  SizedBox(width: 5,),
                  Text(
                    'Jakarta, Indonesia',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                ],
              ),
                ],
              ),
          SizedBox(width: 80,),
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.1),
                  spreadRadius: 1,
                  blurRadius: 10,
                )
              ],
            ),
            child: IconButton(
              icon: const Icon(
                Icons.notifications_none_outlined,
                color:AppColors.black,
              ),
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}
