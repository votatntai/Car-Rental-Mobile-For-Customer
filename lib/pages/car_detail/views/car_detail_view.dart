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
                          '/day',
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
                          '100+ trips',
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
                        CarCardTag(text: 'Self Driving'),
                        SizedBox(width: s04),
                        CarCardTag(text: 'AT'),
                        SizedBox(width: s04),
                        CarCardTag(text: 'MT'),
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
                  label: 'Characteristic',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      VerticalIcon(
                        icon: Icons.airline_seat_recline_extra_outlined,
                        label: '4 seats',
                      ),
                      VerticalIcon(
                        icon: Icons.memory_outlined,
                        label: 'Automatic Transmission',
                      ),
                      VerticalIcon(
                        icon: Icons.oil_barrel_outlined,
                        label: 'Gasoline',
                      ),
                      VerticalIcon(
                        icon: Icons.local_gas_station_outlined,
                        label: 'Consumption 5.3 liters/100km',
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
                  label: 'Description',
                  child: Text(
                    'Xe Honda Civic số tự động đăng ký tháng 10/2018. Xe gia đình mới đẹp, nội thất nguyên bản, sạch sẽ, bảo dưỡng thường xuyên, rửa xe miễn phí cho khách. Xe rộng rãi, an toàn, tiện nghi, phù hợp gia đình du lịch, dạo phố.\n\nXe trang bị cruise control, hệ thống hỗ trợ đánh lái tự động, đi rất nhẹ và khỏe. Cammera lùi, hệ thống giải trí, AV cùng nhiều tiện ích khác ...',
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
                  label: 'Utilities',
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
                              label: 'Speed warning',
                            ),
                            HorizontalIcon(
                              icon: Icons.usb_outlined,
                              label: 'Usb slot',
                            ),
                            HorizontalIcon(
                              icon: Icons.toll_outlined,
                              label: 'Non-stop toll road',
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: const [
                            HorizontalIcon(
                              icon: Icons.camera_alt_outlined,
                              label: 'Camera',
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
                  label: 'Car rental documents',
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
                  label: 'Collateral',
                  child: Text(
                    '15 triệu (tiền mặt/chuyển khoản cho chủ xe khi nhận xe) hoặc Xe máy (kèm cà vẹt gốc) giá trị 15 triệu',
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
                  label: 'Rules',
                  child: Text(
                    'Quy định khác:\n◦ Sử dụng xe đúng mục đích.\n◦ Không sử dụng xe thuê vào mục đích phi pháp, trái pháp luật.\n◦ Không sử dụng xe thuê để cầm cố, thế chấp.\n◦ Không hút thuốc, nhả kẹo cao su, xả rác trong xe.\n◦ Không chở hàng quốc cấm dễ cháy nổ.\n◦ Không chở hoa quả, thực phẩm nặng mùi trong xe.\n◦ Khi trả xe, nếu xe bẩn hoặc có mùi trong xe, khách hàng vui lòng vệ sinh xe sạch sẽ hoặc gửi phụ thu phí vệ sinh xe.\nTrân trọng cảm ơn, chúc quý khách hàng có những chuyến đi tuyệt vời !',
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
                  label: 'Car location',
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: const [
                      Icon(
                        Icons.location_on_outlined,
                        size: 15,
                      ),
                      SizedBox(width: 2),
                      Text(
                        'District 10 Ho Chi Minh',
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
                  label: 'Car owner',
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
