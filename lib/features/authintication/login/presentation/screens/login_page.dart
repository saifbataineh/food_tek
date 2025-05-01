import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:food_tek/core/constants/app_colors.dart';
import 'package:food_tek/core/constants/app_image_strings.dart';
import 'package:food_tek/core/routes/routes.dart';
import 'package:food_tek/core/utils/responsive_height_width.dart';
import 'package:food_tek/features/authintication/login/data/data_source/login_data_source.dart';
import 'package:food_tek/features/authintication/login/data/repositories/login_repository_imp.dart';
import 'package:food_tek/features/authintication/login/domain/use_cases/login_use_case.dart';
import 'package:food_tek/features/authintication/login/presentation/cubit/login_cubit.dart';
import 'package:food_tek/features/authintication/views/widgets/auth_heading_widget.dart';
import 'package:food_tek/features/authintication/views/widgets/continue_with_widget.dart';
import 'package:food_tek/features/authintication/login/presentation/screens/widgets/login_form_widget.dart';
import 'package:food_tek/generated/l10n.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(
          loginUseCase: LoginUseCase(
              repository: LoginRepositoryImp(
                  postRemoteDataSource: PostRemoteDataSource()))),
      child: Scaffold(
        backgroundColor: AppColors.mainColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(AppImageStrings.splashBackground),
                ),
              ),
              child: Column(
                spacing: responsiveHeight(context, 42),
                children: [
                  Image(
                    image: AssetImage(AppImageStrings.appLogo),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: Theme.of(context).cardColor,
                    ),
                    width: responsiveWidth(context, 343),
                    padding: EdgeInsets.all(
                      responsiveHeight(context, 24),
                    ),
                    child: Column(
                      spacing: responsiveHeight(context, 24),
                      children: [
                        AuthHeadingWidget(
                          wantedScreen: Routes.signUpPage,
                          actionText: S.of(context).signup,
                          infoText: S.of(context).createaccount,
                          title: S.of(context).login,
                        ),
                        LoginFormWidget(),
                        Row(
                          children: [
                            Expanded(child: Divider()),
                            Container(
                                margin: EdgeInsets.symmetric(horizontal: 10),
                                child: Text(S.of(context).or)),
                            Expanded(child: Divider()),
                          ],
                        ),
                        Column(
                          spacing: responsiveHeight(context, 15),
                          children: [
                            ContinueWithWidget(
                              company: 'Google',
                              image: AppImageStrings.googleLogo,
                            ),
                            ContinueWithWidget(
                              company: 'Facebook',
                              image: AppImageStrings.facebookLogo,
                            ),
                            ContinueWithWidget(
                              company: 'Apple',
                              image: AppImageStrings.appleLogo,
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
        ),
      ),
    );
  }
}
