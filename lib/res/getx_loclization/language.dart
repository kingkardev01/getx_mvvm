import 'package:get/get_navigation/src/root/internacionalization.dart';

class Language extends  Translations {
  @override
  // TODO: implement keys
  Map<String, Map<String, String>> get keys =>
      {
        'en_US': {
          'message': "What is Your Name?",
          'name': "Raj",
          'internet_exception' : "We're unable to show result. \nPlease Check Your Data \nconnection",
          'general_exception' : "We're unable to process your request. \nplease try again",
          'welcome_back' : "Welcome\nBack",

        },
        'bn_Bn': {
          'message': "আপনার নাম কি?",
          'name': "রাজ",
        }
      };
}