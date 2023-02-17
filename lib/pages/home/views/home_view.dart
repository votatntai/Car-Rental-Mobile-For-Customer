import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  FocusNode searchFocus = FocusNode();
  TextEditingController searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    searchFocus.dispose();
    searchController.dispose();
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
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: s08),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: s16,
                vertical: s08,
              ),
              child: TextFormField(
                focusNode: searchFocus,
                controller: searchController,
                style: primaryTextStyle(),
                onFieldSubmitted: (val) {
                  // showSearch(
                  //   query: searchController.text,
                  //   context: context,
                  //   delegate:
                  //       CustomSearchDelegate.initialize(searchController.text),
                  // );
                },
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.zero,
                  hintText: 'Search',
                  hintStyle: secondaryTextStyle(),
                  fillColor: CustomColors.editTextBgColor,
                  filled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: radius(defaultRadius),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: radius(defaultRadius),
                    borderSide: const BorderSide(
                      color: Colors.transparent,
                      width: 0.0,
                    ),
                  ),
                  prefixIcon: IconButton(
                    icon: Icon(
                      Icons.search,
                      size: 20,
                      color: gray.withOpacity(0.5),
                    ),
                    onPressed: () {
                      // showSearch(
                      //   query: searchController.text,
                      //   context: context,
                      //   delegate: CustomSearchDelegate.initialize(
                      //       searchController.text),
                      // );
                    },
                  ),
                  suffixIcon: IconButton(
                    icon: Icon(
                      Icons.filter_alt_outlined,
                      size: 20,
                      color: gray.withOpacity(0.5),
                    ),
                    onPressed: () {
                      // showSearch(
                      //   query: searchController.text,
                      //   context: context,
                      //   delegate: CustomSearchDelegate.initialize(
                      //       searchController.text),
                      // );
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
