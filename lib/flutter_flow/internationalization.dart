import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Signin
  {
    '3o0aopk8': {
      'en': 'Create Account',
      'es': '',
    },
    'qlwdvlx9': {
      'en': 'Create Account',
      'es': '',
    },
    '575sz4c5': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': '',
    },
    'szzj6l6s': {
      'en': 'Email',
      'es': '',
    },
    '5yd9bxbf': {
      'en': 'Phone Number',
      'es': '',
    },
    'ozmy124q': {
      'en': 'Must include country Code (+1 for USA)',
      'es': '',
    },
    'gysxo2v5': {
      'en': 'First Name',
      'es': '',
    },
    '0hxe5evr': {
      'en': 'Last Name',
      'es': '',
    },
    'fj38yy7p': {
      'en': 'Opt in to pigs and promotions in your email',
      'es': '',
    },
    'c1reb919': {
      'en': 'Get Started',
      'es': '',
    },
    'g4xt8jzj': {
      'en': 'Log In',
      'es': '',
    },
    '9bvaijeh': {
      'en': 'Welcome Back',
      'es': '',
    },
    'if7jzkul': {
      'en': 'Fill out the information below in order to access your account.',
      'es': '',
    },
    '2wnr3uh4': {
      'en': 'Email',
      'es': '',
    },
    'djbwfj0u': {
      'en': 'Password',
      'es': '',
    },
    'll5c0lsv': {
      'en': 'Sign In',
      'es': '',
    },
    'ufx7k0mh': {
      'en': 'Forgot Password?',
      'es': '',
    },
    'vtgmm7q4': {
      'en': 'Home',
      'es': '',
    },
  },
  // ConfirmEmail
  {
    '1vq0vg61': {
      'en': 'Check your email for a confirmation code and enter it below',
      'es':
          'Revise su correo electrónico para obtener un código de confirmación e ingréselo a continuación',
    },
    'farkll3t': {
      'en': 'Email ',
      'es': '',
    },
    'qq3gscsk': {
      'en': 'Confirm Email',
      'es': '',
    },
    'j2i0w2sq': {
      'en': 'Confirm Email',
      'es': 'Confirmar correo electrónico',
    },
    '37hgvmq8': {
      'en': 'Home',
      'es': '',
    },
  },
  // ForgotPassword
  {
    'fx2881bz': {
      'en': 'Email Address',
      'es': '',
    },
    'rc01xg0y': {
      'en': 'Send Me A Reset Code',
      'es': '',
    },
    '2am5b5rj': {
      'en': 'Forgot Password',
      'es': '',
    },
    'weuga2mf': {
      'en': 'Home',
      'es': '',
    },
  },
  // PasswordResetCode
  {
    '0gz2rmx2': {
      'en': 'Check your email for a confirmation code and enter it below',
      'es': '',
    },
    'wbq0ceu0': {
      'en': 'Email ',
      'es': '',
    },
    '605g85ml': {
      'en': 'New Password',
      'es': '',
    },
    'meylnatd': {
      'en': 'New Password',
      'es': '',
    },
    '4i8acf0j': {
      'en': 'Set New Password',
      'es': '',
    },
    '8br3hawr': {
      'en': 'Reset Password',
      'es': '',
    },
    '17l9whbe': {
      'en': 'Home',
      'es': '',
    },
  },
  // CreateHousehold
  {
    'h4sli1ln': {
      'en':
          'At The Purple Piggy Bank, a \"Household\" is a grouping of budgets. \nYou can name it anything you want.',
      'es': '',
    },
    'iaxqzjl5': {
      'en': 'Household Name',
      'es': '',
    },
    'xhd4vi2y': {
      'en': 'Create',
      'es': '',
    },
    'x9x4ewe6': {
      'en': 'New Household',
      'es': '',
    },
    'eu989foe': {
      'en': 'Household',
      'es': 'Familiar',
    },
  },
  // AddInvite
  {
    'e9xsw3b5': {
      'en': 'Invite other people to join your Household',
      'es': '',
    },
    'cyxy4rka': {
      'en': 'Email',
      'es': '',
    },
    'ubx6bxb3': {
      'en': 'Send Invitation',
      'es': '',
    },
    'njugttrp': {
      'en': 'Invitations',
      'es': '',
    },
    'iu711l4q': {
      'en': 'Invite',
      'es': '',
    },
  },
  // AcceptInvite
  {
    'mnsha0nh': {
      'en': 'Create Account',
      'es': '',
    },
    'djc2g0px': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': '',
    },
    'zaub49d3': {
      'en': 'Invitation Code',
      'es': '',
    },
    'gu7rmizj': {
      'en': 'Email',
      'es': '',
    },
    '5oop769j': {
      'en': 'First Name',
      'es': '',
    },
    'zfst9hvb': {
      'en': 'Last Name',
      'es': '',
    },
    'f2glau2e': {
      'en': 'Email',
      'es': '',
    },
    'kvy56omx': {
      'en': 'Phone Number',
      'es': '',
    },
    '3q3io1ce': {
      'en': 'Must include country Code (+1 for USA)',
      'es': '',
    },
    'xaoqsfo0': {
      'en': 'Opt into getting pigs and promotions in your email inbox!',
      'es': '',
    },
    'iaocvn8j': {
      'en': 'Get Started',
      'es': '',
    },
    'gip10886': {
      'en': 'Accept Invite',
      'es': '',
    },
    'hcw9t6xx': {
      'en': 'Home',
      'es': '',
    },
  },
  // Onboarding
  {
    'cbyqhghe': {
      'en': 'Silly Name, Serious Ledgering',
      'es': '',
    },
    'af2jqzn1': {
      'en':
          'Access or create your account below, and track expenses like a pro!',
      'es': '',
    },
    'otv926su': {
      'en': 'Login',
      'es': '',
    },
    'ir5ppysr': {
      'en': 'Confirm Email',
      'es': '',
    },
    'pifffp3g': {
      'en': 'YourEmail@Example.com',
      'es': 'TucorreoElectrónico@ejemplo.com',
    },
    'ube4hh6q': {
      'en': 'Accept Invitation',
      'es': '',
    },
    'lu7sjzp3': {
      'en': 'Disclaimer: The Purple Piggy Bank LLC is not a bank. ',
      'es': '',
    },
    '1nhlwor7': {
      'en': 'Home',
      'es': '',
    },
  },
  // AddPaymentSource
  {
    'sk4eh2c5': {
      'en':
          'Add a payment source - This is a way to group where money comes from in your budget.',
      'es': '',
    },
    'z2m9uclw': {
      'en': 'Checking Account',
      'es': '',
    },
    'ws33hl8u': {
      'en': 'Savings Account',
      'es': '',
    },
    'jwfnib8d': {
      'en': 'Credit Card',
      'es': '',
    },
    '9xsvlp7o': {
      'en': 'Loan',
      'es': '',
    },
    'acwla0kl': {
      'en': 'Other',
      'es': '',
    },
    '6r1kaacv': {
      'en': 'Please select what kind of Account...',
      'es': '',
    },
    '2ybb0ce2': {
      'en': 'Search for an item...',
      'es': '',
    },
    '4v5wqfiw': {
      'en': 'Source Name',
      'es': '',
    },
    '6x7onls4': {
      'en': 'Enter source name...',
      'es': '',
    },
    '3f43rvnn': {
      'en': 'Description',
      'es': '',
    },
    '0xdijax9': {
      'en': 'Enter source name...',
      'es': '',
    },
    'ulu3nsub': {
      'en': 'Create Payment Source',
      'es': '',
    },
    'fm7jzi5a': {
      'en': 'Wallet',
      'es': '',
    },
    '7ixebahq': {
      'en': 'Source',
      'es': '',
    },
  },
  // AddTransaction
  {
    't70q27te': {
      'en': 'Select Household',
      'es': '',
    },
    'm5857s2k': {
      'en': 'Search for an item...',
      'es': '',
    },
    'uhtw2gk0': {
      'en': 'Select Payment Source',
      'es': '',
    },
    'n58ce5nj': {
      'en': 'Search for an item...',
      'es': '',
    },
    '3rxdjor6': {
      'en': 'Debit',
      'es': '',
    },
    'qbi4j055': {
      'en': 'Debit',
      'es': '',
    },
    '21e2irl6': {
      'en': 'Credit',
      'es': '',
    },
    'hvuu66ls': {
      'en': 'Transaction Type',
      'es': '',
    },
    '7juctawh': {
      'en': 'Search for an item...',
      'es': '',
    },
    'e9f66mmn': {
      'en': 'Amount',
      'es': '',
    },
    'ycld1wwp': {
      'en': 'Category',
      'es': '',
    },
    '7fyxldcf': {
      'en': 'Description',
      'es': '',
    },
    'e0zusb6e': {
      'en': 'Tags',
      'es': '',
    },
    '4atshyry': {
      'en': 'Comma Separated List',
      'es': '',
    },
    '4zkzyd6e': {
      'en': 'Cleared?                                                 ',
      'es': '',
    },
    '63be80wb': {
      'en': 'Upload Receipt Photo (Optional)',
      'es': '',
    },
    '4bisizbg': {
      'en': 'Add Transaction',
      'es': '',
    },
    '4s9ckp50': {
      'en': 'Add Transaction',
      'es': '',
    },
    '05fwsqja': {
      'en': 'Transaction',
      'es': 'Transacción',
    },
  },
  // EditUser
  {
    'as6f07xi': {
      'en': 'Email',
      'es': '',
    },
    'zblrg04i': {
      'en': 'Phone Number',
      'es': '',
    },
    'ohk2irdi': {
      'en': 'Update Profile',
      'es': '',
    },
    'gtkjzs45': {
      'en': 'Edit Profile',
      'es': '',
    },
    '9iag3u40': {
      'en': 'Home',
      'es': '',
    },
  },
  // EditPage
  {
    'aknel4u0': {
      'en': 'Navigation',
      'es': '',
    },
    'kehrrac3': {
      'en': 'Add Household',
      'es': '',
    },
    'uqoqemc3': {
      'en': 'Household Members',
      'es': '',
    },
    'vlmedd7c': {
      'en': 'Payment Sources',
      'es': '',
    },
    'x19oa06p': {
      'en': 'Bills',
      'es': '',
    },
    'lbng236n': {
      'en': 'Incomes',
      'es': '',
    },
    '9lph6yzp': {
      'en': 'Settings',
      'es': '',
    },
    '822sr01o': {
      'en': 'Settings',
      'es': 'Ajustes',
    },
  },
  // EditMembers
  {
    'rbuy9zv2': {
      'en': 'Please select...',
      'es': '',
    },
    'm95pe4l2': {
      'en': 'Search for an item...',
      'es': '',
    },
    'thrxst7n': {
      'en': 'Select Household',
      'es': '',
    },
    'v2p6ljb1': {
      'en': 'Name',
      'es': '',
    },
    'h8hl93yq': {
      'en': 'Email',
      'es': '',
    },
    'y3cy5jhy': {
      'en': 'Joined',
      'es': '',
    },
    'qpct2gd7': {
      'en': 'Action',
      'es': '',
    },
    'vea6crhu': {
      'en': 'Edit Members',
      'es': '',
    },
    'c3unpp3a': {
      'en': 'Home',
      'es': '',
    },
  },
  // Ledger
  {
    'x4op0soz': {
      'en': 'Ledger',
      'es': '',
    },
    'gvsa5ee9': {
      'en': 'example',
      'es': '',
    },
    'rb34tajy': {
      'en': 'Please select...',
      'es': '',
    },
    '420kk0dd': {
      'en': 'Search for an item...',
      'es': '',
    },
    'bonlneeh': {
      'en': 'Select Household',
      'es': '',
    },
    'ospnywwi': {
      'en': '\$25,000',
      'es': '',
    },
    'rbq3v38o': {
      'en': 'Per Month',
      'es': '',
    },
    'xikxdf8u': {
      'en': 'View Spending Habits',
      'es': '',
    },
    'v1wepj7f': {
      'en': 'Total Spent',
      'es': '',
    },
    'afpy76my': {
      'en': '\$2,502',
      'es': '',
    },
    'rox8f5j1': {
      'en': 'Transactions',
      'es': '',
    },
    'cot3dzfe': {
      'en': 'Go Far Rewards',
      'es': '',
    },
    '3m18avbc': {
      'en': 'Income',
      'es': '',
    },
    '3lmuyhzv': {
      'en': '-\$50.00',
      'es': '',
    },
    'vn94z4e2': {
      'en': 'Tues. 15, 4:32',
      'es': '',
    },
    'tbblvxfj': {
      'en': 'Go Far Rewards',
      'es': '',
    },
    'z34irg5z': {
      'en': 'Income',
      'es': '',
    },
    '3ev4j9o8': {
      'en': '-\$50.00',
      'es': '',
    },
    'fk3fjhau': {
      'en': 'Tues. 15, 4:32',
      'es': '',
    },
    'r7tx4z83': {
      'en': 'Go Far Rewards',
      'es': '',
    },
    'm7at87h6': {
      'en': 'Income',
      'es': '',
    },
    'j4yl2qn3': {
      'en': '\$50.00',
      'es': '',
    },
    'yd3j316e': {
      'en': 'Tues. 15, 4:32',
      'es': '',
    },
    'qsmrrqhi': {
      'en': 'Ledger',
      'es': '',
    },
  },
  // Settings
  {
    'oabp5o41': {
      'en': 'Navigation',
      'es': '',
    },
    '01ht5zc3': {
      'en': 'Settings',
      'es': '',
    },
    '4aqkug6y': {
      'en': 'Edit Profile',
      'es': '',
    },
    'y80indk0': {
      'en': 'View Security Logs',
      'es': '',
    },
    '5vm2te1p': {
      'en': 'Invitations',
      'es': '',
    },
    'y1ef1kt8': {
      'en': 'Edit Members',
      'es': '',
    },
    '8umt9gnn': {
      'en': 'Default Payment Source',
      'es': '',
    },
    'ia9ir3ju': {
      'en': 'Default Currency',
      'es': '',
    },
    'c0560gxy': {
      'en': 'Set Threshold',
      'es': '',
    },
    'u4o33ie3': {
      'en': 'Camera Access',
      'es': '',
    },
    '3vttzvp5': {
      'en': 'Location Services',
      'es': '',
    },
    'mblc35ec': {
      'en': 'Light Mode',
      'es': '',
    },
    '7ei018dv': {
      'en': 'Dark Mode',
      'es': '',
    },
    'wanc3doe': {
      'en': 'Settings',
      'es': '',
    },
    'v58bmuxq': {
      'en': 'Settings',
      'es': 'Ajustes',
    },
  },
  // SupportPage
  {
    'daqypr0m': {
      'en': 'Welcome to support',
      'es': '',
    },
    's4p8bwcw': {
      'en': 'How can we help you?',
      'es': '',
    },
    'pp3fdz25': {
      'en': 'Call Us',
      'es': '',
    },
    '3rv7c8y5': {
      'en': 'Email Us',
      'es': '',
    },
    'ki3fov0k': {
      'en': 'Search FAQs',
      'es': '',
    },
    '4ppd4tfy': {
      'en': 'Review FAQ\'s below',
      'es': '',
    },
    '6edu6oon': {
      'en': 'How do I download Code?',
      'es': '',
    },
    '4r7dkrbd': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'es': '',
    },
    '6e2ofzkv': {
      'en': 'How do I download Code?',
      'es': '',
    },
    'bff1bm0g': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'es': '',
    },
    '4f1v6q5q': {
      'en': 'How do I download Code?',
      'es': '',
    },
    'xegr3w85': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'es': '',
    },
    's0vpir3e': {
      'en': 'Create Ticket',
      'es': '',
    },
    'go1rregl': {
      'en': 'Chat Now',
      'es': '',
    },
    '9n52auf3': {
      'en': 'Get support',
      'es': '',
    },
    '9iag3u40': {
      'en': 'Home',
      'es': '',
    },
  },
  // Incomes
  {
    'b5644f6r': {
      'en': 'Please select...',
      'es': '',
    },
    'cj41nyjg': {
      'en': 'Search for an item...',
      'es': '',
    },
    'mgkw5p93': {
      'en': 'Select Household',
      'es': '',
    },
    'u28qwsa5': {
      'en': 'Your Incomes',
      'es': '',
    },
    'vcczyaud': {
      'en': 'Below is a list of your Incomes',
      'es': '',
    },
    'tvk6z2pm': {
      'en': 'Acme Inc',
      'es': '',
    },
    'hsq7mpyf': {
      'en': '\$3000.00',
      'es': '',
    },
    'f8fmejfp': {
      'en': 'Acme Inc',
      'es': '',
    },
    'di33lb7o': {
      'en': '\$3000.00',
      'es': '',
    },
    '92t2d8lk': {
      'en': 'Total',
      'es': '',
    },
    'i6dyqr5f': {
      'en': '\$6000.00',
      'es': '',
    },
    'k2vsn58t': {
      'en': 'Incomes',
      'es': '',
    },
    'qsrie90l': {
      'en': 'Home',
      'es': 'Ajustes',
    },
  },
  // PaymentSources
  {
    '1r8khj5g': {
      'en': 'example',
      'es': '',
    },
    '5e1lbvdq': {
      'en': 'Please select...',
      'es': '',
    },
    'sowexalv': {
      'en': 'Search for an item...',
      'es': '',
    },
    'z8my2sk5': {
      'en': 'Select Household',
      'es': '',
    },
    'im36hlko': {
      'en': 'Below are your Payment Sources in your Wallet',
      'es': '',
    },
    'us4c4f6b': {
      'en': 'Ally Bank',
      'es': '',
    },
    'skpnyt6t': {
      'en': '\$120.00',
      'es': '',
    },
    '37esf9cp': {
      'en': 'Ally Bank',
      'es': '',
    },
    '8m59cmh4': {
      'en': '\$120.00',
      'es': '',
    },
    '613bhj3p': {
      'en': 'Ally Bank',
      'es': '',
    },
    'q629z3gz': {
      'en': '\$120.00',
      'es': '',
    },
    'qupcx8y4': {
      'en': 'Ally Bank',
      'es': '',
    },
    's01hu3pq': {
      'en': '\$120.00',
      'es': '',
    },
    'l82f07as': {
      'en': 'Ally Bank',
      'es': '',
    },
    'ou68hp39': {
      'en': '\$120.00',
      'es': '',
    },
    'e1z8g8gu': {
      'en': 'Ally Bank',
      'es': '',
    },
    '941uql2d': {
      'en': '\$120.00',
      'es': '',
    },
    'p678pn5d': {
      'en': 'Payment Sources',
      'es': '',
    },
    '7jw3q0de': {
      'en': 'Sources',
      'es': '',
    },
  },
  // Audit
  {
    'j7q53cpa': {
      'en': 'Activity',
      'es': '',
    },
    'rzkxjfl0': {
      'en': 'All Activity from this past month.',
      'es': '',
    },
    'zvegwe7t': {
      'en': '14, Sept. 2021',
      'es': '',
    },
    'iuff6r7m': {
      'en': 'Created New User',
      'es': '',
    },
    '0x2gnv71': {
      'en': 'Andrew Daniels',
      'es': '',
    },
    '4zp5pca6': {
      'en': 'Andrew F.',
      'es': '',
    },
    'sw6fr7bn': {
      'en': '14, Sept. 2021',
      'es': '',
    },
    'huzm9zd0': {
      'en': 'Creted a Group',
      'es': '',
    },
    '83tiigo2': {
      'en': 'Design Team',
      'es': '',
    },
    'v3uva4px': {
      'en': 'Andrew F.',
      'es': '',
    },
    'ohzf5ko2': {
      'en': '14, Sept. 2021',
      'es': '',
    },
    '6i9dzqts': {
      'en': 'Created Invoice',
      'es': '',
    },
    'dq7xupqt': {
      'en': '#402 - Contractor',
      'es': '',
    },
    '2pljs4rb': {
      'en': 'Andrew F.',
      'es': '',
    },
    '1gbw6tqv': {
      'en': 'Beginning of Activity',
      'es': '',
    },
    'gm39s05q': {
      'en': 'Page Title',
      'es': '',
    },
    'smhrb5vq': {
      'en': 'Home',
      'es': '',
    },
  },
  // defaultCurrency
  {
    '0wg150ir': {
      'en': 'Default Currency',
      'es': '',
    },
    'pveoxysy': {
      'en': 'Invite',
      'es': '',
    },
  },
  // DefaultPaymentSource
  {
    'ns0ri40b': {
      'en': 'Back',
      'es': '',
    },
    '02svdcir': {
      'en': 'Page Title',
      'es': '',
    },
    'x99vtcpk': {
      'en': 'Home',
      'es': '',
    },
  },
  // Export
  {
    'u5nxtkcb': {
      'en': 'Back',
      'es': '',
    },
    'fl8t6l81': {
      'en': 'Page Title',
      'es': '',
    },
    '2lfzp5lt': {
      'en': 'Home',
      'es': '',
    },
  },
  // Bills
  {
    'a68khtne': {
      'en': 'Below are a summary of your Bills',
      'es': '',
    },
    'mamx0tsh': {
      'en': 'All',
      'es': '',
    },
    '4tw0jla3': {
      'en': 'Today',
      'es': '',
    },
    'sve9go7g': {
      'en': 'Slack Ltd',
      'es': '',
    },
    'crpv4tg4': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    '14rquake': {
      'en': '\$24.99',
      'es': '',
    },
    'my9j9365': {
      'en': 'DUE',
      'es': '',
    },
    '9dp5x14z': {
      'en': 'ScreenStudio App',
      'es': '',
    },
    'vpk6ffo3': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    '9gmpjn91': {
      'en': '\$24.99',
      'es': '',
    },
    'ujsvfs1b': {
      'en': 'DUE',
      'es': '',
    },
    '9mhldzsu': {
      'en': 'Earlier Invoices',
      'es': '',
    },
    '5zv4t2aw': {
      'en': 'Dribbble LTD.',
      'es': '',
    },
    'ch5rscfh': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'foc0rcbv': {
      'en': '\$500.00',
      'es': '',
    },
    'ovoqmsvv': {
      'en': 'Overdue',
      'es': '',
    },
    'w6i6fx0b': {
      'en': 'FlutterFlow',
      'es': '',
    },
    'cegzu5ki': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'df7htpzz': {
      'en': '\$500.00',
      'es': '',
    },
    'su305s81': {
      'en': 'Overdue',
      'es': '',
    },
    'gbsmz6gd': {
      'en': 'ScreenStudio App',
      'es': '',
    },
    '9ydao681': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'e2pyt902': {
      'en': '\$24.99',
      'es': '',
    },
    'vpt45q5y': {
      'en': 'Paid',
      'es': '',
    },
    'aua3k91z': {
      'en': 'Slack Ltd',
      'es': '',
    },
    '53p8mnqk': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'bpgio8ut': {
      'en': '\$24.99',
      'es': '',
    },
    'tfxix2kz': {
      'en': 'Paid',
      'es': '',
    },
    'y90uacsu': {
      'en': 'Open',
      'es': '',
    },
    'zhjrb18g': {
      'en': 'Today',
      'es': '',
    },
    'dxe2k6p7': {
      'en': 'ScreenStudio App',
      'es': '',
    },
    'ubzz90pc': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'lhvw7poq': {
      'en': '\$24.99',
      'es': '',
    },
    'hnqmyyni': {
      'en': 'DUE',
      'es': '',
    },
    'r8zqw40a': {
      'en': 'Slack Ltd',
      'es': '',
    },
    'wv6tgmo3': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    '7jbnn9p0': {
      'en': '\$24.99',
      'es': '',
    },
    'jvk7ioii': {
      'en': 'DUE',
      'es': '',
    },
    '3g3m2w9d': {
      'en': 'Earlier Invoices',
      'es': '',
    },
    'c2ravo9b': {
      'en': 'Dribbble LTD.',
      'es': '',
    },
    '83ryuf4e': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'r6r23svw': {
      'en': '\$500.00',
      'es': '',
    },
    '2twfw4qy': {
      'en': 'Overdue',
      'es': '',
    },
    'xnaowzr2': {
      'en': 'FlutterFlow',
      'es': '',
    },
    'haddh10j': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'yzaxytw6': {
      'en': '\$500.00',
      'es': '',
    },
    'w0q5emf0': {
      'en': 'Overdue',
      'es': '',
    },
    'jt2q50ii': {
      'en': 'Paid',
      'es': '',
    },
    '10ju06sl': {
      'en': 'Earlier Invoices',
      'es': '',
    },
    'lcyz7wvz': {
      'en': 'Dribbble LTD.',
      'es': '',
    },
    'e1lktnnr': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'r4gjlyvs': {
      'en': '\$500.00',
      'es': '',
    },
    'kcqix8ks': {
      'en': 'Paid',
      'es': '',
    },
    '8h2ofq90': {
      'en': 'FlutterFlow',
      'es': '',
    },
    '7htdm3v5': {
      'en': 'Paid on: May, 4th 2023',
      'es': '',
    },
    'hcrzs6co': {
      'en': '\$500.00',
      'es': '',
    },
    'v6o8ppn3': {
      'en': 'Paid',
      'es': '',
    },
    'njdtrzbk': {
      'en': 'Invoices',
      'es': '',
    },
    'nlr9n59f': {
      'en': 'Home',
      'es': '',
    },
  },
  // BillDetails
  {
    'ci8rupc1': {
      'en': 'Back',
      'es': '',
    },
    'r1ydype0': {
      'en': 'Page Title',
      'es': '',
    },
    'd1d4fkj3': {
      'en': 'Home',
      'es': '',
    },
  },
  // TransactionDetails
  {
    'kii15ppw': {
      'en': 'Back',
      'es': '',
    },
    'z02vfh3y': {
      'en': 'Page Title',
      'es': '',
    },
    'kjjxxcjc': {
      'en': 'Home',
      'es': '',
    },
  },
  // IncomeDetails
  {
    '1304v4d7': {
      'en': 'Back',
      'es': '',
    },
    'g5w0qfnx': {
      'en': 'Page Title',
      'es': '',
    },
    'uzmjojfi': {
      'en': 'Home',
      'es': '',
    },
  },
  // AddIncome
  {
    '8v3q3h6r': {
      'en': 'Back',
      'es': '',
    },
    '1y305ntt': {
      'en': 'Page Title',
      'es': '',
    },
    '82wih84b': {
      'en': 'Home',
      'es': '',
    },
  },
  // Notifications
  {
    'bbrlqvzv': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    'ku5uqn2r': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'qa5g0rtb': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    '56vr9aty': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    '3gxqt54j': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    'h481xv8a': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'fz7qsx09': {
      'en': 'New Event added to your calendar',
      'es': '',
    },
    '6gv5ng9u': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'xnzdyoyu': {
      'en': 'Profile Modified',
      'es': '',
    },
    'iqhok7a4': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    '6e55dtzm': {
      'en': 'Notifications',
      'es': '',
    },
    'h4lx149j': {
      'en': 'Home',
      'es': '',
    },
  },
  // passwordfield
  {
    '9mr8s7gi': {
      'en': 'New Password',
      'es': '',
    },
  },
  // Miscellaneous
  {
    '57fllogz': {
      'en': 'Please provide Camera access so you can upload receipts',
      'es': '',
    },
    'gqnpf09i': {
      'en': 'Please provide Biometrics access for quicker login',
      'es': '',
    },
    'rrtsqja0': {
      'en': 'Please provide Calendar access for bills',
      'es': '',
    },
    '0jvhuji2': {
      'en': 'Please provide Camera access so you can upload receipts',
      'es': '',
    },
    'u9m5mzh6': {
      'en': 'Please provide access to Photo Library so you can upload receipts',
      'es': '',
    },
    '55v3srad': {
      'en': '',
      'es': '',
    },
    'es8762ji': {
      'en': '',
      'es': '',
    },
    'qsxzzvc2': {
      'en': '',
      'es': '',
    },
    'vnwtrchj': {
      'en': '',
      'es': '',
    },
    'xclnr7ni': {
      'en': '',
      'es': '',
    },
    '53up8ruf': {
      'en': '',
      'es': '',
    },
    'hnr9h57q': {
      'en': '',
      'es': '',
    },
    '0z1wal53': {
      'en': '',
      'es': '',
    },
    'miuzrtvl': {
      'en': '',
      'es': '',
    },
    'm8locfsf': {
      'en': '',
      'es': '',
    },
    'klc8lp4j': {
      'en': '',
      'es': '',
    },
    'dfsifyux': {
      'en': '',
      'es': '',
    },
    '795j3gj6': {
      'en': '',
      'es': '',
    },
    'wd7x988o': {
      'en': '',
      'es': '',
    },
    'khko1hkh': {
      'en': '',
      'es': '',
    },
    'tumf7sjr': {
      'en': '',
      'es': '',
    },
    'wcro1mys': {
      'en': '',
      'es': '',
    },
    'wxjrdbd9': {
      'en': '',
      'es': '',
    },
    'ft0gisuq': {
      'en': '',
      'es': '',
    },
    'bdov1cte': {
      'en': '',
      'es': '',
    },
    '70czdhee': {
      'en': '',
      'es': '',
    },
    'plomdrwt': {
      'en': '',
      'es': '',
    },
    'q49jhonk': {
      'en': '',
      'es': '',
    },
    'lagf6jd9': {
      'en': '',
      'es': '',
    },
    's1lod96p': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
