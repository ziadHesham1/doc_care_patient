import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:doc_care_core/core/helpers/app_extensions.dart';
import 'package:doc_care_core/core/networking/api_error_handler/api_error_model.dart';
import 'package:doc_care_core/core/routing/routes.dart';
import 'package:doc_care_core/core/theming/app_text_styles.dart';
import '../../logic/signup_cubit.dart';
import '../../logic/signup_state.dart';

class SignupBlocListener extends StatelessWidget {
  final Widget child;
  const SignupBlocListener({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(),
              ),
            );
          },
          success: (data) {
            context.pop();
            context.pushReplacementNamed(Routes.navbar);
          },
          error: (error) {
            setupErrorState(context, error);
          },
        );
      },
      child: child,
    );
  }

  void setupErrorState(BuildContext context, ApiErrorModel error) {
    context.pop();
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error.toString(),
          textAlign: TextAlign.center,
          style: AppTextStyles.font15DarkBlueMedium,
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: AppTextStyles.font14DarkBlueMedium,
            ),
          ),
        ],
      ),
    );
  }
}
