import 'dart:async';

import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/colors.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/constants/theme.dart';
import 'package:car_rental_for_customer/commons/loading_dialog_service.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/input_decoration.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/models/enums/gender.dart';
import 'package:car_rental_for_customer/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class SignUpView extends StatefulWidget {
  const SignUpView({Key? key}) : super(key: key);

  @override
  State<SignUpView> createState() => _SignUpViewState();
}

class _SignUpViewState extends State<SignUpView> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController? _emailController;
  TextEditingController? _passwordController;
  TextEditingController? _nameController;
  TextEditingController? _dateOfBirthController;
  TextEditingController? _phoneNumberController;
  TextEditingController? _confirmPasswordController;
  TextEditingController? _addressController;

  FocusNode focusEmail = FocusNode();
  FocusNode focusPassword = FocusNode();
  FocusNode focusName = FocusNode();
  FocusNode focusDateOfBirth = FocusNode();
  FocusNode focusPhoneNumber = FocusNode();
  FocusNode focusConfirmPassword = FocusNode();
  FocusNode focusAddress = FocusNode();

  bool isIconTrue = true;
  DateTime? selectedDate;
  Gender _gender = Gender.male;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
    _dateOfBirthController = TextEditingController();
    _phoneNumberController = TextEditingController();
    _confirmPasswordController = TextEditingController();
    _addressController = TextEditingController();

    super.initState();
  }

  @override
  void dispose() {
    _emailController?.dispose();
    _passwordController?.dispose();
    _nameController?.dispose();
    _dateOfBirthController?.dispose();
    _phoneNumberController?.dispose();
    _confirmPasswordController?.dispose();
    _addressController?.dispose();

    focusDateOfBirth.dispose();
    focusEmail.dispose();
    focusName.dispose();
    focusPassword.dispose();
    focusPhoneNumber.dispose();
    focusConfirmPassword.dispose();
    focusAddress.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // resizeToAvoidBottomInset: false,
      appBar: appAppBar(context),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.all(16),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Image(
                  height: 130,
                  width: 130,
                  fit: BoxFit.fitWidth,
                  image: AssetImage(Images.car),
                ),
                const SizedBox(height: s16),
                Text('T???o t??i kho???n c???a b???n', style: boldTextStyle(size: 24)),
                const SizedBox(height: s40),
                TextFormField(
                  autofocus: false,
                  validator: (value) {
                    // if (!value!.contains('@') || !value.endsWith(".com")) {
                    //   return 'Please enter the correct email';
                    // }
                    return null;
                  },
                  focusNode: focusEmail,
                  autofillHints: const [AutofillHints.email],
                  onFieldSubmitted: (v) {
                    focusEmail.unfocus();
                    FocusScope.of(context).requestFocus(focusPassword);
                  },
                  controller: _emailController,
                  decoration: inputDecoration(
                    context,
                    prefixIcon: Icons.mail_rounded,
                    hintText: 'T??n ????ng nh???p',
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autofocus: false,
                  focusNode: focusPassword,
                  controller: _passwordController,
                  obscureText: isIconTrue,
                  validator: (value) {
                    return passwordValidator(value);
                  },
                  onFieldSubmitted: (v) {
                    focusPassword.unfocus();
                    FocusScope.of(context).requestFocus(focusConfirmPassword);
                  },
                  decoration: inputDecoration(
                    context,
                    prefixIcon: Icons.lock,
                    hintText: 'M???t kh???u',
                    suffixIcon: Theme(
                      data: ThemeData(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                      ),
                      child: IconButton(
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            isIconTrue = !isIconTrue;
                          });
                        },
                        icon: Icon(
                          (isIconTrue)
                              ? Icons.visibility_rounded
                              : Icons.visibility_off,
                          size: 16,
                          color: gray,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                TextFormField(
                  autofocus: false,
                  focusNode: focusConfirmPassword,
                  controller: _confirmPasswordController,
                  obscureText: isIconTrue,
                  validator: (value) {
                    if (value != _passwordController?.text) {
                      return 'M???t kh???u kh??ng kh???p';
                    }
                    return null;
                  },
                  onFieldSubmitted: (v) {
                    focusConfirmPassword.unfocus();
                    FocusScope.of(context).requestFocus(focusName);
                  },
                  decoration: inputDecoration(
                    context,
                    prefixIcon: Icons.lock,
                    hintText: 'Nh???p l???i m???t kh???u',
                    suffixIcon: Theme(
                      data: ThemeData(
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent),
                      child: IconButton(
                        highlightColor: Colors.transparent,
                        onPressed: () {
                          setState(() {
                            isIconTrue = !isIconTrue;
                          });
                        },
                        icon: Icon(
                          (isIconTrue)
                              ? Icons.visibility_rounded
                              : Icons.visibility_off,
                          size: 16,
                          color: gray,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: s16),
                TextFormField(
                  controller: _nameController,
                  focusNode: focusName,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Nh???p t??n c???a b???n';
                    }
                    return null;
                  },
                  onFieldSubmitted: (v) {
                    focusName.unfocus();
                    FocusScope.of(context).requestFocus(focusPhoneNumber);
                  },
                  decoration: inputDecoration(
                    context,
                    hintText: 'T??n c???a b???n',
                    prefixIcon: Icons.person,
                  ),
                ),
                // const SizedBox(height: s16),
                // TextFormField(
                //   controller: _dateOfBirthController,
                //   focusNode: focusDateOfBirth,
                //   readOnly: true,
                //   onTap: () {
                //     selectDateAndTime(context);
                //   },
                //   onFieldSubmitted: (v) {
                //     focusDateOfBirth.unfocus();
                //     FocusScope.of(context).requestFocus(focusPhoneNumber);
                //   },
                //   decoration: inputDecoration(
                //     context,
                //     hintText: "Date of Birth",
                //     prefixIcon: Icons.date_range_rounded,
                //   ),
                // ),
                const SizedBox(height: s16),
                TextFormField(
                  controller: _phoneNumberController,
                  focusNode: focusPhoneNumber,
                  validator: (value) {
                    if (int.tryParse(value!) == null) {
                      return 'Xin nh???p s??? ??i???n tho???i';
                    }
                    return null;
                  },
                  onFieldSubmitted: (v) {
                    focusPhoneNumber.unfocus();
                    FocusScope.of(context).requestFocus(focusAddress);
                  },
                  keyboardType: TextInputType.number,
                  decoration: inputDecoration(
                    context,
                    hintText: 'S??? ??i???n tho???i',
                    prefixIcon: Icons.phone,
                  ),
                ),

                const SizedBox(height: s16),
                TextFormField(
                  controller: _addressController,
                  focusNode: focusAddress,
                  validator: (value) {
                    return null;
                  },
                  onFieldSubmitted: (v) {
                    focusAddress.unfocus();
                  },
                  decoration: inputDecoration(
                    context,
                    hintText: '?????a ch???',
                    prefixIcon: Icons.person,
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
                  padding: const EdgeInsets.fromLTRB(8.0, 0, 8.0, 0),
                  child: DropdownButton<Gender>(
                    value: _gender,
                    elevation: 16,
                    style: primaryTextStyle(),
                    hint: Text('Gi???i t??nh', style: primaryTextStyle()),
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
                        .map<DropdownMenuItem<Gender>>((Gender value) {
                      return DropdownMenuItem<Gender>(
                        value: value,
                        child: Text(value.getDisplayName()),
                      );
                    }).toList(),
                  ),
                ),
                const SizedBox(height: s32),
                GestureDetector(
                  onTap: () => submit(),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    padding: const EdgeInsets.symmetric(vertical: s16),
                    alignment: Alignment.center,
                    decoration: boxDecorationWithRoundedCorners(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(s40)),
                      backgroundColor: black,
                    ),
                    child: Text('????ng k??', style: boldTextStyle(color: white)),
                  ),
                ),
                const SizedBox(height: s16),
                TextButton(
                  onPressed: () {
                    context.goNamed(RouteName.login);
                  },
                  child: Text.rich(
                    TextSpan(
                      text: '???? c?? t??i kho???n? ',
                      style: secondaryTextStyle(),
                      children: [
                        TextSpan(text: '????ng nh???p', style: boldTextStyle()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void selectDateAndTime(BuildContext context) async {
    await showDatePicker(
      context: context,
      initialDate: selectedDate ?? DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(3000),
      builder: (_, child) {
        return Theme(
          data: lightTheme,
          child: child!,
        );
      },
    ).then((date) async {
      if (date != null) {
        selectedDate = date;
        _dateOfBirthController?.text = formatDate(selectedDate.toString());
      }
    }).catchError((e) {
      toast(e.toString());
    });
  }

  FutureOr<void> submit() async {
    if (_formKey.currentState!.validate()) {
      LoadingDialogService.load();
      var result = await getIt.get<AuthenticationRepository>().signUp(
            username: _emailController?.text ?? '',
            password: _passwordController?.text ?? '',
            name: _nameController?.text ?? '',
            phone: _phoneNumberController?.text ?? '',
            gender: _gender,
            address: _addressController?.text ?? '',
          );

      LoadingDialogService.dispose();

      if (result is ApiError) {
        var message = (result as ApiError).error;
        showMessageDialog(message: message);
      }
    }
  }
}
