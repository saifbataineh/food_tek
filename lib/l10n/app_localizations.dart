import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_ar.dart';
import 'app_localizations_en.dart';

// ignore_for_file: type=lint

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations? of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('ar'),
    Locale('en')
  ];

  /// No description provided for @email.
  ///
  /// In en, this message translates to:
  /// **'Email'**
  String get email;

  /// No description provided for @onboarding1_title.
  ///
  /// In en, this message translates to:
  /// **'Welcome to Sahlah'**
  String get onboarding1_title;

  /// No description provided for @onboarding1_text.
  ///
  /// In en, this message translates to:
  /// **'Enjoy a fast and smooth food delivery at your doorstep'**
  String get onboarding1_text;

  /// No description provided for @onboarding2_title.
  ///
  /// In en, this message translates to:
  /// **'Get delivery on time'**
  String get onboarding2_title;

  /// No description provided for @onboarding2_text.
  ///
  /// In en, this message translates to:
  /// **'Order your favorite food within the palm of your hand and the zone of your comfort'**
  String get onboarding2_text;

  /// No description provided for @onboarding3_title.
  ///
  /// In en, this message translates to:
  /// **'Choose your food'**
  String get onboarding3_title;

  /// No description provided for @onboarding3_text.
  ///
  /// In en, this message translates to:
  /// **'Order your favorite food within the palm of your hand and the zone of your comfort'**
  String get onboarding3_text;

  /// No description provided for @turnloc_title.
  ///
  /// In en, this message translates to:
  /// **'Turn on your location'**
  String get turnloc_title;

  /// No description provided for @turnloc_text.
  ///
  /// In en, this message translates to:
  /// **'To continue, let your device turn on location, which uses Google’s location service'**
  String get turnloc_text;

  /// No description provided for @skip_button.
  ///
  /// In en, this message translates to:
  /// **'Skip'**
  String get skip_button;

  /// No description provided for @continue1.
  ///
  /// In en, this message translates to:
  /// **'Continue'**
  String get continue1;

  /// No description provided for @continue2.
  ///
  /// In en, this message translates to:
  /// **'Yes, Turn It On'**
  String get continue2;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @createaccount.
  ///
  /// In en, this message translates to:
  /// **'Don\'t have an account?'**
  String get createaccount;

  /// No description provided for @or.
  ///
  /// In en, this message translates to:
  /// **'Or'**
  String get or;

  /// No description provided for @signup.
  ///
  /// In en, this message translates to:
  /// **'Sign Up'**
  String get signup;

  /// No description provided for @rememberme.
  ///
  /// In en, this message translates to:
  /// **'remember me'**
  String get rememberme;

  /// No description provided for @forgetpassword.
  ///
  /// In en, this message translates to:
  /// **'Forgot Password ?'**
  String get forgetpassword;

  /// No description provided for @back_to.
  ///
  /// In en, this message translates to:
  /// **'Back to '**
  String get back_to;

  /// No description provided for @resetpassword.
  ///
  /// In en, this message translates to:
  /// **'Reset password'**
  String get resetpassword;

  /// No description provided for @enteremailorphonenumber.
  ///
  /// In en, this message translates to:
  /// **'Enter your E-mail or phone and we\'ll send you a link to get back into your account'**
  String get enteremailorphonenumber;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @verificationmessage.
  ///
  /// In en, this message translates to:
  /// **'A 4-digit code has been sent to your email. Please enter it to verify.'**
  String get verificationmessage;

  /// No description provided for @verify.
  ///
  /// In en, this message translates to:
  /// **'Verify'**
  String get verify;

  /// No description provided for @signtitle.
  ///
  /// In en, this message translates to:
  /// **'Sign up'**
  String get signtitle;

  /// No description provided for @alreadyhaveanaccount.
  ///
  /// In en, this message translates to:
  /// **'already have an account? '**
  String get alreadyhaveanaccount;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'login'**
  String get login;

  /// No description provided for @inforeset.
  ///
  /// In en, this message translates to:
  /// **'Want to try with my current password?'**
  String get inforeset;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @confirm_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm Password'**
  String get confirm_password;

  /// No description provided for @new_password.
  ///
  /// In en, this message translates to:
  /// **'New Password'**
  String get new_password;

  /// No description provided for @confirm_new_password.
  ///
  /// In en, this message translates to:
  /// **'Confirm New Password'**
  String get confirm_new_password;

  /// No description provided for @update_password.
  ///
  /// In en, this message translates to:
  /// **'Update Passsword'**
  String get update_password;

  /// No description provided for @congratulations.
  ///
  /// In en, this message translates to:
  /// **'Congratulations'**
  String get congratulations;

  /// No description provided for @pass_reset_succesfuly.
  ///
  /// In en, this message translates to:
  /// **'password reset succesfuly'**
  String get pass_reset_succesfuly;

  /// No description provided for @full_name.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get full_name;

  /// No description provided for @birth_of_date.
  ///
  /// In en, this message translates to:
  /// **'Birth Of Date '**
  String get birth_of_date;

  /// No description provided for @phone_number.
  ///
  /// In en, this message translates to:
  /// **'Phone Number '**
  String get phone_number;

  /// No description provided for @select.
  ///
  /// In en, this message translates to:
  /// **'select '**
  String get select;

  /// No description provided for @set_password.
  ///
  /// In en, this message translates to:
  /// **'Set Password'**
  String get set_password;

  /// No description provided for @register.
  ///
  /// In en, this message translates to:
  /// **'Register'**
  String get register;

  /// No description provided for @current_location.
  ///
  /// In en, this message translates to:
  /// **'Current location'**
  String get current_location;

  /// No description provided for @search_menu_restaurant_or_etc.
  ///
  /// In en, this message translates to:
  /// **'Search menu, restaurant or etc'**
  String get search_menu_restaurant_or_etc;

  /// No description provided for @all.
  ///
  /// In en, this message translates to:
  /// **'All'**
  String get all;

  /// No description provided for @top_rated.
  ///
  /// In en, this message translates to:
  /// **'Top Rated'**
  String get top_rated;

  /// No description provided for @recommend.
  ///
  /// In en, this message translates to:
  /// **'Recommend'**
  String get recommend;

  /// No description provided for @view_all.
  ///
  /// In en, this message translates to:
  /// **'View All'**
  String get view_all;

  /// No description provided for @home.
  ///
  /// In en, this message translates to:
  /// **'Home'**
  String get home;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'Favorites'**
  String get favorites;

  /// No description provided for @track.
  ///
  /// In en, this message translates to:
  /// **'Track'**
  String get track;

  /// No description provided for @profile.
  ///
  /// In en, this message translates to:
  /// **'Profile'**
  String get profile;

  /// No description provided for @history.
  ///
  /// In en, this message translates to:
  /// **'History'**
  String get history;

  /// No description provided for @order_now.
  ///
  /// In en, this message translates to:
  /// **'Order Now'**
  String get order_now;

  /// No description provided for @notifications.
  ///
  /// In en, this message translates to:
  /// **'Notifications'**
  String get notifications;

  /// No description provided for @unread.
  ///
  /// In en, this message translates to:
  /// **'Unread'**
  String get unread;

  /// No description provided for @read.
  ///
  /// In en, this message translates to:
  /// **'Read'**
  String get read;

  /// No description provided for @are_you_sure_you_want_to_remove_it_from_favorites.
  ///
  /// In en, this message translates to:
  /// **'Are you sure you want to remove it from favorites?'**
  String get are_you_sure_you_want_to_remove_it_from_favorites;

  /// No description provided for @yes.
  ///
  /// In en, this message translates to:
  /// **'Yes'**
  String get yes;

  /// No description provided for @reviews.
  ///
  /// In en, this message translates to:
  /// **'reviews'**
  String get reviews;

  /// No description provided for @spicy.
  ///
  /// In en, this message translates to:
  /// **'Spicy'**
  String get spicy;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @mild.
  ///
  /// In en, this message translates to:
  /// **'Mild'**
  String get mild;

  /// No description provided for @hot.
  ///
  /// In en, this message translates to:
  /// **'Hot'**
  String get hot;

  /// No description provided for @add_to_cart.
  ///
  /// In en, this message translates to:
  /// **'Add To Cart'**
  String get add_to_cart;

  /// No description provided for @filter.
  ///
  /// In en, this message translates to:
  /// **'filter'**
  String get filter;

  /// No description provided for @min.
  ///
  /// In en, this message translates to:
  /// **'Min'**
  String get min;

  /// No description provided for @max.
  ///
  /// In en, this message translates to:
  /// **'Max'**
  String get max;

  /// No description provided for @category.
  ///
  /// In en, this message translates to:
  /// **'Category'**
  String get category;

  /// No description provided for @location.
  ///
  /// In en, this message translates to:
  /// **'Location'**
  String get location;

  /// No description provided for @dish.
  ///
  /// In en, this message translates to:
  /// **'Dish'**
  String get dish;

  /// No description provided for @find_your_location.
  ///
  /// In en, this message translates to:
  /// **'Find your location'**
  String get find_your_location;

  /// No description provided for @your_location.
  ///
  /// In en, this message translates to:
  /// **'your location'**
  String get your_location;

  /// No description provided for @set_location.
  ///
  /// In en, this message translates to:
  /// **'Set Location'**
  String get set_location;

  /// No description provided for @checkout.
  ///
  /// In en, this message translates to:
  /// **'Checkout'**
  String get checkout;

  /// No description provided for @pay_with.
  ///
  /// In en, this message translates to:
  /// **'Pay With:'**
  String get pay_with;

  /// No description provided for @change.
  ///
  /// In en, this message translates to:
  /// **'Change'**
  String get change;

  /// No description provided for @promo_code.
  ///
  /// In en, this message translates to:
  /// **'Promo Code?'**
  String get promo_code;

  /// No description provided for @enter_your_promo.
  ///
  /// In en, this message translates to:
  /// **'Enter Your Promo'**
  String get enter_your_promo;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @card.
  ///
  /// In en, this message translates to:
  /// **'Card'**
  String get card;

  /// No description provided for @cash.
  ///
  /// In en, this message translates to:
  /// **'Cash'**
  String get cash;

  /// No description provided for @card_type.
  ///
  /// In en, this message translates to:
  /// **'Card Type:'**
  String get card_type;

  /// No description provided for @sub_total.
  ///
  /// In en, this message translates to:
  /// **'Sub-Total'**
  String get sub_total;

  /// No description provided for @delivery_charge.
  ///
  /// In en, this message translates to:
  /// **'Delivery Charge'**
  String get delivery_charge;

  /// No description provided for @discount.
  ///
  /// In en, this message translates to:
  /// **'Discount'**
  String get discount;

  /// No description provided for @total.
  ///
  /// In en, this message translates to:
  /// **'Total:'**
  String get total;

  /// No description provided for @place_my_order.
  ///
  /// In en, this message translates to:
  /// **'Place My Order'**
  String get place_my_order;

  /// No description provided for @add_card.
  ///
  /// In en, this message translates to:
  /// **'Add Card'**
  String get add_card;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @card_number.
  ///
  /// In en, this message translates to:
  /// **'Card Number'**
  String get card_number;

  /// No description provided for @expiry.
  ///
  /// In en, this message translates to:
  /// **'Expiry'**
  String get expiry;

  /// No description provided for @cvc.
  ///
  /// In en, this message translates to:
  /// **'CVC'**
  String get cvc;

  /// No description provided for @we_will_send_you_an_order_details_to_your_email_after_the_successfull_payment.
  ///
  /// In en, this message translates to:
  /// **'We will send you an order details to your email after the successfull payment'**
  String get we_will_send_you_an_order_details_to_your_email_after_the_successfull_payment;

  /// No description provided for @pay_for_the_order.
  ///
  /// In en, this message translates to:
  /// **'Pay for the order'**
  String get pay_for_the_order;

  /// No description provided for @your_order_done_successfully.
  ///
  /// In en, this message translates to:
  /// **'Your Order Done Successfully'**
  String get your_order_done_successfully;

  /// No description provided for @you_will_get_your_order_within_12_min_thanks_for_using_our_services.
  ///
  /// In en, this message translates to:
  /// **'you_will_get_your_order_within_12min.\nthanks_for_using_our_services'**
  String get you_will_get_your_order_within_12_min_thanks_for_using_our_services;

  /// No description provided for @track_your_order.
  ///
  /// In en, this message translates to:
  /// **'track Your Order'**
  String get track_your_order;

  /// No description provided for @on_the_way.
  ///
  /// In en, this message translates to:
  /// **'On The Way'**
  String get on_the_way;

  /// No description provided for @all_details.
  ///
  /// In en, this message translates to:
  /// **'all details'**
  String get all_details;

  /// No description provided for @order_placed.
  ///
  /// In en, this message translates to:
  /// **'Order Placed'**
  String get order_placed;

  /// No description provided for @delivered.
  ///
  /// In en, this message translates to:
  /// **'Delivered'**
  String get delivered;

  /// No description provided for @your_delivery_hero.
  ///
  /// In en, this message translates to:
  /// **'Your Delivery Hero'**
  String get your_delivery_hero;

  /// No description provided for @chat.
  ///
  /// In en, this message translates to:
  /// **'Chat'**
  String get chat;

  /// No description provided for @write_your_message.
  ///
  /// In en, this message translates to:
  /// **'Write your message'**
  String get write_your_message;

  /// No description provided for @order_details.
  ///
  /// In en, this message translates to:
  /// **'Order Details'**
  String get order_details;

  /// No description provided for @order_id.
  ///
  /// In en, this message translates to:
  /// **'Order ID'**
  String get order_id;

  /// No description provided for @order_received.
  ///
  /// In en, this message translates to:
  /// **'Order received '**
  String get order_received;

  /// No description provided for @cooking_your_order.
  ///
  /// In en, this message translates to:
  /// **'Cooking your order '**
  String get cooking_your_order;

  /// No description provided for @courier_is_picking_up_order.
  ///
  /// In en, this message translates to:
  /// **'Courier is picking up order'**
  String get courier_is_picking_up_order;

  /// No description provided for @order_delivered.
  ///
  /// In en, this message translates to:
  /// **'Order delivered'**
  String get order_delivered;

  /// No description provided for @live_track.
  ///
  /// In en, this message translates to:
  /// **'Live Track'**
  String get live_track;

  /// No description provided for @my_account.
  ///
  /// In en, this message translates to:
  /// **'My Account'**
  String get my_account;

  /// No description provided for @personal_information.
  ///
  /// In en, this message translates to:
  /// **'Personal information'**
  String get personal_information;

  /// No description provided for @language.
  ///
  /// In en, this message translates to:
  /// **'Language'**
  String get language;

  /// No description provided for @privacy_policy.
  ///
  /// In en, this message translates to:
  /// **'Privacy Policy'**
  String get privacy_policy;

  /// No description provided for @setting.
  ///
  /// In en, this message translates to:
  /// **'Setting'**
  String get setting;

  /// No description provided for @push_notifications.
  ///
  /// In en, this message translates to:
  /// **'Push Notifications'**
  String get push_notifications;

  /// No description provided for @promotional_notifications.
  ///
  /// In en, this message translates to:
  /// **'Promotional Notifications'**
  String get promotional_notifications;

  /// No description provided for @more.
  ///
  /// In en, this message translates to:
  /// **'More'**
  String get more;

  /// No description provided for @help_center.
  ///
  /// In en, this message translates to:
  /// **'Help Center'**
  String get help_center;

  /// No description provided for @log_out.
  ///
  /// In en, this message translates to:
  /// **'Log Out'**
  String get log_out;

  /// No description provided for @username.
  ///
  /// In en, this message translates to:
  /// **'Username'**
  String get username;

  /// No description provided for @address.
  ///
  /// In en, this message translates to:
  /// **'Address'**
  String get address;

  /// No description provided for @update.
  ///
  /// In en, this message translates to:
  /// **'Update'**
  String get update;

  /// No description provided for @cart.
  ///
  /// In en, this message translates to:
  /// **'Cart'**
  String get cart;

  /// No description provided for @load_more.
  ///
  /// In en, this message translates to:
  /// **'Load More..'**
  String get load_more;

  /// No description provided for @cart_empty.
  ///
  /// In en, this message translates to:
  /// **'Cart Empty'**
  String get cart_empty;

  /// No description provided for @you_do_not_have_add_any_foods_in_cart_at_this_time.
  ///
  /// In en, this message translates to:
  /// **'You don’t have add any foods in cart at this time '**
  String get you_do_not_have_add_any_foods_in_cart_at_this_time;

  /// No description provided for @history_empty.
  ///
  /// In en, this message translates to:
  /// **'History Empty'**
  String get history_empty;

  /// No description provided for @you_do_not_have_order_any_foods_before.
  ///
  /// In en, this message translates to:
  /// **'You don’t have order any foods before'**
  String get you_do_not_have_order_any_foods_before;

  /// No description provided for @burger.
  ///
  /// In en, this message translates to:
  /// **'burger'**
  String get burger;

  /// No description provided for @pizza.
  ///
  /// In en, this message translates to:
  /// **'pizza'**
  String get pizza;

  /// No description provided for @sandwish.
  ///
  /// In en, this message translates to:
  /// **'sandwish'**
  String get sandwish;

  /// No description provided for @recorder.
  ///
  /// In en, this message translates to:
  /// **'reorder'**
  String get recorder;

  /// No description provided for @archived.
  ///
  /// In en, this message translates to:
  /// **'archived'**
  String get archived;

  /// No description provided for @editProfile.
  ///
  /// In en, this message translates to:
  /// **'Edit Profile'**
  String get editProfile;

  /// No description provided for @cantBeEmpty.
  ///
  /// In en, this message translates to:
  /// **'this field can\'t be empty'**
  String get cantBeEmpty;

  /// No description provided for @mustBeStrongPassword.
  ///
  /// In en, this message translates to:
  /// **'Password must be at least 6 characters long and include at least one uppercase letter, one lowercase letter, one number, and one special character (! @ # \$ & * ~).'**
  String get mustBeStrongPassword;

  /// No description provided for @mustBeValidEmail.
  ///
  /// In en, this message translates to:
  /// **'Please enter a valid email'**
  String get mustBeValidEmail;

  /// No description provided for @notAuthorized.
  ///
  /// In en, this message translates to:
  /// **'you are not authorized to login'**
  String get notAuthorized;

  /// No description provided for @unExpectedError.
  ///
  /// In en, this message translates to:
  /// **'Unexpected Error Occured!!'**
  String get unExpectedError;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['ar', 'en'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'ar': return AppLocalizationsAr();
    case 'en': return AppLocalizationsEn();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
