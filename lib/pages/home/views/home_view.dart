import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card.dart';
import 'package:car_rental_for_customer/pages/home/widgets/car_option.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int topDealsIndex = 0;
  final List<String> topDeals = [
    "All",
    "Self Driving Car",
    "Car With Driver",
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 50,
        backgroundColor: white,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: s02),
            Text("Good Morning 👋", style: secondaryTextStyle()),
            const SizedBox(height: s04),
            Text("Trung Hieu", style: boldTextStyle()),
          ],
        ),
        leading: GestureDetector(
          child: Padding(
            padding: const EdgeInsets.only(
                top: s08, right: s08, bottom: s08, left: s16),
            child: Image.asset("assets/userImage.jpg", fit: BoxFit.cover)
                .cornerRadiusWithClipRRect(60),
          ),
          onTap: () {
            context.goNamed(RouteName.profile);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(
              Icons.notifications_none_rounded,
              size: 22,
              color: context.iconColor,
            ),
            onPressed: () {
              context.goNamed(RouteName.notification);
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(s08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: s08),
              Row(
                children: const [
                  CarOption(
                    carImage: Images.selfDrivingCar,
                    text: "Self Driving Car",
                  ),
                  SizedBox(width: s16),
                  CarOption(
                    carImage: Images.carWithDriver,
                    text: "Car With Driver",
                  ),
                ],
              ),
              ListTile(
                title: Text("Top Deals", style: boldTextStyle(size: 16)),
                trailing: TextButton(
                  child: Text('See All', style: primaryTextStyle()),
                  onPressed: () {},
                ),
              ),
              SizedBox(
                height: 30,
                child: ListView.builder(
                  padding: const EdgeInsets.only(left: s08),
                  shrinkWrap: true,
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          topDealsIndex = index;
                        });
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: s16,
                          vertical: s04,
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: CustomColors.primary),
                          color: topDealsIndex == index ? cardDarkColor : white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Text(
                          topDeals[index],
                          style: TextStyle(
                            color: topDealsIndex == index ? white : black,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ).paddingRight(8),
                    );
                  },
                ),
              ),
              const SizedBox(height: s08),
              SizedBox(
                height: 230,
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return CarCard(
                      onTap: () {
                        context.pushNamed(RouteName.carDetail);
                      },
                    );
                  },
                  itemCount: 3,
                  scrollDirection: Axis.horizontal,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
