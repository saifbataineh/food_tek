import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/services/app_navigator_service.dart';
import 'package:food_tek/core/services/toast_message_service.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/core/widgets/custom_form_field.dart';
import 'package:food_tek/features/authintication/login/data/model/login_model.dart';
import 'package:food_tek/features/authintication/login/presentation/cubit/login_cubit.dart';
import 'package:food_tek/features/authintication/views/widgets/check_box_with_text_widget.dart';
import 'package:food_tek/generated/l10n.dart';
import 'package:food_tek/core/extensions/string_extension.dart';

class LoginFormWidget extends StatelessWidget {
  LoginFormWidget({super.key});
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: AutofillGroup(
        child: Column(
          spacing: responsiveHeight(context, 16),
          children: [
            CustomFormField(
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return S.of(context).cantBeEmpty;
                }
                if (!value.isValidEmail()) {
                  return S.of(context).mustBeValidEmail;
                }
                return null;
              },
              keyboardType: TextInputType.emailAddress,
              controller: emailController,
              label: S.of(context).email,
              autofillHints: [AutofillHints.email],
              hintText: 'example@example.com',
            ),
            CustomFormField(
              errorMaxLines: 3,
              validator: (value) {
                if (value.isNullOrEmpty()) {
                  return S.of(context).cantBeEmpty;
                }
                if (!value.isStrongPassword()) {
                  return S.of(context).mustBeStrongPassword;
                }
                return null;
              },
              autofillHints: [AutofillHints.password],
              controller: passwordController,
              isPassword: true,
              label: S.of(context).password,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CheckBoxWithTextWidget(
                  text: S.of(context).rememberme,
                ),
                TextButton(
                  onPressed: () {
                    AppNavigatorService.pushNamed(context,
                        routeName: Routes.forgetPassPage);
                  },
                  child: Text(
                    S.of(context).forgetpassword,
                    style: Theme.of(context)
                        .textTheme
                        .headlineSmall!
                        .copyWith(color: AppColors.mainColor),
                  ),
                ),
              ],
            ),
            SizedBox(
              width: double.infinity,
              child: BlocConsumer<LoginCubit, LoginState>(
                listener: (context, state) {
                  if (state is LoginStateSuccess) {
                    AppNavigatorService.pushAndRemoveUntil(context,
                        routeName: AppNavigatorService.pushAndRemoveUntil(
                            context,
                            routeName: Routes.navigationPage,
                            arguments: 0));
                  }
                  if (state is LoginStateError) {
                  ToastMessageService.showErrorMessage(state.message);
                  }
                },
                builder: (context, state) => ElevatedButton(
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      context.read<LoginCubit>().login(
                          loginModel: LoginModel(
                              email: emailController.text,
                              password: passwordController.text));
                      // await SharedPrefHelper.setRememberMe();
                    }
                  },
                  child: state is LoginStateLoading
                      ? CircularProgressIndicator()
                      : Text(S.of(context).login),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
