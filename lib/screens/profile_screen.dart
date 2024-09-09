import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mycool_profile/components/profile_img.dart';
import 'package:mycool_profile/components/profile_menu.dart';
import 'package:mycool_profile/constant/constant.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(
          Iconsax.arrow_left,
          size: 27,
          color: iconSecondaryColor,
        ),
        title: Center(
            child: Text(
          'Profile',
          style: textTitle,
        )),
        actions: const [
          Icon(
            Icons.light_mode,
            size: 26,
            color: iconSecondaryColor,
          ),
          SizedBox(
            width: 20.0,
          ),
        ],
      ),
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 20,
            ),
            const ProfileImage(),
            const SizedBox(
              height: 20,
            ),
            Text(
              'Supanat Sansuk',
              style: textTitle,
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              's6507012663027@email.kmutnb.ac.th',
              style: textSubTitle,
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 200,
              height: 35,
              child: Container(
                // color: Colors.amber,
                decoration: BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.circular(25.0)),
                child: Center(
                    child: Text(
                  'Edit Profile',
                  style: textBtn,
                )),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            const ProfileMenu(title: 'Setting', icons: Icons.settings,),
            const SizedBox(height: 15,),
            const ProfileMenu(title: 'Billing Detail', icons: Icons.wallet,),
            const SizedBox(height: 15,),
            const ProfileMenu(title: 'User Management', icons: Icons.person_add,),
            const SizedBox(height: 45,),
            const ProfileMenu(title: 'Information', icons: Icons.info_outline,),
            const SizedBox(height: 15,),
            const ProfileMenu(title: 'Logout', icons: Icons.logout,),
          ],
        ),
      ),
    );
  }
}
