import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/car_card_tag.dart';
import 'package:car_rental_for_customer/commons/widgets/car_owner_widget.dart';
import 'package:car_rental_for_customer/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_customer/commons/widgets/google_map_widget.dart';
import 'package:car_rental_for_customer/commons/widgets/horizontal_icon.dart';
import 'package:car_rental_for_customer/commons/widgets/vertical_icon.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/transmission.dart';
import 'package:car_rental_for_customer/pages/car_detail/bloc/car_detail_bloc.dart';
import 'package:car_rental_for_customer/pages/car_detail/enums/car_address_type.dart';
import 'package:car_rental_for_customer/pages/car_detail/widgets/surcharge_item.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
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

  Widget divider = Column(
    children: const [
      SizedBox(
        height: s08,
      ),
      Divider(
        color: CustomColors.gainsboro,
        thickness: 3,
      ),
      SizedBox(
        height: s04,
      ),
    ],
  );

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CarDetailBloc, CarDetailState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final rentCost = calculateDays(
              successState.startDate,
              successState.endDate,
            ) *
            successState.car.price;

        //TODO: Calculate promotion cost
        const promotionCost = 0.0;

        const carDeliveryCost = 12000.0;

        final totalCost = rentCost + carDeliveryCost - promotionCost;

        return Scaffold(
          appBar: appAppBar(
            context,
            titleText: 'VINFAST FADIL 2020',
          ),
          body: Stack(
            children: [
              SingleChildScrollView(
                child: Container(
                  color: context.scaffoldBackgroundColor,
                  padding: const EdgeInsets.only(bottom: s08),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      carImage(context, successState.car),
                      carTitle(context, successState.car),
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Thời gian',
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  const Icon(
                                    Icons.calendar_month_outlined,
                                  ),
                                  const SizedBox(
                                    width: s08,
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        DateFormat('HH:mm E, dd/MM/yyyy')
                                            .format(
                                          successState.startDate,
                                        ),
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                      Text(
                                        DateFormat('HH:mm E, dd/MM/yyyy')
                                            .format(
                                          successState.endDate,
                                        ),
                                        style: const TextStyle(
                                          fontSize: 12,
                                        ),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                              const Divider(),
                              Container(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: s08,
                                  vertical: s04,
                                ),
                                color: CustomColors.ochre.withOpacity(0.1),
                                child: Column(
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Thời gian nhận xe',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '${formatTimeOfDay(successState.car.startPickUpTime)}-${formatTimeOfDay(successState.car.endPickUpTime)}',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: s04,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Thời gian trả xe',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '${formatTimeOfDay(successState.car.startReturnTime)}-${formatTimeOfDay(successState.car.endReturnTime)}',
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Địa điểm giao nhận xe',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              RadioListTile<CarAddressType>(
                                contentPadding: const EdgeInsets.all(0),
                                visualDensity: VisualDensity.compact,
                                title: Text(
                                  'Vị trí xe - ${successState.car.location}',
                                  style: const TextStyle(fontSize: 12),
                                ),
                                value: CarAddressType.car,
                                groupValue: successState.carAddressType,
                                onChanged: (value) {
                                  if (value != null) {
                                    context.read<CarDetailBloc>().add(
                                          CarDetailEvent.addressTypeChanged(
                                            carAddressType: value,
                                          ),
                                        );
                                  }
                                },
                              ),
                              if (successState.car.deliveryDistance != null)
                                RadioListTile<CarAddressType>(
                                  contentPadding: const EdgeInsets.all(0),
                                  visualDensity: VisualDensity.compact,
                                  title: Text(
                                    'Địa chỉ của tôi - ${successState.address}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                  value: CarAddressType.customer,
                                  groupValue: successState.carAddressType,
                                  onChanged: (value) {
                                    if (value != null) {
                                      context.read<CarDetailBloc>().add(
                                            CarDetailEvent.addressTypeChanged(
                                              carAddressType: value,
                                            ),
                                          );
                                    }
                                  },
                                ),
                              if (successState.car.deliveryDistance != null)
                                Container(
                                  margin: const EdgeInsets.only(
                                    top: s04,
                                  ),
                                  padding: const EdgeInsets.symmetric(
                                    horizontal: s08,
                                    vertical: s04,
                                  ),
                                  color: CustomColors.ochre.withOpacity(0.1),
                                  child: Column(
                                    children: [
                                      Row(
                                        children: [
                                          const Text(
                                            'Giao nhận xe tận nới trong',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          const Spacer(),
                                          Text(
                                            '${successState.car.deliveryDistance} km',
                                            style:
                                                const TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: s04,
                                      ),
                                      Row(
                                        children: const [
                                          Text(
                                            'Phí giao xe 2 chiều',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                          Spacer(),
                                          Text(
                                            '20000đ/km',
                                            style: TextStyle(fontSize: 12),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Phụ phí',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SurchargeItem(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        const Text(
                                          'Giới hạn quãng đường',
                                          style: TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        const Spacer(),
                                        Text(
                                          '${successState.car.distanceLimit} km/ngày',
                                          style: const TextStyle(
                                            fontSize: 12,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      height: s04,
                                    ),
                                    Text(
                                      'Phí: ${formatCurrency(successState.car.overDistancePrice)}/km vượt qua giới hạn',
                                      style: const TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: s08,
                              ),
                              SurchargeItem(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Quá giờ',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: s04,
                                    ),
                                    Text(
                                      'Phí: ${formatCurrency(successState.car.overTimePrice)}/giờ. Quá 5 giừo tính bằng giá thuê 1 ngày',
                                      style: const TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: s08,
                              ),
                              SurchargeItem(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Vệ sinh xe',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: s04,
                                    ),
                                    Text(
                                      'Phí: ${formatCurrency(100000)} (nếu trả xe nhiều vết bẩn, bùn cát., sình lầy... cần phải vệ sinh lại trước khi giao cho khách sau khi thuê)',
                                      style: const TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              const SizedBox(
                                height: s08,
                              ),
                              SurchargeItem(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Khử mùi xe',
                                      style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: s04,
                                    ),
                                    Text(
                                      'Phí: ${formatCurrency(400000)} (nếu trả xe nhiều vết bẩn, bùn cát., sình lầy... cần phải vệ sinh lại trước khi giao cho khách sau khi thuê)',
                                      style: const TextStyle(fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Chi tiết giá',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Đơn giá thuê: ',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatCurrency(successState.car.price)}/ngày',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  const Text(
                                    'Tổng phí thuê xe:',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  Text(
                                    '${formatCurrency(successState.car.price)} x ${calculateDays(
                                      successState.startDate,
                                      successState.endDate,
                                    )} ngày',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              if (successState.carAddressType ==
                                  CarAddressType.customer)
                                Column(
                                  children: [
                                    const SizedBox(
                                      height: s04,
                                    ),
                                    Row(
                                      children: [
                                        const Text(
                                          'Phí giao nhận xe:',
                                          style: TextStyle(fontSize: 12),
                                        ),
                                        const Spacer(),
                                        Text(
                                          formatCurrency(carDeliveryCost),
                                          style: const TextStyle(fontSize: 12),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              const SizedBox(
                                height: s04,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Khuyễn mãi:',
                                    style: TextStyle(fontSize: 12),
                                  ),
                                  const Spacer(),
                                  //TODO: add promotion
                                  Text(
                                    '-${formatCurrency(promotionCost)}',
                                    style: const TextStyle(fontSize: 12),
                                  ),
                                ],
                              ),
                              const Divider(),
                              Row(
                                children: [
                                  const Text(
                                    'Tổng cộng:',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    formatCurrency(totalCost),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Đặc điểm',
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              VerticalIcon(
                                icon: Icons.airline_seat_recline_extra_outlined,
                                label: '4 chỗ',
                              ),
                              VerticalIcon(
                                icon: Icons.memory_outlined,
                                label: 'Số tự động',
                              ),
                              VerticalIcon(
                                icon: Icons.oil_barrel_outlined,
                                label: 'Xăng',
                              ),
                              VerticalIcon(
                                icon: Icons.local_gas_station_outlined,
                                label: 'Tiêu thụ 7L/100km',
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Mô tả',
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
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Tiện ích',
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
                                      label: 'Cảnh báo tốc độ',
                                    ),
                                    HorizontalIcon(
                                      icon: Icons.usb_outlined,
                                      label: 'Khe cắm USB',
                                    ),
                                    HorizontalIcon(
                                      icon: Icons.toll_outlined,
                                      label: 'Phu phí không dừng',
                                    ),
                                  ],
                                ),
                              ),
                              Expanded(
                                child: Column(
                                  children: const [
                                    HorizontalIcon(
                                      icon: Icons.camera_alt_outlined,
                                      label: 'Camera hành trình',
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
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Giấy tờ thuê xe (bàn gốc)',
                          child: Column(
                            children: const [
                              Text(
                                '◦ CMND/CCCD/Hộ chiếu (đối chiếu)\n◦ Giấy phép lái xe (đối chiếu)',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.jetBlack,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Tài sản thế chấp',
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
                      divider,
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Điều khoản',
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
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Vị trí xe',
                          child: Column(
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  const Icon(
                                    Icons.location_on_outlined,
                                    size: 15,
                                  ),
                                  const SizedBox(width: 2),
                                  SizedBox(
                                    width: context.width() * 0.8,
                                    child: Text(
                                      successState.car.location,
                                      style: const TextStyle(
                                        fontSize: 11,
                                        fontWeight: FontWeight.w500,
                                        color: CustomColors.jetBlack,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              GoogleMapWidget(
                                address: successState.car.location,
                                mapsRepository: getIt.get<MapsRepository>(),
                              ),
                            ],
                          ),
                        ),
                      ),
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Chủ xe',
                          child: CarOwnerWidget(
                            car: successState.car,
                            onTap: () {
                              context.pushNamed(
                                RouteName.carOwnerDetail,
                                queryParams: {
                                  'car-owner-id': successState.car.carOwnerId,
                                },
                              );
                            },
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: s64,
                      )
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  const Spacer(),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.all(s08),
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              padding:
                                  const EdgeInsets.symmetric(vertical: s12),
                            ),
                            onPressed: () {
                              context.pushNamed(
                                RouteName.carBookingConfirmation,
                                queryParams: {
                                  'car-id': successState.car.id,
                                  'start-date':
                                      successState.startDate.toString(),
                                  'end-date': successState.endDate.toString(),
                                  'address': successState.deliveryAddress,
                                  'latitude': successState.latitude.toString(),
                                  'longitude':
                                      successState.longitude.toString(),
                                  'promotion-id': successState.promotion?.id,
                                  'car-delivery-cost':
                                      carDeliveryCost.toString(),
                                },
                              );
                            },
                            child: const Text(
                              'Đặt xe',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  Padding carTitle(BuildContext context, Car car) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: s16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                car.name,
                style: boldTextStyle(size: 18),
              ),
              const Spacer(),
              Text(
                formatCurrency(car.price),
                style: const TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.flamingo,
                ),
                textAlign: TextAlign.end,
              ),
              const Text(
                '/ngày',
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
            children: [
              Text(
                car.rate.toString(),
                style: const TextStyle(
                  fontSize: 11,
                  fontWeight: FontWeight.w500,
                  color: CustomColors.dimGray,
                ),
              ),
              const SizedBox(
                width: s02,
              ),
              const Icon(
                Icons.star,
                color: CustomColors.flamingo,
                size: 12,
              ),
              const SizedBox(
                width: s02,
              ),
              const Icon(
                Icons.fiber_manual_record,
                size: 8,
              ),
              const SizedBox(
                width: s02,
              ),
              const Text(
                '100+ chuyến',
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
            children: [
              CarCardTag(text: car.transmission.displayName),
            ],
          ),
        ],
      ),
    );
  }

  Widget carImage(BuildContext context, Car car) {
    return Stack(
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
    );
  }
}
