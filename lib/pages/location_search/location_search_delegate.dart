import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/pages/location_search/bloc/location_search_bloc.dart';
import 'package:car_rental_for_customer/pages/location_search/search_result.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class LocationSearchDelegate extends SearchDelegate {
  LocationSearchDelegate() {
    bloc = LocationSearchBloc();
  }
  late final LocationSearchBloc bloc;

  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        icon: const Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  String? get searchFieldLabel => "Nhập địa chỉ";

  @override
  TextStyle? get searchFieldStyle => const TextStyle(fontSize: 16);

  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(Icons.arrow_back, color: context.iconColor),
      onPressed: () {
        close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return BlocProvider.value(
      value: bloc,
      child: const SearchResult(),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    bloc.add(LocationSearchEvent.locationChanged(query));
    if (query.isEmpty) {
      return Column(
        children: [
          ListTile(
            title: const Text(
              "Vị trí hiện tại",
              style: TextStyle(fontSize: 14),
            ),
            leading: const Icon(Icons.location_on_outlined),
            minLeadingWidth: s12,
            onTap: () {
              //TODO: get current location
            },
          ),
          const Divider(),
          ListTile(
            title: const Text(
              "Địa chỉ của tôi",
              style: TextStyle(fontSize: 14),
            ),
            leading: const Icon(Icons.bookmark_outline),
            minLeadingWidth: s12,
            onTap: () {
              //TODO: get address of user
            },
          ),
        ],
      );
    }

    return BlocProvider.value(
      value: bloc,
      child: const SearchResult(),
    );
  }
}
