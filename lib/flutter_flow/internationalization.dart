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
  // Login
  {
    '3o0aopk8': {
      'en': 'Create Account',
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
    '5sz8a6gy': {
      'en': 'Verify Email',
      'es': '',
    },
    'q9229y1u': {
      'en': 'Disclaimer: The Purple Piggy Bank LLC is not a bank. ',
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
    '6nzki83f': {
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
    'a5mfuda6': {
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
    'eyl5bpan': {
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
    '8x49gfpl': {
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
    '16zeiofc': {
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
    'sb2wijru': {
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
    '7yhlzdh9': {
      'en': 'Add Wallet',
      'es': '',
    },
    '7ixebahq': {
      'en': 'Source',
      'es': '',
    },
  },
  // AddTransaction
  {
    'vo5hz1hl': {
      'en': 'example',
      'es': '',
    },
    'vccgc66r': {
      'en': 'Please select...',
      'es': '',
    },
    'ccxc1zac': {
      'en': 'Search for an item...',
      'es': '',
    },
    '40l6c4aq': {
      'en': 'Select Household',
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
    'm9j6ef06': {
      'en': 'Comma Separated List',
      'es': '',
    },
    '4zkzyd6e': {
      'en': 'Cleared?                                                 ',
      'es': '',
    },
    '63be80wb': {
      'en': 'Upload Receipt',
      'es': '',
    },
    '4bisizbg': {
      'en': 'Add Transaction',
      'es': '',
    },
    'lp5a8drp': {
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
    '3l81ad7s': {
      'en': 'Edit Profile',
      'es': '',
    },
    '9iag3u40': {
      'en': 'Home',
      'es': '',
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
    'po44mldl': {
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
    'cw2zxs05': {
      'en': 'Ledger',
      'es': '',
    },
    'o57j60hj': {
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
    'lfic0wqw': {
      'en': 'View Spending Habits',
      'es': '',
    },
    'aqz1p02h': {
      'en': 'Total Spent This month: ',
      'es': '',
    },
    'jjxlbdrz': {
      'en': 'Safe To Spend: ',
      'es': '',
    },
    '9lfzaqnh': {
      'en': 'Everything',
      'es': 'Todo',
    },
    'pptwt2a3': {
      'en': 'This Month',
      'es': '',
    },
    'coyp2r0z': {
      'en': 'Cleared',
      'es': '',
    },
    'zu5jz6j9': {
      'en': 'Ledger',
      'es': '',
    },
  },
  // Settings
  {
    '4aqkug6y': {
      'en': 'Change Email / Phone number',
      'es': '',
    },
    '8cs5qwjs': {
      'en': 'Add Household',
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
    'v9sa2szt': {
      'en': 'Light Mode',
      'es': '',
    },
    'rbskjpgt': {
      'en': 'Dark Mode',
      'es': '',
    },
    'ib4ulrrm': {
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
    '9pqd4siy': {
      'en': 'Welcome to support',
      'es': '',
    },
    'hpwg9gjl': {
      'en': 'How can we help you?',
      'es': '',
    },
    'mp4ske2y': {
      'en': 'Call Us',
      'es': '',
    },
    'u4o3txwx': {
      'en': 'Email Us',
      'es': '',
    },
    '45r262t3': {
      'en': 'Search FAQs',
      'es': '',
    },
    'u9zlxogj': {
      'en': 'Review FAQ\'s below',
      'es': '',
    },
    '338slgpr': {
      'en': 'How do I download Code?',
      'es': '',
    },
    'b6c0hnx9': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'es': '',
    },
    '4shb6phd': {
      'en': 'How do I download Code?',
      'es': '',
    },
    'vs0lqun0': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'es': '',
    },
    '8mmrn8tz': {
      'en': 'How do I download Code?',
      'es': '',
    },
    'm5p603hf': {
      'en':
          'Showcase a couple of eye-catching screenshots or mockups of your UI Kit to capture attention and give users a glimpse of what they can expect.',
      'es': '',
    },
    'l2ge42he': {
      'en': 'Create Ticket',
      'es': '',
    },
    '5aj2kjqc': {
      'en': 'Chat Now',
      'es': '',
    },
    'ogbjnkmc': {
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
    'a530epg0': {
      'en': 'Please select...',
      'es': '',
    },
    'jpavqzma': {
      'en': 'Search for an item...',
      'es': '',
    },
    'flaqlunv': {
      'en': 'Your Incomes',
      'es': '',
    },
    '00csnecz': {
      'en': 'Below is a list of your Incomes',
      'es': '',
    },
    'yzn26w49': {
      'en': 'Acme Inc',
      'es': '',
    },
    'jdny7ygk': {
      'en': 'This Month ',
      'es': '',
    },
    'texmx1s6': {
      'en': 'Next Payday ',
      'es': '',
    },
    'pyfe4td3': {
      'en': 'Incomes',
      'es': '',
    },
    'qsrie90l': {
      'en': 'Incomes',
      'es': '',
    },
  },
  // PaymentSources
  {
    '4k5t4ems': {
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
    'z7dady7i': {
      'en': 'Wallet',
      'es': '',
    },
    '4de9zmbc': {
      'en': 'Wallet',
      'es': '',
    },
  },
  // Audit
  {
    '93e1w4lh': {
      'en': 'Activity',
      'es': '',
    },
    'qgz3k04p': {
      'en': 'All Activity from this past month.',
      'es': '',
    },
    '7jj2p8sk': {
      'en': '14, Sept. 2021',
      'es': '',
    },
    '7mys6aco': {
      'en': 'Created New User',
      'es': '',
    },
    'hdqi7t53': {
      'en': 'Andrew Daniels',
      'es': '',
    },
    '522ur4m2': {
      'en': 'Andrew F.',
      'es': '',
    },
    '1z68b64w': {
      'en': '14, Sept. 2021',
      'es': '',
    },
    '9qv6kq9m': {
      'en': 'Creted a Group',
      'es': '',
    },
    'l7fuwghg': {
      'en': 'Design Team',
      'es': '',
    },
    'r37gajoh': {
      'en': 'Andrew F.',
      'es': '',
    },
    'z9pfpe82': {
      'en': '14, Sept. 2021',
      'es': '',
    },
    'jz9y68dv': {
      'en': 'Created Invoice',
      'es': '',
    },
    'byeu4rz5': {
      'en': '#402 - Contractor',
      'es': '',
    },
    'e7v32sdq': {
      'en': 'Andrew F.',
      'es': '',
    },
    'txz8mgwx': {
      'en': 'Beginning of Activity',
      'es': '',
    },
    '94fk55bk': {
      'en': 'Page Title',
      'es': '',
    },
    'okfyypuz': {
      'en': 'Home',
      'es': '',
    },
  },
  // defaultCurrency
  {
    'lkew3crp': {
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
    'j2t6q4gr': {
      'en': 'Page Title',
      'es': '',
    },
    'ox6veo0p': {
      'en': 'Home',
      'es': '',
    },
  },
  // Export
  {
    'w3gx6kmx': {
      'en': 'Page Title',
      'es': '',
    },
    '9wx2z0jy': {
      'en': 'Reports',
      'es': '',
    },
  },
  // Bills
  {
    '54nq1671': {
      'en': 'example',
      'es': '',
    },
    '0c2u2tcl': {
      'en': 'Please select...',
      'es': '',
    },
    '7jj25rq3': {
      'en': 'Search for an item...',
      'es': '',
    },
    'yy242i42': {
      'en': 'Select Household',
      'es': '',
    },
    'ombth8rz': {
      'en': 'Due',
      'es': '',
    },
    'vp0s9rci': {
      'en': 'DUE',
      'es': '',
    },
    '4ts0z1yw': {
      'en': 'PAST DUE',
      'es': '',
    },
    'hlhurnt6': {
      'en': 'Paid',
      'es': '',
    },
    'mw3fxbya': {
      'en': 'PAID',
      'es': '',
    },
    '7337bw1y': {
      'en': 'Future',
      'es': '',
    },
    'hpfwbosi': {
      'en': 'Not Due Yet',
      'es': '',
    },
    '7bjer6i3': {
      'en': 'Bills',
      'es': '',
    },
    '5k2ed9dk': {
      'en': 'Bills',
      'es': '',
    },
  },
  // BillDetails
  {
    'oitptc4o': {
      'en': 'Bill Details',
      'es': '',
    },
    'seycjexv': {
      'en': 'Home',
      'es': '',
    },
  },
  // TransactionDetails
  {
    'l444keke': {
      'en': 'Transaction Details',
      'es': '',
    },
    'l7b2ij55': {
      'en': 'Description',
      'es': 'Descripción',
    },
    '1gzga15u': {
      'en': 'Amount',
      'es': '',
    },
    'pq6woc9k': {
      'en': 'Cleared?',
      'es': '',
    },
    'af538eym': {
      'en': 'TransactionDate',
      'es': '',
    },
    'oesdwhvr': {
      'en': 'Created At',
      'es': '',
    },
    'd56uzuns': {
      'en': 'Updated At',
      'es': '',
    },
    '8xbwvi7r': {
      'en': 'Transaction Type',
      'es': '',
    },
    '2d2ku081': {
      'en': 'Category',
      'es': '',
    },
    'lbn14rpe': {
      'en': 'Updated By',
      'es': '',
    },
    'bdmuypo4': {
      'en': 'Tags',
      'es': '',
    },
    '4y9mnn2i': {
      'en': 'Link to Receipt Image is copied to your clipboard',
      'es': '',
    },
    'b2ox7zr3': {
      'en': 'Payment Source Details',
      'es': '',
    },
    'moaawwut': {
      'en': 'Payment Source',
      'es': '',
    },
    'ujvetoik': {
      'en': 'Running Total',
      'es': '',
    },
    'gnlba36h': {
      'en': 'Payment Type',
      'es': '',
    },
    'azc4mkfz': {
      'en': 'Description',
      'es': '',
    },
    '5sbye8b0': {
      'en': 'Created At',
      'es': '',
    },
    '40c1xcgi': {
      'en': 'Updated At',
      'es': '',
    },
    'du3x0b8q': {
      'en': 'Transaction Details',
      'es': 'Detalles de la transacción',
    },
    '2q12y4mj': {
      'en': 'Home',
      'es': '',
    },
  },
  // IncomeDetails
  {
    'aiuy1h5x': {
      'en': 'Income Details',
      'es': '',
    },
    'qiek02k1': {
      'en': 'Name',
      'es': '',
    },
    'lljo571u': {
      'en': 'Description',
      'es': '',
    },
    '8ihgnfl6': {
      'en': 'Amount',
      'es': '',
    },
    'ozwoobmw': {
      'en': 'First Payday',
      'es': '',
    },
    'vmmh318c': {
      'en': 'Frequency',
      'es': '',
    },
    '0wqdvzy3': {
      'en': 'Created At',
      'es': '',
    },
    'dmcmufu1': {
      'en': 'Updated At',
      'es': '',
    },
    'fhbpi6gf': {
      'en': 'Household',
      'es': '',
    },
    '96155r76': {
      'en': 'Transaction Type',
      'es': '',
    },
    'p9surem7': {
      'en': 'Updated By',
      'es': '',
    },
    '5560t94s': {
      'en': 'Home',
      'es': '',
    },
  },
  // AddIncome
  {
    'bpxel73u': {
      'en': 'Income Name',
      'es': '',
    },
    '1fnkt2ei': {
      'en': 'Description',
      'es': '',
    },
    'vqap2xom': {
      'en': 'Amount',
      'es': '',
    },
    'dmhai1j7': {
      'en': 'One Time',
      'es': '',
    },
    'lrx5e8n8': {
      'en': 'Weekly',
      'es': '',
    },
    'zptp9ob4': {
      'en': 'Bi-Weekly - Every 2 weeks',
      'es': '',
    },
    'v16lwgtm': {
      'en': 'Monthly - Every 30 days',
      'es': '',
    },
    'nzr44uyu': {
      'en': 'Bi-Monthly - Every 60 days',
      'es': '',
    },
    '32bhcg8a': {
      'en': 'Quarterly - Every 90 days',
      'es': '',
    },
    'ppynddbu': {
      'en': 'Annually',
      'es': '',
    },
    'w72t7zeu': {
      'en': 'How Often Do You Get Paid?',
      'es': '',
    },
    'm5857s2k': {
      'en': 'Search for an item...',
      'es': '',
    },
    '73onef6i': {
      'en': 'One Time',
      'es': '',
    },
    'kplk0xkq': {
      'en': 'Weekly',
      'es': '',
    },
    'uqw30vl4': {
      'en': 'Bi-Weekly - Every 2 weeks',
      'es': '',
    },
    'jsdfptbo': {
      'en': 'Monthly - Every 30 days',
      'es': '',
    },
    'fyxdut9a': {
      'en': 'Bi-Monthly - Every 60 days',
      'es': '',
    },
    'sc4eyh1r': {
      'en': 'Quarterly - Every 90 days',
      'es': '',
    },
    'yi7lmxu9': {
      'en': 'Annually',
      'es': '',
    },
    'vrpddlmm': {
      'en': 'Connect To Payment Source',
      'es': '',
    },
    'drxj8fg1': {
      'en': 'Search for an item...',
      'es': '',
    },
    'hrypo08q': {
      'en': 'Add Income',
      'es': '',
    },
    'ra8r4cs8': {
      'en': 'Add Income',
      'es': '',
    },
    '34yo6nw6': {
      'en': 'Home',
      'es': '',
    },
  },
  // Notifications
  {
    'utba5tmr': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    'xmy5byhf': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'fq2o45sx': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    'xlhct6s5': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'eqhmhaio': {
      'en': 'Check-in evaluated',
      'es': '',
    },
    '9drcqgc7': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    's4yqgkia': {
      'en': 'New Event added to your calendar',
      'es': '',
    },
    'xk38nhou': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    '5qipyhvz': {
      'en': 'Profile Modified',
      'es': '',
    },
    'udrajo23': {
      'en': 'Mar 8, 2022',
      'es': '',
    },
    'gbn2487e': {
      'en': 'Notifications',
      'es': '',
    },
    '978adqpz': {
      'en': 'Home',
      'es': '',
    },
  },
  // Categories
  {
    'bqv43vpw': {
      'en': 'Categories',
      'es': '',
    },
    '822sr01o': {
      'en': 'Home',
      'es': '',
    },
  },
  // AddBill
  {
    'bq7qnlsa': {
      'en': 'Add Bill',
      'es': '',
    },
    '1ff3s5jd': {
      'en': 'Name of Bill',
      'es': '',
    },
    'hgwdxa3c': {
      'en': 'Acme Inc LLC',
      'es': '',
    },
    's8bbyiir': {
      'en': 'Amount',
      'es': '',
    },
    'r79yylov': {
      'en': 'Category',
      'es': '',
    },
    'w2axq1ox': {
      'en': 'Bill',
      'es': '',
    },
    'v4vayj1u': {
      'en': '1',
      'es': '',
    },
    'w8m39b4m': {
      'en': '2',
      'es': '',
    },
    'wqvraug3': {
      'en': '3',
      'es': '',
    },
    't5qsdcps': {
      'en': '4',
      'es': '',
    },
    '930u2h2h': {
      'en': '5',
      'es': '',
    },
    'hh3jvsl8': {
      'en': '6',
      'es': '',
    },
    '6juorp05': {
      'en': '7',
      'es': '',
    },
    'bnql2hwg': {
      'en': '8',
      'es': '',
    },
    'gn38sk2q': {
      'en': '9',
      'es': '',
    },
    'jahk96ae': {
      'en': '10',
      'es': '',
    },
    'faovx2sl': {
      'en': '11',
      'es': '',
    },
    '8j6c6zoq': {
      'en': '12',
      'es': '',
    },
    'bz9704xf': {
      'en': '13',
      'es': '',
    },
    'k4u54bz7': {
      'en': '14',
      'es': '',
    },
    'f9lqi3ox': {
      'en': '15',
      'es': '',
    },
    'a4uw4rqp': {
      'en': '16',
      'es': '',
    },
    '8gfvg5f5': {
      'en': '17',
      'es': '',
    },
    '9mgkih0m': {
      'en': '18',
      'es': '',
    },
    'wywjbvoc': {
      'en': '19',
      'es': '',
    },
    'lm5i79uf': {
      'en': '20',
      'es': '',
    },
    'rwng4r27': {
      'en': '21',
      'es': '',
    },
    'bkhctvq9': {
      'en': '22',
      'es': '',
    },
    '3e4d9960': {
      'en': '23',
      'es': '',
    },
    '69rytq54': {
      'en': '24',
      'es': '',
    },
    'gu1gwkfc': {
      'en': '25',
      'es': '',
    },
    '1pl0xd1w': {
      'en': '26',
      'es': '',
    },
    '4dxcax6o': {
      'en': '27',
      'es': '',
    },
    'a7diaa16': {
      'en': '28',
      'es': '',
    },
    '6c4kgyke': {
      'en': '29',
      'es': '',
    },
    'ua5kebkx': {
      'en': '30',
      'es': '',
    },
    'hjql9cdn': {
      'en': '30',
      'es': '',
    },
    '01kx7zyv': {
      'en': 'Day of the month was this most recently due',
      'es': '',
    },
    'srs8ebvc': {
      'en': 'Search for an item...',
      'es': '',
    },
    'fvw9ecl2': {
      'en': 'Day Of the Month Due (Most Recent)',
      'es': '',
    },
    'rmnk9p8g': {
      'en': 'Monthly',
      'es': '',
    },
    'u8qllptl': {
      'en': 'Once',
      'es': '',
    },
    'xtpwl9l0': {
      'en': 'Weekly',
      'es': '',
    },
    'mit220a3': {
      'en': 'Bi-Weekly (Every 2 weeks)',
      'es': '',
    },
    's2htk243': {
      'en': 'Monthly (Every 30 days)',
      'es': '',
    },
    'mbg8xmkj': {
      'en': 'Bi-Monthly (Every 60 days)',
      'es': '',
    },
    'k4pid9w4': {
      'en': 'Quarterly (Every 90 days)',
      'es': '',
    },
    'zm384tki': {
      'en': 'Annually (Yearly)',
      'es': '',
    },
    'xv80dolm': {
      'en': 'Frequency',
      'es': '',
    },
    '6gslvggc': {
      'en': 'Search for an item...',
      'es': '',
    },
    'xry6730d': {
      'en': 'Frequency',
      'es': '',
    },
    'kiqv4fyp': {
      'en': 'Cash Back Rate (If applicable)',
      'es': '',
    },
    'mtdtuxub': {
      'en': 'Description',
      'es': '',
    },
    'g8wlxgzl': {
      'en': 'Biller URL',
      'es': '',
    },
    'wizo4hw8': {
      'en': 'Please Provide a link to the biller\'s webpage',
      'es': '',
    },
    'vjogfd2j': {
      'en': 'Username',
      'es': '',
    },
    'qp3jab4n': {
      'en': 'Password',
      'es': '',
    },
    '4i7s7lpy': {
      'en': 'PaymentSource',
      'es': '',
    },
    'jv67qlbu': {
      'en': 'Search for an item...',
      'es': '',
    },
    'a40jxn1v': {
      'en': 'Is it a Debt?',
      'es': '',
    },
    'xjp2l2t9': {
      'en': 'Interest Rate (if applicable)',
      'es': '',
    },
    'p42lwg23': {
      'en': 'Add Bill',
      'es': '',
    },
    'mo5n9cmm': {
      'en': 'Home',
      'es': '',
    },
  },
  // PaymentSourceDetails
  {
    'aau7mbav': {
      'en': 'Wallet Details',
      'es': '',
    },
    'smhrb5vq': {
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
  // LedgerEntry
  {
    '4knaveeg': {
      'en': 'Wallet: ',
      'es': '',
    },
  },
  // Miscellaneous
  {
    '57fllogz': {
      'en': 'Please provide Camera access so you can upload receipts',
      'es': '',
    },
    'hqjyswpi': {
      'en': '',
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
