import 'package:controlgetx/core/constant/routes.dart';
import 'package:controlgetx/core/middleware/mymiddleware.dart';
import 'package:controlgetx/view/screen/auth/forgetpassword/forgetpassword.dart';
import 'package:controlgetx/view/screen/auth/login.dart';
import 'package:controlgetx/view/screen/auth/forgetpassword/resetpassword.dart';
import 'package:controlgetx/view/screen/auth/signup.dart';
import 'package:controlgetx/view/screen/auth/forgetpassword/success_resetpassword.dart';
import 'package:controlgetx/view/screen/auth/success_signup.dart';
import 'package:controlgetx/view/screen/auth/forgetpassword/verifycode.dart';
import 'package:controlgetx/view/screen/auth/verifycodesignup.dart';
import 'package:controlgetx/view/screen/configure_app/configure_app.dart';
import 'package:controlgetx/view/screen/home/drower.dart';
import 'package:controlgetx/view/screen/home/home_page.dart';
import 'package:controlgetx/view/screen/messages/firestpagemessage.dart';
import 'package:controlgetx/view/screen/messages/secondepagemessage.dart';
import 'package:controlgetx/view/widget/configur/language/language_app%20.dart';
import 'package:controlgetx/view/widget/configur/theme/theme_app.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>>? routes = [
  GetPage(
      name: "/",
      page: () => const ConfigureApplication(),
      middlewares: [MyMiddleWare()]),
  GetPage(name: AppRoute.languageApp, page: () => const LanguageApp()),
  GetPage(name: AppRoute.themeApp, page: () => const ThemeApp()),
  GetPage(name: AppRoute.login, page: () => const Login()),
  GetPage(name: AppRoute.signUp, page: () => const SignUp()),
  GetPage(name: AppRoute.forgetPassword, page: () => const ForgetPassword()),
  GetPage(name: AppRoute.verfiyCode, page: () => const VerfiyCode()),
  GetPage(name: AppRoute.resetPassword, page: () => const ResetPassword()),
  GetPage(
      name: AppRoute.successResetpassword,
      page: () => const SuccessResetPassword()),
  GetPage(name: AppRoute.successSignUp, page: () => const SuccessSignUp()),
  GetPage(
      name: AppRoute.verfiyCodeSignUp, page: () => const VerfiyCodeSignUp()),
  //
  GetPage(name: AppRoute.homePage, page: () => const HomePage()),
  GetPage(name: AppRoute.drawePage, page: () => const DrowerTwo2()),
  GetPage(
      name: AppRoute.firstPageMessage, page: () => const FirestPageMessage()),
  GetPage(
      name: AppRoute.secondePageMessage,
      page: () => const SecondePageMessage()),
];
