import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/models/enums/car_type.dart';
import 'package:car_rental_for_customer/pages/car_search_result/bloc/car_search_result_bloc.dart';
import 'package:car_rental_for_customer/pages/car_search_result/models/car_search_filter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CarTypeWidget extends StatefulWidget {
  const CarTypeWidget({
    Key? key,
    required this.bloc,
  }) : super(key: key);

  final CarSearchResultBloc bloc;

  @override
  State<CarTypeWidget> createState() => _CarTypeWidgetState();
}

class _CarTypeWidgetState extends State<CarTypeWidget> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: widget.bloc,
      child: BlocBuilder<CarSearchResultBloc, CarSearchResultState>(
        builder: (context, state) {
          final filter =
              state.mapOrNull(success: (state) => state.carSearchFilter);
          if (filter == null) return const SizedBox();

          final carTypes = filter.carTypes;

          return Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: s08),
              const Center(
                child: Text(
                  'Loại xe',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.all(s08),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        carType(
                          imageUrl: 'assets/mf-4-mini.png',
                          title: '4 Chỗ\n(Mini)',
                          carType: CarType.mini,
                          selected: carTypes.contains(CarType.mini),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        carType(
                          imageUrl: 'assets/mf-4-sedan.png',
                          title: '4 Chỗ\n(Sedan)',
                          carType: CarType.sedan,
                          selected: carTypes.contains(CarType.sedan),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        carType(
                          imageUrl: 'assets/mf-4-hatchback.png',
                          title: '4 Chỗ\n(Hatchback)',
                          carType: CarType.hatchback,
                          selected: carTypes.contains(CarType.hatchback),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        carType(
                          imageUrl: 'assets/mf-5-suv.png',
                          title: '5 chỗ\n(Gầm cao)',
                          carType: CarType.suv,
                          selected: carTypes.contains(CarType.suv),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        carType(
                          imageUrl: 'assets/mf-7-suv.png',
                          title: '7 Chỗ\n(Gầm cao)',
                          carType: CarType.midsizeSub,
                          selected: carTypes.contains(CarType.midsizeSub),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        carType(
                          imageUrl: 'assets/mf-7-mpv.png',
                          title: '7 Chỗ\n(Gầm thấp)',
                          carType: CarType.minivan,
                          selected: carTypes.contains(CarType.minivan),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        carType(
                          imageUrl: 'assets/mf-pickup.png',
                          title: 'Bán tải',
                          carType: CarType.pickup,
                          selected: carTypes.contains(CarType.pickup),
                          onTap: (type, selected) => _handleCarTypeTap(
                            type,
                            context,
                            filter,
                            selected,
                          ),
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                        const SizedBox(
                          width: 70,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            padding: const EdgeInsets.all(s04),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100.0),
                              color: CustomColors.gainsboro,
                              border: Border.all(
                                color: CustomColors.white,
                              ),
                            ),
                            child: const Icon(Icons.close),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  void _handleCarTypeTap(
    CarType type,
    BuildContext context,
    CarSearchFilter filter,
    bool selected,
  ) {
    final carTypes = <CarType>[];
    if (!selected) {
      carTypes.addAll(filter.carTypes);
      carTypes.remove(type);
    } else {
      carTypes.addAll(filter.carTypes);
      carTypes.add(type);
    }

    context.read<CarSearchResultBloc>().add(
          CarSearchResultEvent.carTypeFilterChanged(
            carTypes: carTypes,
          ),
        );
  }

  Widget carType({
    required String imageUrl,
    required String title,
    required CarType carType,
    required bool selected,
    required Function(CarType type, bool selected) onTap,
  }) {
    return GestureDetector(
      onTap: () => onTap(carType, !selected),
      child: Container(
        margin: const EdgeInsets.all(s04),
        child: Column(
          children: [
            Container(
                width: 70,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(100.0),
                  color: selected ? Colors.transparent : CustomColors.gainsboro,
                  border: Border.all(
                    color: selected ? CustomColors.black : CustomColors.white,
                  ),
                ),
                child: Center(
                  child: Image.asset(
                    imageUrl,
                    width: 50,
                    height: 50,
                  ),
                )),
            const SizedBox(height: s08),
            Text(
              title,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            )
          ],
        ),
      ),
    );
  }
}
