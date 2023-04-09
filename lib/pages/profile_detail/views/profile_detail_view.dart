import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/input_decoration.dart';
import 'package:car_rental_for_customer/models/enums/gender.dart';
import 'package:car_rental_for_customer/pages/profile_detail/bloc/profile_detail_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nb_utils/nb_utils.dart';

class ProfileDetailView extends StatefulWidget {
  const ProfileDetailView({Key? key}) : super(key: key);

  @override
  State<ProfileDetailView> createState() => _ProfileDetailViewState();
}

class _ProfileDetailViewState extends State<ProfileDetailView> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneNumberController = TextEditingController();
  final TextEditingController _addressController = TextEditingController();

  final FocusNode _nameFocus = FocusNode();
  final FocusNode _phoneNumberFocus = FocusNode();
  final FocusNode _addressFocus = FocusNode();

  Gender _gender = Gender.male;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _nameController.dispose();
    _phoneNumberController.dispose();
    _addressController.dispose();

    _nameFocus.dispose();
    _phoneNumberFocus.dispose();
    _addressFocus.dispose();
    super.dispose();
  }

  void unfocus() {
    _nameFocus.unfocus();
    _phoneNumberFocus.unfocus();
    _addressFocus.unfocus();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        return true;
      },
      child: Scaffold(
        appBar: appAppBar(
          context,
          titleText: 'Hồ sơ của bạn',
        ),
        body: SingleChildScrollView(
          child: BlocConsumer<ProfileDetailBloc, ProfileDetailState>(
            listener: (context, state) {
              _nameController.text = state.user?.name ?? '';
              _phoneNumberController.text = state.user?.phone ?? '';
              _addressController.text = state.user?.address ?? '';
              _gender = state.user?.gender ?? Gender.male;
            },
            builder: (context, state) {
              var user = state.user;
              return Container(
                padding: const EdgeInsets.all(s16),
                alignment: Alignment.center,
                child: user == null
                    ? const SizedBox()
                    : Form(
                        key: _formKey,
                        autovalidateMode: AutovalidateMode.onUserInteraction,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                GestureDetector(
                                  onTap: () async {
                                    // if (UserImage != null) {
                                    //   imagePath = UserImage;
                                    // }
                                    // try {
                                    //   await pr_ob.pickImage();
                                    //   imagePath = pr_ob.pickedFile!.path;
                                    // } catch (e) {
                                    //   print(e);
                                    // }
                                    //TODO: pick image
                                  },
                                  // child: (pr_ob.pickedFile != null)
                                  //     ? Image.file(
                                  //   File(pr_ob.pickedFile!.path),
                                  //   width: 100,
                                  //   height: 100,
                                  //   fit: BoxFit.cover,
                                  // ).cornerRadiusWithClipRRect(60)
                                  //     : Image.asset(
                                  //   Images.userImage,
                                  //   fit: BoxFit.cover,
                                  //   height: 100,
                                  //   width: 100,
                                  // ).cornerRadiusWithClipRRect(60),
                                  child: Image.asset(
                                    Images.userImage,
                                    fit: BoxFit.cover,
                                    height: 100,
                                    width: 100,
                                  ).cornerRadiusWithClipRRect(60),
                                ),
                                Positioned(
                                  right: 0,
                                  bottom: 8,
                                  child: GestureDetector(
                                    onTap: () async {
                                      // if (UserImage != null) {
                                      //   imagePath = UserImage;
                                      // }
                                      // try {
                                      //   await pr_ob.pickImage();
                                      //   imagePath = pr_ob.pickedFile!.path;
                                      // } catch (e) {
                                      //   print(e);
                                      // }

                                      //TODO: pick image
                                    },
                                    child: Container(
                                      alignment: Alignment.center,
                                      padding: const EdgeInsets.all(s04),
                                      decoration: BoxDecoration(
                                        color: Colors.black,
                                        border: Border.all(
                                          color: Colors.black.withOpacity(0.1),
                                        ),
                                        borderRadius:
                                            BorderRadius.circular(s08),
                                      ),
                                      child: const Icon(
                                        Icons.edit,
                                        color: white,
                                        size: s16,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: s32),
                            TextFormField(
                              controller: _nameController,
                              focusNode: _nameFocus,
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Xin vui lòng nhập tên đầy đủ';
                                }
                                return null;
                              },
                              onFieldSubmitted: (v) {
                                _nameFocus.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(_phoneNumberFocus);
                              },
                              decoration: inputDecoration(
                                context,
                                hintText: 'Tên đầy đủ',
                              ),
                            ),
                            const SizedBox(height: s16),
                            TextFormField(
                              controller: _phoneNumberController,
                              focusNode: _phoneNumberFocus,
                              validator: (value) {
                                if (int.tryParse(value!) == null) {
                                  return 'Xin vui lòng nhập số điện thoại';
                                }
                                return null;
                              },
                              onFieldSubmitted: (v) {
                                _phoneNumberFocus.unfocus();
                                FocusScope.of(context)
                                    .requestFocus(_addressFocus);
                              },
                              keyboardType: TextInputType.number,
                              decoration: inputDecoration(
                                context,
                                hintText: 'Số ring thoại',
                              ),
                            ),
                            const SizedBox(height: s16),
                            TextFormField(
                              controller: _addressController,
                              focusNode: _addressFocus,
                              onFieldSubmitted: (v) {
                                _addressFocus.unfocus();
                              },
                              keyboardType: TextInputType.text,
                              decoration: inputDecoration(
                                context,
                                hintText: 'Địa chỉ',
                              ),
                            ),
                            const SizedBox(height: s16),
                            Container(
                              decoration: boxDecorationWithRoundedCorners(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(defaultRadius),
                                ),
                                backgroundColor: CustomColors.editTextBgColor,
                              ),
                              padding:
                                  const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                              child: DropdownButton<Gender>(
                                value: _gender,
                                elevation: 16,
                                style: primaryTextStyle(),
                                hint: Text(
                                  'Giới tính',
                                  style: primaryTextStyle(),
                                ),
                                isExpanded: true,
                                underline: Container(
                                  height: 0,
                                  color: Colors.deepPurpleAccent,
                                ),
                                onChanged: (newValue) {
                                  if (newValue == null) return;
                                  setState(() {
                                    _gender = newValue;
                                  });
                                },
                                items: Gender.values
                                    .map<DropdownMenuItem<Gender>>(
                                        (Gender value) {
                                  return DropdownMenuItem<Gender>(
                                    value: value,
                                    child: Text(value.getDisplayName()),
                                  );
                                }).toList(),
                              ),
                            ),
                            const SizedBox(height: s32),
                            GestureDetector(
                              onTap: () {
                                unfocus();
                                var name = _nameController.text;
                                var phone = _phoneNumberController.text;
                                var address = _addressController.text;
                                var gender = _gender;

                                context.read<ProfileDetailBloc>().add(
                                      ProfileDetailEvent.saved(
                                        name: name,
                                        phone: phone,
                                        address: address,
                                        gender: gender,
                                      ),
                                    );
                              },
                              child: Container(
                                alignment: Alignment.center,
                                padding:
                                    const EdgeInsets.symmetric(vertical: s16),
                                decoration: BoxDecoration(
                                  color: Colors.black,
                                  borderRadius: BorderRadius.circular(45),
                                ),
                                child: Text(
                                  'Lưu',
                                  style: boldTextStyle(color: white),
                                ),
                              ),
                            ),
                            const SizedBox(height: s08),
                          ],
                        ),
                      ),
              );
            },
          ),
        ),
      ),
    );
  }
}
