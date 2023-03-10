import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_customer/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_customer/commons/widgets/horizontal_icon.dart';
import 'package:car_rental_for_customer/commons/widgets/vertical_icon.dart';
import 'package:flutter/material.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CarDetailView extends StatefulWidget {
  const CarDetailView({Key? key}) : super(key: key);

  @override
  State<CarDetailView> createState() => _CarDetailViewState();
}

class _CarDetailViewState extends State<CarDetailView> {
  PageController pageController = PageController(viewportFraction: 1);
  List carname = [
    'Mercedes',
    'Tesla',
    'BMW',
    'Honda',
    'Toyata',
    'Volvo',
    'Bugatti',
    'More'
  ];

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appAppBar(
        context,
        titleText: 'VINFAST FADIL 2020',
      ),
      body: SingleChildScrollView(
        child: Container(
          color: context.scaffoldBackgroundColor,
          padding: const EdgeInsets.only(bottom: s08),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.65,
                    child: PageView.builder(
                      controller: pageController,
                      itemCount: carname.length,
                      itemBuilder: (context, index) => Container(
                        padding: const EdgeInsets.all(s08),
                        alignment: Alignment.center,
                        child: Image.asset(
                          Images.carExample,
                          width: double.infinity,
                          fit: BoxFit.fill,
                          alignment: Alignment.topCenter,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.width * 0.62,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(
                        controller: pageController,
                        count: carname.length,
                        effect: CustomizableEffect(
                          spacing: 3,
                          activeDotDecoration: DotDecoration(
                            height: 5,
                            width: 5,
                            color: CustomColors.primaryMaterialColor,
                            borderRadius: BorderRadius.circular(40),
                          ),
                          dotDecoration: DotDecoration(
                            height: 5,
                            width: 5,
                            color: CustomColors.silver,
                            borderRadius: BorderRadius.circular(40),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'VINFAST FADIL 2020',
                          style: boldTextStyle(size: 18),
                        ),
                        const Spacer(),
                        const Text(
                          '900K',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: CustomColors.darkGreen,
                          ),
                          textAlign: TextAlign.end,
                        ),
                        const Text(
                          '/ng??y',
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.dimGray,
                          ),
                          textAlign: TextAlign.end,
                        ),
                      ],
                    ),
                    Row(
                      children: const [
                        Text(
                          '5.0',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.dimGray,
                          ),
                        ),
                        SizedBox(
                          width: s02,
                        ),
                        Icon(
                          Icons.star,
                          color: CustomColors.darkGreen,
                          size: 12,
                        ),
                        SizedBox(
                          width: s02,
                        ),
                        Icon(
                          Icons.fiber_manual_record,
                          size: 8,
                        ),
                        SizedBox(
                          width: s02,
                        ),
                        Text(
                          '100+ chuy???n',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: CustomColors.dimGray,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: s04,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: const [
                        CarCardTag(text: 'Xe t??? l??i'),
                        SizedBox(width: s04),
                        CarCardTag(text: 'S??? t??? ?????ng'),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              const Divider(
                color: CustomColors.gainsboro,
                thickness: 3,
              ),
              const SizedBox(
                height: s04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s16),
                child: ContainerWithLabel(
                  label: '?????c ??i???m',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      VerticalIcon(
                        icon: Icons.airline_seat_recline_extra_outlined,
                        label: '4 ch???',
                      ),
                      VerticalIcon(
                        icon: Icons.memory_outlined,
                        label: 'S??? t??? ?????ng',
                      ),
                      VerticalIcon(
                        icon: Icons.oil_barrel_outlined,
                        label: 'X??ng',
                      ),
                      VerticalIcon(
                        icon: Icons.local_gas_station_outlined,
                        label: 'Ti??u th??? 7L/100km',
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              const Divider(
                color: CustomColors.gainsboro,
                thickness: 3,
              ),
              const SizedBox(
                height: s04,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: s16),
                child: ContainerWithLabel(
                  label: 'M?? t???',
                  child: Text(
                    'Xe Honda Civic s??? t??? ?????ng ????ng k?? th??ng 10/2018. Xe gia ????nh m???i ?????p, n???i th???t nguy??n b???n, s???ch s???, b???o d?????ng th?????ng xuy??n, r???a xe mi???n ph?? cho kh??ch. Xe r???ng r??i, an to??n, ti???n nghi, ph?? h???p gia ????nh du l???ch, d???o ph???.\n\nXe trang b??? cruise control, h??? th???ng h??? tr??? ????nh l??i t??? ?????ng, ??i r???t nh??? v?? kh???e. Cammera l??i, h??? th???ng gi???i tr??, AV c??ng nhi???u ti???n ??ch kh??c ...',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.jetBlack,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              const Divider(
                color: CustomColors.gainsboro,
                thickness: 3,
              ),
              const SizedBox(
                height: s04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s16),
                child: ContainerWithLabel(
                  label: 'Ti???n ??ch',
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: const [
                            HorizontalIcon(
                              icon: Icons.bluetooth_outlined,
                              label: 'Bluetooth',
                            ),
                            HorizontalIcon(
                              icon: Icons.warehouse_outlined,
                              label: 'C???nh b??o t???c ?????',
                            ),
                            HorizontalIcon(
                              icon: Icons.usb_outlined,
                              label: 'Khe c???m USB',
                            ),
                            HorizontalIcon(
                              icon: Icons.toll_outlined,
                              label: 'Phu ph?? kh??ng d???ng',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            HorizontalIcon(
                              icon: Icons.camera_alt_outlined,
                              label: 'Camera h??nh tr??nh',
                            ),
                            HorizontalIcon(
                              icon: Icons.gps_fixed_outlined,
                              label: 'GPS',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              const Divider(
                color: CustomColors.gainsboro,
                thickness: 3,
              ),
              const SizedBox(
                height: s04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s16),
                child: ContainerWithLabel(
                  label: 'Gi???y t??? thu?? xe',
                  child: Container(),
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              const Divider(
                color: CustomColors.gainsboro,
                thickness: 3,
              ),
              const SizedBox(
                height: s04,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: s16),
                child: ContainerWithLabel(
                  label: 'T??i s???n th??? ch???p',
                  child: Text(
                    '15 tri???u (ti???n m???t/chuy???n kho???n cho ch??? xe khi nh???n xe) ho???c Xe m??y (k??m c?? v???t g???c) gi?? tr??? 15 tri???u',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.jetBlack,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              const Divider(
                color: CustomColors.gainsboro,
                thickness: 3,
              ),
              const SizedBox(
                height: s04,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: s16),
                child: ContainerWithLabel(
                  label: '??i???u kho???n',
                  child: Text(
                    'Quy ?????nh kh??c:\n??? S??? d???ng xe ????ng m???c ????ch.\n??? Kh??ng s??? d???ng xe thu?? v??o m???c ????ch phi ph??p, tr??i ph??p lu???t.\n??? Kh??ng s??? d???ng xe thu?? ????? c???m c???, th??? ch???p.\n??? Kh??ng h??t thu???c, nh??? k???o cao su, x??? r??c trong xe.\n??? Kh??ng ch??? h??ng qu???c c???m d??? ch??y n???.\n??? Kh??ng ch??? hoa qu???, th???c ph???m n???ng m??i trong xe.\n??? Khi tr??? xe, n???u xe b???n ho???c c?? m??i trong xe, kh??ch h??ng vui l??ng v??? sinh xe s???ch s??? ho???c g???i ph??? thu ph?? v??? sinh xe.\nTr??n tr???ng c???m ??n, ch??c qu?? kh??ch h??ng c?? nh???ng chuy???n ??i tuy???t v???i !',
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                      color: CustomColors.jetBlack,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              const Divider(
                color: CustomColors.gainsboro,
                thickness: 3,
              ),
              const SizedBox(
                height: s04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s16),
                child: ContainerWithLabel(
                  label: 'V??? tr?? xe',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                      ),
                      SizedBox(width: 2),
                      Text(
                        'Qu???n 10, H??? Ch?? Minh',
                        style: TextStyle(
                          fontSize: 11,
                          fontWeight: FontWeight.w500,
                          color: CustomColors.jetBlack,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: s08,
              ),
              const Divider(
                color: CustomColors.gainsboro,
                thickness: 3,
              ),
              const SizedBox(
                height: s04,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: s16),
                child: ContainerWithLabel(
                  label: 'Ch??? xe',
                  child: Container(),
                ),
              ),
              const SizedBox(
                height: s32,
              )
            ],
          ),
        ),
      ),
    );
  }
}
