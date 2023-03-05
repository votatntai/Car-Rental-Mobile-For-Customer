import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/pages/location_search/bloc/location_search_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchResult extends StatelessWidget {
  const SearchResult({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LocationSearchBloc, LocationSearchState>(
      builder: (context, state) {
        if (state.query == null || state.query!.isEmpty) {
          return Column(
            children: [
              ListTile(
                title: const Text(
                  'Vị trí hiện tại',
                  style: TextStyle(fontSize: 14),
                ),
                leading: const Icon(Icons.location_on_outlined),
                minLeadingWidth: s12,
                onTap: () {
                  context.read<LocationSearchBloc>().add(
                        const LocationSearchEvent.currentLocationSelected(),
                      );
                },
              ),
              const Divider(),
              ListTile(
                title: const Text(
                  'Địa chỉ của tôi',
                  style: TextStyle(fontSize: 14),
                ),
                leading: const Icon(Icons.bookmark_outline),
                minLeadingWidth: s12,
                onTap: () {
                  context.read<LocationSearchBloc>().add(
                        const LocationSearchEvent.myAddressSelected(),
                      );
                },
              ),
            ],
          );
        }
        return Center(
          child: Text(state.query ?? ''),
        );
      },
    );
  }
}
