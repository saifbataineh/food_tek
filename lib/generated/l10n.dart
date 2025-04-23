// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Email`
  String get email {
    return Intl.message('Email', name: 'email', desc: '', args: []);
  }

  /// `Welcome to Sahlah`
  String get onboarding1_title {
    return Intl.message(
      'Welcome to Sahlah',
      name: 'onboarding1_title',
      desc: '',
      args: [],
    );
  }

  /// `Enjoy a fast and smooth food delivery at your doorstep`
  String get onboarding1_text {
    return Intl.message(
      'Enjoy a fast and smooth food delivery at your doorstep',
      name: 'onboarding1_text',
      desc: '',
      args: [],
    );
  }

  /// `Get delivery on time`
  String get onboarding2_title {
    return Intl.message(
      'Get delivery on time',
      name: 'onboarding2_title',
      desc: '',
      args: [],
    );
  }

  /// `Order your favorite food within the palm of your hand and the zone of your comfort`
  String get onboarding2_text {
    return Intl.message(
      'Order your favorite food within the palm of your hand and the zone of your comfort',
      name: 'onboarding2_text',
      desc: '',
      args: [],
    );
  }

  /// `Choose your food`
  String get onboarding3_title {
    return Intl.message(
      'Choose your food',
      name: 'onboarding3_title',
      desc: '',
      args: [],
    );
  }

  /// `Order your favorite food within the palm of your hand and the zone of your comfort`
  String get onboarding3_text {
    return Intl.message(
      'Order your favorite food within the palm of your hand and the zone of your comfort',
      name: 'onboarding3_text',
      desc: '',
      args: [],
    );
  }

  /// `Turn on your location`
  String get turnloc_title {
    return Intl.message(
      'Turn on your location',
      name: 'turnloc_title',
      desc: '',
      args: [],
    );
  }

  /// `To continue, let your device turn on location, which uses Google’s location service`
  String get turnloc_text {
    return Intl.message(
      'To continue, let your device turn on location, which uses Google’s location service',
      name: 'turnloc_text',
      desc: '',
      args: [],
    );
  }

  /// `Skip`
  String get skip_button {
    return Intl.message('Skip', name: 'skip_button', desc: '', args: []);
  }

  /// `Continue`
  String get continue1 {
    return Intl.message('Continue', name: 'continue1', desc: '', args: []);
  }

  /// `Yes, Turn It On`
  String get continue2 {
    return Intl.message(
      'Yes, Turn It On',
      name: 'continue2',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `Don't have an account?`
  String get createaccount {
    return Intl.message(
      'Don\'t have an account?',
      name: 'createaccount',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message('Or', name: 'or', desc: '', args: []);
  }

  /// `Sign Up`
  String get signup {
    return Intl.message('Sign Up', name: 'signup', desc: '', args: []);
  }

  /// `remember me`
  String get rememberme {
    return Intl.message('remember me', name: 'rememberme', desc: '', args: []);
  }

  /// `Forgot Password ?`
  String get forgetpassword {
    return Intl.message(
      'Forgot Password ?',
      name: 'forgetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Back to `
  String get back_to {
    return Intl.message('Back to ', name: 'back_to', desc: '', args: []);
  }

  /// `Reset password`
  String get resetpassword {
    return Intl.message(
      'Reset password',
      name: 'resetpassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter your E-mail or phone and we'll send you a link to get back into your account`
  String get enteremailorphonenumber {
    return Intl.message(
      'Enter your E-mail or phone and we\'ll send you a link to get back into your account',
      name: 'enteremailorphonenumber',
      desc: '',
      args: [],
    );
  }

  /// `Send`
  String get send {
    return Intl.message('Send', name: 'send', desc: '', args: []);
  }

  /// `A 4-digit code has been sent to your email. Please enter it to verify.`
  String get verificationmessage {
    return Intl.message(
      'A 4-digit code has been sent to your email. Please enter it to verify.',
      name: 'verificationmessage',
      desc: '',
      args: [],
    );
  }

  /// `Verify`
  String get verify {
    return Intl.message('Verify', name: 'verify', desc: '', args: []);
  }

  /// `Sign up`
  String get signtitle {
    return Intl.message('Sign up', name: 'signtitle', desc: '', args: []);
  }

  /// `already have an account? `
  String get alreadyhaveanaccount {
    return Intl.message(
      'already have an account? ',
      name: 'alreadyhaveanaccount',
      desc: '',
      args: [],
    );
  }

  /// `login`
  String get login {
    return Intl.message('login', name: 'login', desc: '', args: []);
  }

  /// `Want to try with my current password?`
  String get inforeset {
    return Intl.message(
      'Want to try with my current password?',
      name: 'inforeset',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `Confirm Password`
  String get confirm_password {
    return Intl.message(
      'Confirm Password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get new_password {
    return Intl.message(
      'New Password',
      name: 'new_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirm_new_password {
    return Intl.message(
      'Confirm New Password',
      name: 'confirm_new_password',
      desc: '',
      args: [],
    );
  }

  /// `Update Passsword`
  String get update_password {
    return Intl.message(
      'Update Passsword',
      name: 'update_password',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations`
  String get congratulations {
    return Intl.message(
      'Congratulations',
      name: 'congratulations',
      desc: '',
      args: [],
    );
  }

  /// `password reset succesfuly`
  String get pass_reset_succesfuly {
    return Intl.message(
      'password reset succesfuly',
      name: 'pass_reset_succesfuly',
      desc: '',
      args: [],
    );
  }

  /// `Full Name`
  String get full_name {
    return Intl.message('Full Name', name: 'full_name', desc: '', args: []);
  }

  /// `Birth Of Date `
  String get birth_of_date {
    return Intl.message(
      'Birth Of Date ',
      name: 'birth_of_date',
      desc: '',
      args: [],
    );
  }

  /// `Phone Number `
  String get phone_number {
    return Intl.message(
      'Phone Number ',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `select `
  String get select {
    return Intl.message('select ', name: 'select', desc: '', args: []);
  }

  /// `Set Password`
  String get set_password {
    return Intl.message(
      'Set Password',
      name: 'set_password',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message('Register', name: 'register', desc: '', args: []);
  }

  /// `Current location`
  String get current_location {
    return Intl.message(
      'Current location',
      name: 'current_location',
      desc: '',
      args: [],
    );
  }

  /// `Search menu, restaurant or etc`
  String get search_menu_restaurant_or_etc {
    return Intl.message(
      'Search menu, restaurant or etc',
      name: 'search_menu_restaurant_or_etc',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `Top Rated`
  String get top_rated {
    return Intl.message('Top Rated', name: 'top_rated', desc: '', args: []);
  }

  /// `Recommend`
  String get recommend {
    return Intl.message('Recommend', name: 'recommend', desc: '', args: []);
  }

  /// `View All`
  String get view_all {
    return Intl.message('View All', name: 'view_all', desc: '', args: []);
  }

  /// `Home`
  String get home {
    return Intl.message('Home', name: 'home', desc: '', args: []);
  }

  /// `Favorites`
  String get favorites {
    return Intl.message('Favorites', name: 'favorites', desc: '', args: []);
  }

  /// `Track`
  String get track {
    return Intl.message('Track', name: 'track', desc: '', args: []);
  }

  /// `Profile`
  String get profile {
    return Intl.message('Profile', name: 'profile', desc: '', args: []);
  }

  /// `History`
  String get history {
    return Intl.message('History', name: 'history', desc: '', args: []);
  }

  /// `Order Now`
  String get order_now {
    return Intl.message('Order Now', name: 'order_now', desc: '', args: []);
  }

  /// `Notifications`
  String get notifications {
    return Intl.message(
      'Notifications',
      name: 'notifications',
      desc: '',
      args: [],
    );
  }

  /// `Unread`
  String get unread {
    return Intl.message('Unread', name: 'unread', desc: '', args: []);
  }

  /// `Read`
  String get read {
    return Intl.message('Read', name: 'read', desc: '', args: []);
  }

  /// `Are you sure you want to remove it from favorites?`
  String get are_you_sure_you_want_to_remove_it_from_favorites {
    return Intl.message(
      'Are you sure you want to remove it from favorites?',
      name: 'are_you_sure_you_want_to_remove_it_from_favorites',
      desc: '',
      args: [],
    );
  }

  /// `Yes`
  String get yes {
    return Intl.message('Yes', name: 'yes', desc: '', args: []);
  }

  /// `reviews`
  String get reviews {
    return Intl.message('reviews', name: 'reviews', desc: '', args: []);
  }

  /// `Spicy`
  String get spicy {
    return Intl.message('Spicy', name: 'spicy', desc: '', args: []);
  }

  /// `Quantity`
  String get quantity {
    return Intl.message('Quantity', name: 'quantity', desc: '', args: []);
  }

  /// `Mild`
  String get mild {
    return Intl.message('Mild', name: 'mild', desc: '', args: []);
  }

  /// `Hot`
  String get hot {
    return Intl.message('Hot', name: 'hot', desc: '', args: []);
  }

  /// `Add To Cart`
  String get add_to_cart {
    return Intl.message('Add To Cart', name: 'add_to_cart', desc: '', args: []);
  }

  /// `filter`
  String get filter {
    return Intl.message('filter', name: 'filter', desc: '', args: []);
  }

  /// `Min`
  String get min {
    return Intl.message('Min', name: 'min', desc: '', args: []);
  }

  /// `Max`
  String get max {
    return Intl.message('Max', name: 'max', desc: '', args: []);
  }

  /// `Category`
  String get category {
    return Intl.message('Category', name: 'category', desc: '', args: []);
  }

  /// `Location`
  String get location {
    return Intl.message('Location', name: 'location', desc: '', args: []);
  }

  /// `Dish`
  String get dish {
    return Intl.message('Dish', name: 'dish', desc: '', args: []);
  }

  /// `Find your location`
  String get find_your_location {
    return Intl.message(
      'Find your location',
      name: 'find_your_location',
      desc: '',
      args: [],
    );
  }

  /// `your location`
  String get your_location {
    return Intl.message(
      'your location',
      name: 'your_location',
      desc: '',
      args: [],
    );
  }

  /// `Set Location`
  String get set_location {
    return Intl.message(
      'Set Location',
      name: 'set_location',
      desc: '',
      args: [],
    );
  }

  /// `Checkout`
  String get checkout {
    return Intl.message('Checkout', name: 'checkout', desc: '', args: []);
  }

  /// `Pay With:`
  String get pay_with {
    return Intl.message('Pay With:', name: 'pay_with', desc: '', args: []);
  }

  /// `Change`
  String get change {
    return Intl.message('Change', name: 'change', desc: '', args: []);
  }

  /// `Promo Code?`
  String get promo_code {
    return Intl.message('Promo Code?', name: 'promo_code', desc: '', args: []);
  }

  /// `Enter Your Promo`
  String get enter_your_promo {
    return Intl.message(
      'Enter Your Promo',
      name: 'enter_your_promo',
      desc: '',
      args: [],
    );
  }

  /// `Add`
  String get add {
    return Intl.message('Add', name: 'add', desc: '', args: []);
  }

  /// `Card`
  String get card {
    return Intl.message('Card', name: 'card', desc: '', args: []);
  }

  /// `Cash`
  String get cash {
    return Intl.message('Cash', name: 'cash', desc: '', args: []);
  }

  /// `Card Type:`
  String get card_type {
    return Intl.message('Card Type:', name: 'card_type', desc: '', args: []);
  }

  /// `Sub-Total`
  String get sub_total {
    return Intl.message('Sub-Total', name: 'sub_total', desc: '', args: []);
  }

  /// `Delivery Charge`
  String get delivery_charge {
    return Intl.message(
      'Delivery Charge',
      name: 'delivery_charge',
      desc: '',
      args: [],
    );
  }

  /// `Discount`
  String get discount {
    return Intl.message('Discount', name: 'discount', desc: '', args: []);
  }

  /// `Total:`
  String get total {
    return Intl.message('Total:', name: 'total', desc: '', args: []);
  }

  /// `Place My Order`
  String get place_my_order {
    return Intl.message(
      'Place My Order',
      name: 'place_my_order',
      desc: '',
      args: [],
    );
  }

  /// `Add Card`
  String get add_card {
    return Intl.message('Add Card', name: 'add_card', desc: '', args: []);
  }

  /// `Name`
  String get name {
    return Intl.message('Name', name: 'name', desc: '', args: []);
  }

  /// `Card Number`
  String get card_number {
    return Intl.message('Card Number', name: 'card_number', desc: '', args: []);
  }

  /// `Expiry`
  String get expiry {
    return Intl.message('Expiry', name: 'expiry', desc: '', args: []);
  }

  /// `CVC`
  String get cvc {
    return Intl.message('CVC', name: 'cvc', desc: '', args: []);
  }

  /// `We will send you an order details to your email after the successfull payment`
  String
  get we_will_send_you_an_order_details_to_your_email_after_the_successfull_payment {
    return Intl.message(
      'We will send you an order details to your email after the successfull payment',
      name:
          'we_will_send_you_an_order_details_to_your_email_after_the_successfull_payment',
      desc: '',
      args: [],
    );
  }

  /// `Pay for the order`
  String get pay_for_the_order {
    return Intl.message(
      'Pay for the order',
      name: 'pay_for_the_order',
      desc: '',
      args: [],
    );
  }

  /// `Your Order Done Successfully`
  String get your_order_done_successfully {
    return Intl.message(
      'Your Order Done Successfully',
      name: 'your_order_done_successfully',
      desc: '',
      args: [],
    );
  }

  /// `you_will_get_your_order_within_12min.\nthanks_for_using_our_services`
  String
  get you_will_get_your_order_within_12_min_thanks_for_using_our_services {
    return Intl.message(
      'you_will_get_your_order_within_12min.\nthanks_for_using_our_services',
      name:
          'you_will_get_your_order_within_12_min_thanks_for_using_our_services',
      desc: '',
      args: [],
    );
  }

  /// `track Your Order`
  String get track_your_order {
    return Intl.message(
      'track Your Order',
      name: 'track_your_order',
      desc: '',
      args: [],
    );
  }

  /// `On The Way`
  String get on_the_way {
    return Intl.message('On The Way', name: 'on_the_way', desc: '', args: []);
  }

  /// `all details`
  String get all_details {
    return Intl.message('all details', name: 'all_details', desc: '', args: []);
  }

  /// `Order Placed`
  String get order_placed {
    return Intl.message(
      'Order Placed',
      name: 'order_placed',
      desc: '',
      args: [],
    );
  }

  /// `Delivered`
  String get delivered {
    return Intl.message('Delivered', name: 'delivered', desc: '', args: []);
  }

  /// `Your Delivery Hero`
  String get your_delivery_hero {
    return Intl.message(
      'Your Delivery Hero',
      name: 'your_delivery_hero',
      desc: '',
      args: [],
    );
  }

  /// `Chat`
  String get chat {
    return Intl.message('Chat', name: 'chat', desc: '', args: []);
  }

  /// `Write your message`
  String get write_your_message {
    return Intl.message(
      'Write your message',
      name: 'write_your_message',
      desc: '',
      args: [],
    );
  }

  /// `Order Details`
  String get order_details {
    return Intl.message(
      'Order Details',
      name: 'order_details',
      desc: '',
      args: [],
    );
  }

  /// `Order ID`
  String get order_id {
    return Intl.message('Order ID', name: 'order_id', desc: '', args: []);
  }

  /// `Order received `
  String get order_received {
    return Intl.message(
      'Order received ',
      name: 'order_received',
      desc: '',
      args: [],
    );
  }

  /// `Cooking your order `
  String get cooking_your_order {
    return Intl.message(
      'Cooking your order ',
      name: 'cooking_your_order',
      desc: '',
      args: [],
    );
  }

  /// `Courier is picking up order`
  String get courier_is_picking_up_order {
    return Intl.message(
      'Courier is picking up order',
      name: 'courier_is_picking_up_order',
      desc: '',
      args: [],
    );
  }

  /// `Order delivered`
  String get order_delivered {
    return Intl.message(
      'Order delivered',
      name: 'order_delivered',
      desc: '',
      args: [],
    );
  }

  /// `Live Track`
  String get live_track {
    return Intl.message('Live Track', name: 'live_track', desc: '', args: []);
  }

  /// `My Account`
  String get my_account {
    return Intl.message('My Account', name: 'my_account', desc: '', args: []);
  }

  /// `Personal information`
  String get personal_information {
    return Intl.message(
      'Personal information',
      name: 'personal_information',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Privacy Policy`
  String get privacy_policy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacy_policy',
      desc: '',
      args: [],
    );
  }

  /// `Setting`
  String get setting {
    return Intl.message('Setting', name: 'setting', desc: '', args: []);
  }

  /// `Push Notifications`
  String get push_notifications {
    return Intl.message(
      'Push Notifications',
      name: 'push_notifications',
      desc: '',
      args: [],
    );
  }

  /// `Promotional Notifications`
  String get promotional_notifications {
    return Intl.message(
      'Promotional Notifications',
      name: 'promotional_notifications',
      desc: '',
      args: [],
    );
  }

  /// `More`
  String get more {
    return Intl.message('More', name: 'more', desc: '', args: []);
  }

  /// `Help Center`
  String get help_center {
    return Intl.message('Help Center', name: 'help_center', desc: '', args: []);
  }

  /// `Log Out`
  String get log_out {
    return Intl.message('Log Out', name: 'log_out', desc: '', args: []);
  }

  /// `Username`
  String get username {
    return Intl.message('Username', name: 'username', desc: '', args: []);
  }

  /// `Address`
  String get address {
    return Intl.message('Address', name: 'address', desc: '', args: []);
  }

  /// `Update`
  String get update {
    return Intl.message('Update', name: 'update', desc: '', args: []);
  }

  /// `Cart`
  String get cart {
    return Intl.message('Cart', name: 'cart', desc: '', args: []);
  }

  /// `Load More..`
  String get load_more {
    return Intl.message('Load More..', name: 'load_more', desc: '', args: []);
  }

  /// `Cart Empty`
  String get cart_empty {
    return Intl.message('Cart Empty', name: 'cart_empty', desc: '', args: []);
  }

  /// `You don’t have add any foods in cart at this time `
  String get you_do_not_have_add_any_foods_in_cart_at_this_time {
    return Intl.message(
      'You don’t have add any foods in cart at this time ',
      name: 'you_do_not_have_add_any_foods_in_cart_at_this_time',
      desc: '',
      args: [],
    );
  }

  /// `History Empty`
  String get history_empty {
    return Intl.message(
      'History Empty',
      name: 'history_empty',
      desc: '',
      args: [],
    );
  }

  /// `You don’t have order any foods before`
  String get you_do_not_have_order_any_foods_before {
    return Intl.message(
      'You don’t have order any foods before',
      name: 'you_do_not_have_order_any_foods_before',
      desc: '',
      args: [],
    );
  }

  /// `burger`
  String get burger {
    return Intl.message('burger', name: 'burger', desc: '', args: []);
  }

  /// `pizza`
  String get pizza {
    return Intl.message('pizza', name: 'pizza', desc: '', args: []);
  }

  /// `sandwish`
  String get sandwish {
    return Intl.message('sandwish', name: 'sandwish', desc: '', args: []);
  }

  /// `reorder`
  String get recorder {
    return Intl.message('reorder', name: 'recorder', desc: '', args: []);
  }

  /// `archived`
  String get archived {
    return Intl.message('archived', name: 'archived', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
