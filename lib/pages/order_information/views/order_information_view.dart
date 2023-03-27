import 'package:cached_network_image/cached_network_image.dart';
import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/LoadingWidget.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/car_owner_widget.dart';
import 'package:car_rental_for_customer/commons/widgets/container_with_label.dart';
import 'package:car_rental_for_customer/commons/widgets/google_map_widget.dart';
import 'package:car_rental_for_customer/commons/widgets/location_text.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/car.dart';
import 'package:car_rental_for_customer/models/enums/order_status.dart';
import 'package:car_rental_for_customer/pages/car_booking_confirmation/widgets/table_item.dart';
import 'package:car_rental_for_customer/pages/order_information/bloc/order_information_bloc.dart';
import 'package:car_rental_for_customer/pages/order_information/widgets/driver_widget.dart';
import 'package:car_rental_for_customer/repositories/maps_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:intl/intl.dart';
import 'package:nb_utils/nb_utils.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OrderInformationView extends StatefulWidget {
  const OrderInformationView({Key? key}) : super(key: key);

  @override
  State<OrderInformationView> createState() => _OrderInformationViewState();
}

class _OrderInformationViewState extends State<OrderInformationView> {
  PageController pageController = PageController(viewportFraction: 1);
  TextEditingController textarea = TextEditingController();

  @override
  void dispose() {
    pageController.dispose();
    textarea.dispose();
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

  List<Step> steps(OrderStatus orderStatus) {
    if (orderStatus == OrderStatus.cancelled) {
      return [
        Step(
          state: StepState.error,
          title: Text(
            OrderStatus.cancelled.displayName,
            style: boldTextStyle(
              color: OrderStatus.cancelled.displayColor,
              size: 13,
            ),
          ),
          isActive: orderStatus.step >= OrderStatus.cancelled.step,
          content: const SizedBox(),
        ),
      ];
    }

    return [
      Step(
        state: orderStatus == OrderStatus.pending
            ? StepState.complete
            : StepState.indexed,
        title: Text(
          OrderStatus.pending.displayName,
          style: boldTextStyle(
            color: OrderStatus.pending.displayColor,
            size: 13,
          ),
        ),
        isActive: orderStatus.step >= OrderStatus.pending.step,
        content: const SizedBox(),
      ),
      if (orderStatus == OrderStatus.rejected)
        Step(
          state: orderStatus == OrderStatus.rejected
              ? StepState.error
              : StepState.indexed,
          title: Text(
            OrderStatus.rejected.displayName,
            style: boldTextStyle(
              color: OrderStatus.rejected.displayColor,
              size: 13,
            ),
          ),
          isActive: orderStatus.step >= OrderStatus.rejected.step,
          content: const SizedBox(),
        ),
      if (orderStatus != OrderStatus.rejected)
        Step(
          state: orderStatus == OrderStatus.accepted
              ? StepState.complete
              : StepState.indexed,
          title: Text(
            OrderStatus.accepted.displayName,
            style: boldTextStyle(
              color: OrderStatus.accepted.displayColor,
              size: 13,
            ),
          ),
          isActive: orderStatus.step >= OrderStatus.accepted.step,
          content: const SizedBox(),
        ),
      if (orderStatus != OrderStatus.rejected)
        Step(
          state: orderStatus == OrderStatus.started
              ? StepState.complete
              : StepState.indexed,
          title: Text(
            OrderStatus.started.displayName,
            style: boldTextStyle(
              color: OrderStatus.started.displayColor,
              size: 13,
            ),
          ),
          isActive: orderStatus.step >= OrderStatus.started.step,
          content: const SizedBox(),
        ),
      if (orderStatus != OrderStatus.rejected)
        Step(
          state: orderStatus == OrderStatus.finished
              ? StepState.complete
              : StepState.indexed,
          title: Text(
            OrderStatus.finished.displayName,
            style: boldTextStyle(
              color: OrderStatus.finished.displayColor,
              size: 13,
            ),
          ),
          isActive: orderStatus.step >= OrderStatus.finished.step,
          content: const SizedBox(),
        ),
    ];
    {}
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<OrderInformationBloc, OrderInformationState>(
      builder: (context, state) {
        final successState = state.mapOrNull(success: (state) => state);

        if (successState == null) {
          return const Scaffold(
            body: LoadingWidget(),
          );
        }

        final rentCost = calculateDays(
              successState.order.startTime,
              successState.order.endTime,
            ) *
            successState.order.rentalUnitPrice;

        final promotionCost = successState.order.promotion?.discount ?? 0;

        final carDeliveryCost = successState.order.deliveryCost;

        final totalCost = rentCost + carDeliveryCost - promotionCost;
        final deposit = successState.order.deposit;
        final remaining = totalCost - deposit;
        return Scaffold(
          appBar: appAppBar(context, titleText: 'Thông tin chuyến'),
          body: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (successState.order.orderDetail?.car != null)
                  carImage(context, successState.order.orderDetail!.car),
                if (successState.order.orderDetail?.car != null)
                  carTitle(context, successState.order.orderDetail!.car),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Trạng thái chuyến',
                    child: Stepper(
                      controlsBuilder: (context, details) {
                        return Row(
                          children: const [
                            SizedBox(),
                          ],
                        );
                      },
                      steps: steps(successState.order.status),
                      physics: const BouncingScrollPhysics(),
                      type: StepperType.vertical,
                      currentStep: successState.order.status.step,
                    ),
                  ),
                ),
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
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  DateFormat('HH:mm E, dd/MM/yyyy').format(
                                    successState.order.startTime,
                                  ),
                                  style: const TextStyle(
                                    fontSize: 12,
                                  ),
                                ),
                                Text(
                                  DateFormat('HH:mm E, dd/MM/yyyy').format(
                                    successState.order.endTime,
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
                              if (successState.order.orderDetail?.car != null)
                                Row(
                                  children: [
                                    const Text(
                                      'Thời gian nhận xe',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${formatTimeOfDay(successState.order.orderDetail!.car.receiveStartTime)}-${formatTimeOfDay(successState.order.orderDetail!.car.receiveEndTime)}',
                                      style: const TextStyle(fontSize: 12),
                                    ),
                                  ],
                                ),
                              const SizedBox(
                                height: s04,
                              ),
                              if (successState.order.orderDetail?.car != null)
                                Row(
                                  children: [
                                    const Text(
                                      'Thời gian trả xe',
                                      style: TextStyle(fontSize: 12),
                                    ),
                                    const Spacer(),
                                    Text(
                                      '${formatTimeOfDay(successState.order.orderDetail!.car.returnStartTime)}-${formatTimeOfDay(successState.order.orderDetail!.car.returnEndTime)}',
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
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Icon(
                              Icons.location_on_outlined,
                              size: 20,
                            ),
                            const SizedBox(width: 2),
                            SizedBox(
                              width: context.width() * 0.8,
                              child: LocationText(
                                longitude: successState.order.orderDetail
                                        ?.deliveryLocation?.longitude ??
                                    successState.order.orderDetail
                                        ?.pickupLocation?.longitude ??
                                    0,
                                latitude: successState.order.orderDetail
                                        ?.deliveryLocation?.latitude ??
                                    successState.order.orderDetail
                                        ?.pickupLocation?.latitude ??
                                    0,
                                style: const TextStyle(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: CustomColors.jetBlack,
                                ),
                              ),
                              // child: Text(
                              //   successState.order.address,
                              //   style: const TextStyle(
                              //     fontSize: 13,
                              //     fontWeight: FontWeight.w500,
                              //     color: CustomColors.jetBlack,
                              //   ),
                              // ),
                            ),
                          ],
                        ),
                        GoogleMapWidget(
                          latitude: successState.order.orderDetail
                                  ?.deliveryLocation?.latitude ??
                              successState.order.orderDetail?.pickupLocation
                                  ?.latitude ??
                              0,
                          longitude: successState.order.orderDetail
                                  ?.deliveryLocation?.longitude ??
                              successState.order.orderDetail?.pickupLocation
                                  ?.longitude ??
                              0,
                        ),
                      ],
                    ),
                  ),
                ),
                if (successState.order.status != OrderStatus.pending ||
                    successState.order.status != OrderStatus.rejected ||
                    successState.order.status != OrderStatus.cancelled)
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Thông tin liên hệ',
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  const Text(
                                    'Số điện thoại',
                                    style: TextStyle(
                                      fontSize: 12,
                                      fontWeight: FontWeight.w500,
                                      color: CustomColors.jetBlack,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    successState.order.orderDetail?.car.carOwner
                                            ?.id ??
                                        '',
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.w500,
                                      color: CustomColors.jetBlack,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                if (successState.driver != null)
                  Column(
                    children: [
                      divider,
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: s16),
                        child: ContainerWithLabel(
                          label: 'Tài xế',
                          child: DriverWidget(
                            driver: successState.driver!,
                            onTap: (driver) {
                              context.pushNamed(
                                RouteName.driverDetail,
                                queryParams: {
                                  'driver-id': driver.id,
                                },
                              );
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Giới hạn số KM',
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '${successState.order.orderDetail?.car.additionalCharge.maximumDistance} km/ngày',
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: s04,
                        ),
                        Text(
                          'Phí: ${formatCurrency(successState.order.orderDetail?.car.additionalCharge.distanceSurcharge ?? 0)}/km vượt qua giới hạn',
                          style: const TextStyle(fontSize: 12),
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
                if (successState.order.orderDetail != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: s16),
                    child: ContainerWithLabel(
                      label: 'Chủ xe',
                      child: CarOwnerWidget(
                        car: successState.order.orderDetail!.car,
                        onTap: () {
                          context.pushNamed(
                            RouteName.carOwnerDetail,
                            queryParams: {
                              'car-owner-id': successState
                                  .order.orderDetail!.car.carOwner!.id,
                            },
                          );
                        },
                      ),
                    ),
                  ),
                divider,
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: s16),
                  child: ContainerWithLabel(
                    label: 'Lời nhắn đến chủ xe',
                    child: TextField(
                      controller: textarea,
                      keyboardType: TextInputType.multiline,
                      readOnly: true,
                      maxLines: 4,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
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
                              '${formatCurrency(successState.order.rentalUnitPrice)}/ngày',
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
                              '${formatCurrency(successState.order.rentalUnitPrice)} x ${calculateDays(
                                successState.order.startTime,
                                successState.order.endTime,
                              )} ngày',
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                        if (carDeliveryCost > 0)
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
                        Container(
                          margin: const EdgeInsets.only(top: s08),
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
                                    'Tiền cọc',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    formatCurrency(deposit),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              if (successState.order.status !=
                                      OrderStatus.cancelled &&
                                  successState.order.status !=
                                      OrderStatus.rejected)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: s02,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Đã thanh toán tiền cọc',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColors.dimGray,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              const SizedBox(
                                height: s08,
                              ),
                              Row(
                                children: [
                                  const Text(
                                    'Thanh toán cho chủ xe khi nhận xe',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    formatCurrency(remaining),
                                    style: const TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold,
                                      color: CustomColors.flamingo,
                                    ),
                                  ),
                                ],
                              ),
                              if (successState.order.status.step > 0 &&
                                  successState.order.status !=
                                      OrderStatus.rejected &&
                                  successState.order.status !=
                                      OrderStatus.cancelled)
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const SizedBox(
                                      height: s02,
                                    ),
                                    Row(
                                      children: const [
                                        Text(
                                          'Đã thanh toán',
                                          style: TextStyle(
                                            fontSize: 11,
                                            fontWeight: FontWeight.bold,
                                            color: CustomColors.dimGray,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                divider,
                cancellationPolicy(),
                const SizedBox(
                  height: s32,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(s08),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            padding: const EdgeInsets.symmetric(vertical: s12),
                            backgroundColor: CustomColors.tomato,
                          ),
                          onPressed: () {},
                          child: const Text(
                            'Huỷ chuyến',
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
                const SizedBox(
                  height: s32,
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  Padding cancellationPolicy() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: s16),
      child: ContainerWithLabel(
        label: 'Chính sách hủy chuyến',
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Table(
              border: TableBorder.all(
                color: CustomColors.silver,
              ),
              children: const [
                TableRow(
                  children: [
                    TableItem(
                      child: Text(
                        'Thời gian hủy',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TableItem(
                      child: Text(
                        'Phí hủy',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    TableItem(
                      child: Text(
                        'Tiền cọc hoàn trả',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableItem(
                      child: Text(
                        'Trong vòng 1 giờ sau đặt cọc',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    TableItem(
                      child: Text(
                        '0% tiền cọc',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    TableItem(
                      child: Text(
                        '100% tiền cọc',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableItem(
                      child: Text(
                        '> 7 ngày trước ngày đi',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    TableItem(
                      child: Text(
                        '30% tiển cọc',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    TableItem(
                      child: Text(
                        '70% tiền cọc',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    TableItem(
                      child: Text(
                        '<= 7 ngày trước ngày đi',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    TableItem(
                      child: Text(
                        '100% tiển cọc',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                    TableItem(
                      child: Text(
                        '0% tiển cọc',
                        style: TextStyle(
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(
              height: s08,
            ),
            const Text(
              'Tiền cọc sẽ được hoàn trả trong vòng 3 ngày làm việc',
              style: TextStyle(
                fontSize: 12,
                color: CustomColors.dimGray,
              ),
            ),
          ],
        ),
      ),
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
                car.name ?? '',
                style: boldTextStyle(size: 18),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget carImage(BuildContext context, Car car) {
    if (car.images.isEmpty) {
      return Image.asset(
        Images.carExample,
        width: double.infinity,
        fit: BoxFit.fill,
        alignment: Alignment.topCenter,
      );
    }
    return Stack(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.width * 0.65,
          child: PageView.builder(
            controller: pageController,
            itemCount: car.images.length,
            itemBuilder: (context, index) => Container(
              padding: const EdgeInsets.all(s08),
              alignment: Alignment.center,
              child: CachedNetworkImage(
                  width: double.infinity,
                  imageUrl: car.images[index].url,
                  fit: BoxFit.fill,
                  errorWidget: (context, url, error) {
                    return const Icon(Icons.error);
                  }),
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
              count: car.images.length,
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