import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:silla_application/l10n/messages_all.dart';

//
// The Localizations widget defines the locale for its child
// and the localized resources that the child depends on.
/*
*
The Localizations widget is used to load and lookup objects that contain collections of localized values.
 Apps refer to these objects with Localizations.of(context,type).
If the device’s locale changes, the Localizations
*
*
* Localized values are loaded by the Localizations widget’s list of LocalizationsDelegates.
* */
class AppLocalizations {
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  static Future<AppLocalizations> load(Locale locale) {
    final String name =
        locale.countryCode == null ? locale.languageCode : locale.toString();
    final String localeName = Intl.canonicalizedLocale(name);

    return initializeMessages(localeName).then((bool _) {
      Intl.defaultLocale = localeName;
      return new AppLocalizations();
    });
  }

  String get home {
    return Intl.message('Home', name: 'home');
  }

  String get my_order {
    return Intl.message('My order', name: 'my_order');
  }

  String get notifications {
    return Intl.message('Notifications', name: 'notifications');
  }

  String get profile {
    return Intl.message('Profile', name: 'profile');
  }

  String get about_us {
    return Intl.message('About Us', name: 'about_us');
  }

  String get setting {
    return Intl.message('Setting', name: 'setting');
  }

  String get other_info {
    return Intl.message('Other', name: 'other_info');
  }

  String get genral_info {
    return Intl.message('General', name: 'genral_info');
  }

  String get personal_info {
    return Intl.message('Personal', name: 'personal_info');
  }

  String get accepted {
    return Intl.message('Accepted', name: 'accepted');
  }

  String get ongoing {
    return Intl.message('Ongoing', name: 'ongoing');
  }

  String get name {
    return Intl.message('Name', name: 'name');
  }

  String get email {
    return Intl.message('Email', name: 'email');
  }

  String get female {
    return Intl.message('Female', name: 'female');
  }

  String get male {
    return Intl.message('Male', name: 'male');
  }

  String get married {
    return Intl.message('married', name: 'married');
  }

  String get not_married {
    return Intl.message('Not married"', name: 'not_married');
  }

  String get working {
    return Intl.message('working', name: 'working');
  }

  String get not_working {
    return Intl.message('Not working', name: 'not_working');
  }

  String get mobile_number {
    return Intl.message('+249', name: 'mobile_number');
  }

  String get personal_info_subtitle {
    return Intl.message('Enter your personal info to continue',
        name: 'personal_info_subtitle');
  }

  String get job_title {
    return Intl.message('Job title"', name: 'job_title');
  }

  String get monthly_income {
    return Intl.message('Monthly income', name: 'monthly_income');
  }

  String get next {
    return Intl.message('Next', name: 'next');
  }

  String get housing_info {
    return Intl.message('Housing info"', name: 'housing_info');
  }

  String get housing_info_subtitle {
    return Intl.message('Enter your house info below to continue',
        name: 'housing_info_subtitle');
  }

  String get house_Status {
    return Intl.message('House Status', name: 'house_Status');
  }

  String get own {
    return Intl.message('Own', name: 'own');
  }

  String get room_number {
    return Intl.message('Room Numbers', name: 'room_number');
  }

  String get rent {
    return Intl.message('Rent', name: 'rent');
  }

  String get private_room_question {
    return Intl.message('is there a private room for the worker at home?',
        name: 'private_room_question');
  }

  String get yes {
    return Intl.message('Yes', name: 'yes');
  }

  String get no {
    return Intl.message('No', name: 'no');
  }

  String get nature_of_living {
    return Intl.message('please explain the nature of living ?',
        name: 'nature_of_living');
  }

  String get your_answer {
    return Intl.message('Your Answer"', name: 'your_answer');
  }

  String get air_port_arrival {
    return Intl.message('Airport Arrival', name: 'air_port_arrival');
  }

  String get family_number {
    return Intl.message('Family number"', name: 'family_number');
  }

  String get children_number {
    return Intl.message('Children number"', name: 'children_number');
  }

  String get general_info {
    return Intl.message('General Info', name: 'general_info');
  }

  String get general_info_subtitle {
    return Intl.message('Enter your family info below to continue',
        name: 'general_info_subtitle');
  }

  String get worker_specification {
    return Intl.message('Worker Specification"', name: 'worker_specification');
  }

  String get worker_specification_subtitle {
    return Intl.message('Enter your worker description below to continue',
        name: 'worker_specification_subtitle');
  }

  String get number_of_worker {
    return Intl.message('Number of worker', name: 'number_of_worker');
  }

  String get prv_exp {
    return Intl.message('Previous work experience?', name: 'prv_exp');
  }

  String get religion {
    return Intl.message('Religion', name: 'religion');
  }

  String get muslim {
    return Intl.message('Muslim', name: 'muslim');
  }

  String get not_muslim {
    return Intl.message('Not Muslim', name: 'not_muslim');
  }

  String get visa_question {
    return Intl.message('is there is a visa?"', name: 'visa_question');
  }

  String get visa_number {
    return Intl.message('Visa Number', name: 'visa_number');
  }

  String get official_doc {
    return Intl.message('Official document', name: 'official_doc');
  }

  String get official_doc_sub_title {
    return Intl.message('Upload your official document to continue',
        name: 'official_doc_sub_title');
  }

  String get take_Shot {
    return Intl.message('Take Shot', name: 'take_Shot');
  }

  String get upload {
    return Intl.message('Upload', name: 'upload');
  }

  String get family_doc {
    return Intl.message('Family document', name: 'family_doc');
  }

  String get visa_card {
    return Intl.message('Visa Card', name: 'visa_card');
  }

  String get terms_and_condition {
    return Intl.message('Term And condition', name: 'terms_and_condition');
  }

//  "ministry_of_labor" : MessageLookupByLibrary.simpleMessage("Ministry if labor pledge"),
//  "i_agree" : MessageLookupByLibrary.simpleMessage("I agree to"),
//  "thank_you" : MessageLookupByLibrary.simpleMessage("Thank you we,are done"),
//  "your_order" : MessageLookupByLibrary.simpleMessage("Your order"),
//  "has_been_sent_successfully" : MessageLookupByLibrary.simpleMessage("has been successfully submitted for our review"),
//  "see_order_history" : MessageLookupByLibrary.simpleMessage("See your order history and status"),

  String get ministry_of_labor {
    return Intl.message('Ministry if labor pledge', name: 'ministry_of_labor');
  }

  String get i_agree {
    return Intl.message('I agree to', name: 'i_agree');
  }

  String get thank_you {
    return Intl.message('Thank you we,are done', name: 'thank_you');
  }

  String get your_order {
    return Intl.message('Your order', name: 'your_order');
  }

  String get has_been_sent_successfully {
    return Intl.message('has been successfully submitted for our review"',
        name: 'has_been_sent_successfully');
  }

  String get see_order_history {
    return Intl.message('See your order history and status',
        name: 'see_order_history');
  }

  String get personal_id {
    return Intl.message('Personal id', name: 'personal_id');
  }

  String get wife_education {
    return Intl.message('Wife education', name: 'wife_education');
  }

  String get nationality {
    return Intl.message('Nationality', name: 'nationality');
  }

  String get age {
    return Intl.message('Age', name: 'age');
  }

  String get gender {
    return Intl.message('Gender', name: 'gender');
  }

  String get social_status {
    return Intl.message('Social Status', name: 'social_status');
  }

  String get job {
    return Intl.message('Job', name: 'job');
  }

  String get type_of_housing {
    return Intl.message('Type of housing', name: 'type_of_housing');
  }

  String get log_out {
    return Intl.message('Log out', name: 'log_out');
  }

  String get under_review {
    return Intl.message('Under Review', name: 'under_review');
  }

  String get review_resume {
    return Intl.message('Review resume', name: 'review_resume');
  }

  String get more_details {
    return Intl.message('More Details', name: 'more_details');
  }

  String get click_to_review {
    return Intl.message('Click to review', name: 'click_to_review');
  }

  String get order_placed {
    return Intl.message('Order placed', name: 'order_placed');
  }

  String get order_confirmed {
    return Intl.message('Order confirmed', name: 'order_confirmed');
  }

  String get tall {
    return Intl.message('tall', name: 'tall');
  }

  String get weight {
    return Intl.message('Weight', name: 'weight');
  }

  String get children {
    return Intl.message('Children', name: 'children');
  }

  String get exp {
    return Intl.message('Experiences', name: 'exp');
  }

  String get summery {
    return Intl.message('Summery', name: 'summery');
  }

  String get languages {
    return Intl.message('languages', name: 'languages');
  }

  String get exp_details {
    return Intl.message('Experiences details', name: 'exp_details');
  }

  String get accept {
    return Intl.message('Accept', name: 'accept');
  }

  String get reject {
    return Intl.message('Reject', name: 'reject');
  }

  String get arabic {
    return Intl.message('Arabic', name: 'arabic');
  }

  String get french {
    return Intl.message('French', name: 'french');
  }

  String get english {
    return Intl.message('English', name: 'english');
  }

  String get complete_profile {
    return Intl.message('Complete your profile"', name: 'complete_profile');
  }

  String get complete_profile_detail {
    return Intl.message('Enter the rest to complete the profile',
        name: 'complete_profile_detail');
  }

  String get complete_it_now {
    return Intl.message('Complete it now', name: 'complete_it_now');
  }

  String get click_to_view {
    return Intl.message('Click to view', name: 'click_to_view');
  }

  String get sing_in {
    return Intl.message('Sign in', name: 'sing_in');
  }

  String get sign_up {
    return Intl.message('Sign up', name: 'sign_up');
  }

  String get log_in {
    return Intl.message('Log in', name: 'log_in');
  }

  String get dont_have_account {
    return Intl.message("Don't have account", name: 'dont_have_account');
  }

  String get password {
    return Intl.message('Password', name: 'password');
  }

  String get forget_password {
    return Intl.message('Forget password?', name: 'forget_password');
  }

  String get send {
    return Intl.message('Send', name: 'send');
  }

  String get type_your_phone {
    return Intl.message('Type your phone number"', name: 'type_your_phone');
  }

  String get type_your_phone_subtitle {
    return Intl.message(
        'We will send you a code at your phone to change password',
        name: 'type_your_phone_subtitle');
  }

  String get confirm_your_phone {
    return Intl.message('Confirm your phone', name: 'confirm_your_phone');
  }

  String get confirm_your_phone_subtitle {
    return Intl.message('Sms has been sent to',
        name: 'confirm_your_phone_subtitle');
  }

  String get confirm {
    return Intl.message('Confirm', name: 'confirm');
  }

  String get resend {
    return Intl.message('Resend', name: 'resend');
  }

  String get change_your_password {
    return Intl.message('Change your password', name: 'change_your_password');
  }

  String get change_your_password_subtitle {
    return Intl.message('Type your new password',
        name: 'change_your_password_subtitle');
  }

  String get new_password {
    return Intl.message('New password', name: 'new_password');
  }

  String get sing_in_sub {
    return Intl.message('Welcome again sign in to continue',
        name: 'sing_in_sub');
  }

  String get sing_up_sub {
    return Intl.message('Welcome, sign in to continue', name: 'sing_up_sub');
  }

  String get continue_sign_up {
    return Intl.message('Continue', name: 'continue');
  }

  String get have_account {
    return Intl.message('Have account?', name: 'have_account');
  }

  String get enter_your_detail {
    return Intl.message('Enter your detail', name: 'enter_your_detail');
  }

  String get enter_your_detail_sub {
    return Intl.message('Enter password to use it when sign in your account',
        name: 'enter_your_detail_sub');
  }

  String get full_name {
    return Intl.message('Full name', name: 'full_name');
  }

//  wife_education

  //    "preschool" : MessageLookupByLibrary.simpleMessage("preschool"),
  //    "secondaryschool" : MessageLookupByLibrary.simpleMessage("secondaryschool"),
  //    "collectors" : MessageLookupByLibrary.simpleMessage("collectors"),
  //    "flat" : MessageLookupByLibrary.simpleMessage("flat"),
  String get secondaryschool {
    return Intl.message('secondaryschool', name: 'secondaryschool');
  }

  String get preschool {
    return Intl.message('preschool', name: 'preschool');
  }

  String get edit {
    return Intl.message('edit', name: 'edit');
  }

  String get collectors {
    return Intl.message('collectors', name: 'collectors');
  }

  String get flat {
    return Intl.message('flat', name: 'flat');
  }

  String get house {
    return Intl.message('house', name: 'house');
  }

  String get villa {
    return Intl.message('villa', name: 'villa');
  }

  String get welcome_notification {
    return Intl.message('Welcome to sawaied Application',
        name: 'welcome_notification');
  }

  String get profile_notification {
    return Intl.message('please complete your profile information',
        name: 'profile_notification');
  }

  String get obligations_of_the_employer {
    return Intl.message('Obligations of the employer',
        name: 'obligations_of_the_employer');
  }

  String get rights_of_domestic_workers {
    return Intl.message('Rights of domestic workers:',
        name: 'rights_of_domestic_workers');
  }

  String get complaints_and_disputes {
    return Intl.message('Complaints and disputes',
        name: 'complaints_and_disputes');
  }

  String get save {
    return Intl.message('Save', name: 'save');
  }

  String get clear {
    return Intl.message('Clear', name: 'clear');
  }

  String get submit {
    return Intl.message('Submit', name: 'submit');
  }

  String get digital_signature {
    return Intl.message('Digital signature', name: 'digital_signature');
  }

  String get upload_or_draw_your_signature {
    return Intl.message('upload or draw your signature',
        name: 'upload_or_draw_your_signature');
  }

  String get add_your_signature {
    return Intl.message('Add your signature', name: 'Add_your_signature');
  }

  String get payment_summary {
    return Intl.message('Payment summary"', name: 'payment_summary');
  }

  String get quantity {
    return Intl.message('Quantity', name: 'quantity');
  }

  String get price_unit {
    return Intl.message('Price unit"', name: 'price_unit');
  }

  String get sar {
    return Intl.message('SAR', name: 'sar');
  }

  String get price_subtotal {
    return Intl.message('Price subtotal', name: 'price_subtotal');
  }

  String get cancel {
    return Intl.message('Cancel', name: 'cancel');
  }

  String get save_my_location {
    return Intl.message('Save my location', name: 'save_my_location');
  }

  String get enter_the_address {
    return Intl.message('Enter the address', name: 'enter_the_address');
  }

  String get my_location {
    return Intl.message('My location', name: 'my_location');
  }

  String get family_card {
    return Intl.message('Family card', name: 'family_card');
  }

  String get track_your_order {
    return Intl.message('Track Your Order', name: 'track_your_order');
  }

  String get track_your_order_content {
    return Intl.message(
        'We provide your availability to track your order and know it,s progress',
        name: 'track_your_order_content');
  }

  String get comfort_and_ease {
    return Intl.message('Comfort and ease', name: 'comfort_and_ease');
  }

  String get comfort_and_ease_content {
    return Intl.message(
        'You can do your order without do any effort and in a few minutes',
        name: 'comfort_and_ease_content');
  }

  String get the_perfect_choice {
    return Intl.message('The perfect choice', name: 'the_perfect_choice');
  }

  String get the_perfect_choice_content {
    return Intl.message(
        'We provide you with the best workers according to your requirements',
        name: 'the_perfect_choice_content');
  }

  String get upload_profile_image {
    return Intl.message('upload profile image image',
        name: 'upload_profile_image');
  }

  String get upload_visa {
    return Intl.message('upload your visa', name: 'upload_visa');
  }

  String get upload_family_doc {
    return Intl.message('upload your family docs', name: 'upload_family_doc');
  }

  String get sure_to_delete {
    return Intl.message('Are you sure do you want to delete this order?',
        name: 'sure_to_delete');
  }

  String get out_of_service {
    return Intl.message('Service not available try again later',
        name: 'out_of_service');
  }

  String get no_internet_connection {
    return Intl.message('Check your internet connection',
        name: 'no_internet_connection');
  }

  String get updated_successfully {
    return Intl.message('Your order has been updated successfully',
        name: 'updated_successfully');
  }

  String get file_uploaded {
    return Intl.message('File Uploaded Successfully', name: 'file_uploaded');
  }

  String get removed {
    return Intl.message('File Removed Successfully', name: 'removed');
  }

  String get upload_docs {
    return Intl.message('Upload Documents', name: 'upload_docs');
  }

  String get locale {
    return Intl.message('en', name: 'locale');
  }
}

//Localized values are loaded by the Localizations widget’s list of LocalizationsDelegates.
class SpecificLocalizationDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  final Locale overriddenLocale;

  SpecificLocalizationDelegate(this.overriddenLocale);

  @override
  bool isSupported(Locale locale) => overriddenLocale != null;

  @override
  Future<AppLocalizations> load(Locale locale) =>
      AppLocalizations.load(overriddenLocale);

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => true;
}
