import 'dart:async';

import 'package:car_rental_for_customer/app/route/route_name.dart';
import 'package:car_rental_for_customer/commons/constants/images.dart';
import 'package:car_rental_for_customer/commons/constants/sizes.dart';
import 'package:car_rental_for_customer/commons/utils.dart';
import 'package:car_rental_for_customer/commons/widgets/app_app_bar.dart';
import 'package:car_rental_for_customer/commons/widgets/input_decoration.dart';
import 'package:car_rental_for_customer/commons/widgets/message_dialog.dart';
import 'package:car_rental_for_customer/di.dart';
import 'package:car_rental_for_customer/models/api_response.dart';
import 'package:car_rental_for_customer/repositories/authentication_repository.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nb_utils/nb_utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController? _emailController;
  TextEditingController? _passwordController;

  bool isIconTrue = true;
  bool isChecked = false;

  FocusNode f1 = FocusNode();
  FocusNode f2 = FocusNode();

  final _formKey = GlobalKey<FormState>();

  bool? checkBoxValue = false;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController?.dispose();
    _passwordController?.dispose();
    f1.dispose();
    f2.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        FocusScope.of(context).unfocus();
        return true;
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: appAppBar(context, leading: false),
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
                  Text(
                    'Login to Your Account',
                    style: boldTextStyle(
                      size: 24,
                    ),
                  ),
                  const SizedBox(height: s16),
                  TextFormField(
                    focusNode: f1,
                    onFieldSubmitted: (v) {
                      f1.unfocus();
                      FocusScope.of(context).requestFocus(f2);
                    },
                    validator: (k) {
                      // if (!k!.contains('@')) {
                      //   return 'Please enter the correct email';
                      // }
                      return null;
                    },
                    controller: _emailController,
                    decoration: inputDecoration(
                      context,
                      prefixIcon: Icons.mail_rounded,
                      hintText: "Username",
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _passwordController,
                    obscureText: isIconTrue,
                    focusNode: f2,
                    validator: (value) {
                      return passwordValidator(value);
                    },
                    onFieldSubmitted: (v) {
                      f2.unfocus();
                      submit();
                    },
                    decoration: inputDecoration(
                      context,
                      prefixIcon: Icons.lock,
                      hintText: "Password",
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
                  const SizedBox(height: s64),
                  GestureDetector(
                    onTap: () {
                      submit();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      decoration: boxDecorationWithRoundedCorners(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(45)),
                        backgroundColor: black,
                      ),
                      child: Text('Login', style: boldTextStyle(color: white)),
                    ),
                  ),
                  // const SizedBox(height: 10),
                  // TextButton(
                  //   onPressed: () {},
                  //   child:
                  //       Text('Forgot the password ?', style: boldTextStyle()),
                  // ),
                  const SizedBox(height: 8),
                  TextButton(
                    onPressed: () {
                      context.goNamed(RouteName.signUp);
                    },
                    child: Text.rich(
                      TextSpan(
                        text: "Already have an account? ",
                        style: secondaryTextStyle(),
                        children: [
                          TextSpan(
                            text: 'Sign up',
                            style: boldTextStyle(size: 14),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  FutureOr<void> submit() async {
    if (_formKey.currentState!.validate()) {
      var result = await getIt.get<AuthenticationRepository>().login(
            _emailController?.text ?? '',
            _passwordController?.text ?? '',
          );

      if (result is ApiError) {
        var message = (result as ApiError).error;
        showMessageDialog('Alert', message ?? "");
      }
    }
  }
}
