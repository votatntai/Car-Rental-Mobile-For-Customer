import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        context,
        titleText: "Profile",
        // actionWidget: IconButton(
        //   onPressed: () {},
        //   icon: Icon(
        //     Icons.chat,
        //     color: context.iconColor,
        //   ),
        // ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.only(bottom: s16),
        child: Column(
          children: [
            const SizedBox(height: s16),
            Stack(
              children: [
                Image.asset(
                  "assets/userImage.jpg",
                  height: 100,
                  width: 100,
                  fit: BoxFit.cover,
                ).cornerRadiusWithClipRRect(60),
                Positioned(
                  right: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    padding: const EdgeInsets.all(s04),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      border: Border.all(
                        color: Colors.black.withOpacity(0.1),
                      ),
                      borderRadius: BorderRadius.circular(s08),
                    ),
                    child: const Icon(
                      Icons.edit,
                      color: white,
                      size: s16,
                    ),
                  ).onTap(() {
                    context.goNamed(RouteName.profileDetail);
                  }),
                ),
              ],
            ),
            const SizedBox(height: s16),
            Text('Trung Hieu', style: boldTextStyle(size: 16)),
            const SizedBox(height: s08),
            Text('0909090909', style: secondaryTextStyle()),
            const SizedBox(height: s16),
            const Divider(height: 0),
            const SizedBox(height: s16),
            SettingItemWidget(
              leading: Icon(Icons.person_outline, color: context.iconColor),
              title: "Edit Profile",
              titleTextStyle: boldTextStyle(),
              onTap: () {
                context.goNamed(RouteName.profileDetail);
              },
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: context.iconColor,
              ),
            ),
            SettingItemWidget(
              leading: Icon(
                Icons.location_on_outlined,
                color: context.iconColor,
              ),
              title: "Address",
              titleTextStyle: boldTextStyle(),
              onTap: () {
                //
              },
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: context.iconColor,
              ),
            ),
            SettingItemWidget(
              leading: Icon(Icons.notifications_active_outlined,
                  color: context.iconColor),
              title: "Notification",
              titleTextStyle: boldTextStyle(),
              onTap: () {
                context.goNamed(RouteName.notification);
              },
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: context.iconColor,
              ),
            ),
            SettingItemWidget(
              leading: Icon(Icons.payment_rounded, color: context.iconColor),
              title: "Payment",
              titleTextStyle: boldTextStyle(),
              onTap: () {
                //TODO: navigate to payment screen
              },
              trailing: Icon(Icons.arrow_forward_ios_rounded,
                  size: 18, color: context.iconColor),
            ),
            SettingItemWidget(
              leading: Icon(Icons.login, color: context.iconColor),
              title: "Logout",
              titleTextStyle: boldTextStyle(),
              onTap: () {
                showConfirmDialogCustom(
                  context,
                  onAccept: (c) {
                    //TODO: logout logic, navigate to login screen
                    context.goNamed(RouteName.login);
                  },
                  dialogType: DialogType.CONFIRMATION,
                  primaryColor: context.primaryColor,
                );
              },
              trailing: Icon(
                Icons.arrow_forward_ios_rounded,
                size: 18,
                color: context.iconColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
