import 'package:cookr/Routs/RoutsNames.dart';
import 'package:cookr/UI/MainNavigatonScreen/ProfileScreen/EditBio/EditBio.dart';
import 'package:cookr/UTILS/Colors.dart';
import 'package:cookr/UTILS/Textstyles.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: Icon(Icons.arrow_back),
        title: Text(
          'Alson',
          style: CustomTextStyles.size14w500W,
        ),
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: InkWell(
              onTap: (){
                Get.toNamed(RouteNames.settingsScreen);
              },
              child: Icon(
                Icons.settings,
                color: Colors.white,
              ),
            ),
          ),
        ],
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
      body: SizedBox(
        height: Get.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            SizedBox(height: 40),
            // Profile image
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              backgroundImage: NetworkImage(
                  'https://as2.ftcdn.net/v2/jpg/03/30/25/97/1000_F_330259751_tGPEAq5F5bjxkkliGrb97X2HhtXBDc9x.jpg'), // Replace with the actual image or remove
            ),
            SizedBox(height: 20),
            // Username
            Text(
              '@alsonchang',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 5),
            // Bio
            InkWell(
              onTap: () {
                Get.toNamed(RouteNames.editBio);
              },
              child: Text(
                'This is a bio',
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 40),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Get.width * 0.3),
              child: Divider(color: MyColors.greyColor3, thickness: 1),
            ),
            SizedBox(height: 10),
            // Joined date
            Text(
              'Joined July 23, 2024',
              style: TextStyle(
                color: Colors.grey,
                fontSize: 14,
              ),
            ),
            SizedBox(height: 20),
            // Streak and Recent Activity
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Streak Box
                  Container(
                    height: Get.width / 2.6,
                    width: Get.width / 2.6,
                    decoration: BoxDecoration(
                        color: MyColors.greyColor.withOpacity(0.3),
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Streak',
                          style: CustomTextStyles.size18w500W,
                        ),
                        SizedBox(height: 5),
                        Text(
                          '5',
                          style: CustomTextStyles.size34w500W,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: Get.width * 0.05,
                  ),
                  // Recent Activity Box
                  Container(
                    height: Get.width / 2.6,
                    width: Get.width / 2.6,
                    decoration: BoxDecoration(
                        color: MyColors.greyColor.withOpacity(0.1),
                        borderRadius: BorderRadius.all(
                          Radius.circular(20),
                        ),
                        border: Border.all(color: MyColors.greyColor)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('Recent Activity',
                            style: CustomTextStyles.size14w500W),
                        SizedBox(height: 5),
                        Text(
                          'Circuits',
                          style: CustomTextStyles.size22w600W,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            // Aura Points and Leaderboard
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30.0),
              child: Card(
                color: MyColors.greyColor.withOpacity(0.2),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 40.0, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('225.2', style: CustomTextStyles.size22w600W),
                          SizedBox(
                            height: 5,
                          ),
                          Text('Aura Points',
                              style: CustomTextStyles.size14w500Grey),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(RouteNames.leaderBoardScreen);
                            },
                            child: Text('View Leaderboard',
                                style: CustomTextStyles.size16w500Blue),
                          ),
                          Text('multiplier: 1x',
                              style: CustomTextStyles.size14w500Grey),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 30),
            // "UPGRADE PLAN" Button
            // ElevatedButton(
            //   onPressed: () {
            //     // Add your functionality here
            //   },
            //   style: ElevatedButton.styleFrom(
            //     backgroundColor: Colors.black, // Button background color
            //     padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15), // Button size
            //   ),
            //   child: Text(
            //     'UPGRADE PLAN',
            //     style: TextStyle(
            //       color: Colors.white,
            //       fontSize: 16,
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}
