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
    '5i4sjs4j': {
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
    'v2nsdv8j': {
      'en': 'Authentication',
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
      'es': '',
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
      'es': '',
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
    'nooxdgw5': {
      'en':
          'We realize that \"Household\" is pretty generic and you might not want to call it a \"Household\". \nYou can rename \"Household\" to anything you like such as \"Family\" or \"Crew\"',
      'es': '',
    },
    'a7c8wiuz': {
      'en': 'Custom Naming',
      'es': '',
    },
    '1t7v9pat': {
      'en': 'Crew',
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
      'en': '+ Household',
      'es': '',
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
    'tpzcihbt': {
      'en': 'The Purple Piggy Bank',
      'es': '',
    },
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
    'hcw9t6xx': {
      'en': 'Home',
      'es': '',
    },
  },
  // Onboarding
  {
    'cbyqhghe': {
      'en': 'Welcome!',
      'es': '',
    },
    'af2jqzn1': {
      'en':
          'Thanks for joining! Access or create your account below, and get started on your budgeting like a pro!',
      'es': '',
    },
    'ir5ppysr': {
      'en': 'Accept Invitation',
      'es': '',
    },
    'otv926su': {
      'en': 'Login',
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
      'en': '+ Source',
      'es': '',
    },
  },
  // AddIncome
  {
    'q1ny1778': {
      'en': 'Income Name',
      'es': '',
    },
    'pp3l1cml': {
      'en': 'Enter bill name',
      'es': '',
    },
    '0dvyk67v': {
      'en': 'Amount',
      'es': '',
    },
    'vpoh4cgg': {
      'en': 'Enter amount',
      'es': '',
    },
    'j6fqylve': {
      'en': 'Amount Due',
      'es': '',
    },
    '1ufli95j': {
      'en': 'When was the most recent Payday? ',
      'es': '',
    },
    '1klthsxv': {
      'en': 'Monthly',
      'es': '',
    },
    'zx44d1cv': {
      'en': 'Once',
      'es': '',
    },
    'vaogu79n': {
      'en': 'Weekly',
      'es': '',
    },
    'flhf5240': {
      'en': 'Bi-weekly',
      'es': '',
    },
    '2o125dsz': {
      'en': 'Monthly',
      'es': '',
    },
    '07cl0k1o': {
      'en': 'Annually',
      'es': '',
    },
    'okwlwyck': {
      'en': 'Semi Annually',
      'es': '',
    },
    '951wa55t': {
      'en': 'Select Frequency of the Bill...',
      'es': '',
    },
    'rgalr3kn': {
      'en': 'Search for an item...',
      'es': '',
    },
    'xid3od52': {
      'en': 'Description',
      'es': '',
    },
    'wzoygrpw': {
      'en': 'Enter description',
      'es': '',
    },
    '3r4paw7p': {
      'en': 'Select Default Payment Source',
      'es': '',
    },
    'l01zt3l8': {
      'en': 'Search for an item...',
      'es': '',
    },
    '364foyf5': {
      'en': 'Add Bill',
      'es': '',
    },
    '3m7i7cpd': {
      'en': 'Add Income',
      'es': '',
    },
    '55a2tubh': {
      'en': 'Add Income',
      'es': '',
    },
  },
  // Dashboard
  {
    '8y3uhcx6': {
      'en': 'Profit Details',
      'es': '',
    },
    'hu3l4f84': {
      'en': 'Sales & Revenue',
      'es': '',
    },
    'lyze5gf1': {
      'en': '56.4k',
      'es': '',
    },
    'rxxyr93w': {
      'en': 'Customers',
      'es': '',
    },
    'uma07nf8': {
      'en': '\$320k',
      'es': '',
    },
    'ihvvmo0x': {
      'en': 'Total Sales',
      'es': '',
    },
    '0q1aeml0': {
      'en': '\$45.6M',
      'es': '',
    },
    'hz5ioo3f': {
      'en': 'Revenue',
      'es': '',
    },
    '0wd67j9a': {
      'en': '56.4k',
      'es': '',
    },
    '6yxsvi6r': {
      'en': 'Customers',
      'es': '',
    },
    'v96tbibd': {
      'en': 'Your transactions',
      'es': '',
    },
    'mswmaf6w': {
      'en': 'List Item Title',
      'es': '',
    },
    'aailzsb7': {
      'en': 'Secondary text',
      'es': '',
    },
    'n1u4x2q1': {
      'en': '\$1.50',
      'es': '',
    },
    'pllte5ao': {
      'en': 'List Item Title',
      'es': '',
    },
    'c80wf9le': {
      'en': 'Secondary text',
      'es': '',
    },
    'ssaguqhw': {
      'en': '\$1.50',
      'es': '',
    },
    '4g6aonuv': {
      'en': 'List Item Title',
      'es': '',
    },
    'ui9t1fup': {
      'en': 'Secondary text',
      'es': '',
    },
    '2qn157vw': {
      'en': '\$1.50',
      'es': '',
    },
    'jjjo7au4': {
      'en': 'List Item Title',
      'es': '',
    },
    '4dlkj85b': {
      'en': 'Secondary text',
      'es': '',
    },
    'h77t1cc0': {
      'en': '\$1.50',
      'es': '',
    },
    'xas0e6hp': {
      'en': 'Dashboard',
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
    '65lqzrda': {
      'en': 'Select Date',
      'es': '',
    },
    'e9f66mmn': {
      'en': 'Amount',
      'es': '',
    },
    'kcur2liw': {
      'en': 'Transaction Type',
      'es': '',
    },
    '4azbmnv7': {
      'en': 'Transaction Date',
      'es': '',
    },
    'ycld1wwp': {
      'en': 'Category',
      'es': '',
    },
    'mtdtuxub': {
      'en': 'Description',
      'es': '',
    },
    '4zkzyd6e': {
      'en': 'Status - On for cleared, off for pending',
      'es': '',
    },
    'spxwz1p6': {
      'en': 'Tags',
      'es': '',
    },
    '67yj6s6b': {
      'en': 'Comma separated list',
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
    'ns0ri40b': {
      'en': 'Back',
      'es': '',
    },
    'ufnfnr57': {
      'en': 'Add Transaction',
      'es': '',
    },
    '05fwsqja': {
      'en': 'Add Transaction',
      'es': '',
    },
  },
  // AddBill
  {
    'xjd2xux6': {
      'en': 'Is It a debt?',
      'es': '',
    },
    'oef218an': {
      'en': 'Category',
      'es': '',
    },
    '32xa7pva': {
      'en': 'Enter category',
      'es': '',
    },
    'q74vhmki': {
      'en': 'Bill Name',
      'es': '',
    },
    'hh9w8doq': {
      'en': 'Enter bill name',
      'es': '',
    },
    'icpty767': {
      'en': 'Amount',
      'es': '',
    },
    'd5znjo5h': {
      'en': 'Enter amount',
      'es': '',
    },
    '8ga75k5r': {
      'en': 'Amount Due',
      'es': '',
    },
    '9cpqd1jq': {
      'en': 'Day of Month The Bill Is Due',
      'es': '',
    },
    'nqpcoyfe': {
      'en': 'Enter day of month',
      'es': '',
    },
    'nqusbqaw': {
      'en': 'Monthly',
      'es': '',
    },
    'z4tmv4yo': {
      'en': 'Once',
      'es': '',
    },
    'xtx65ojj': {
      'en': 'Weekly',
      'es': '',
    },
    'mavgzir7': {
      'en': 'Bi-weekly',
      'es': '',
    },
    'ebvg5inu': {
      'en': 'Monthly',
      'es': '',
    },
    '4nh1wlup': {
      'en': 'Annually',
      'es': '',
    },
    '8g90iyf5': {
      'en': 'Semi Annually',
      'es': '',
    },
    'qrqieulk': {
      'en': 'Select Frequency of the Bill...',
      'es': '',
    },
    '0svm68e7': {
      'en': 'Search for an item...',
      'es': '',
    },
    'ozifmw34': {
      'en': 'Cash Back',
      'es': '',
    },
    'tm0cioj1': {
      'en': 'Enter cash back amount',
      'es': '',
    },
    '3b9d15eq': {
      'en': 'Interest Rate',
      'es': '',
    },
    '8kz7xygu': {
      'en': 'Enter interest rate',
      'es': '',
    },
    'dq7z7jlr': {
      'en': 'Description',
      'es': '',
    },
    'xb9b72y5': {
      'en': 'Enter description',
      'es': '',
    },
    'ccjdc3fk': {
      'en': 'URL',
      'es': '',
    },
    '0jtvmcf0': {
      'en': 'Enter URL',
      'es': '',
    },
    '7c52mt78': {
      'en': 'Online Web Portal URL',
      'es': '',
    },
    '9xzg56l6': {
      'en': 'Store your biller\'s credentials here',
      'es': '',
    },
    'cswnncxy': {
      'en': 'Username',
      'es': '',
    },
    'y04z6gyx': {
      'en': 'Enter username',
      'es': '',
    },
    'bq22s8x8': {
      'en': 'Password',
      'es': '',
    },
    'ps6bgli0': {
      'en': 'Enter password',
      'es': '',
    },
    'g8hupi21': {
      'en': 'Select Default Payment Source',
      'es': '',
    },
    'qexk1678': {
      'en': 'Search for an item...',
      'es': '',
    },
    'zj35fnfh': {
      'en': 'Add Bill',
      'es': '',
    },
    'm8l3oht4': {
      'en': 'Add Bill',
      'es': '',
    },
    'edqtajv7': {
      'en': 'Add Bill',
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
