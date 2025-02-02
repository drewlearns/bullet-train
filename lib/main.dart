import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_web_plugins/url_strategy.dart';

import 'auth/custom_auth/auth_util.dart';
import 'auth/custom_auth/custom_auth_user_provider.dart';

import 'flutter_flow/flutter_flow_theme.dart';
import 'flutter_flow/flutter_flow_util.dart';
import 'flutter_flow/internationalization.dart';
import 'index.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  usePathUrlStrategy();

  await FlutterFlowTheme.initialize();

  await authManager.initialize();
  await FFLocalizations.initialize();

  final appState = FFAppState(); // Initialize FFAppState
  await appState.initializePersistedState();

  runApp(ChangeNotifierProvider(
    create: (context) => appState,
    child: const MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  State<MyApp> createState() => _MyAppState();

  static _MyAppState of(BuildContext context) =>
      context.findAncestorStateOfType<_MyAppState>()!;
}

class _MyAppState extends State<MyApp> {
  Locale? _locale = FFLocalizations.getStoredLocale();

  ThemeMode _themeMode = FlutterFlowTheme.themeMode;

  late AppStateNotifier _appStateNotifier;
  late GoRouter _router;

  late Stream<ThePurplePiggyBankAuthUser> userStream;

  @override
  void initState() {
    super.initState();

    _appStateNotifier = AppStateNotifier.instance;
    _router = createRouter(_appStateNotifier);
    userStream = thePurplePiggyBankAuthUserStream()
      ..listen((user) {
        _appStateNotifier.update(user);
      });

    Future.delayed(
      const Duration(milliseconds: 1000),
      () => _appStateNotifier.stopShowingSplashImage(),
    );
  }

  void setLocale(String language) {
    setState(() => _locale = createLocale(language));
    FFLocalizations.storeLocale(language);
  }

  void setThemeMode(ThemeMode mode) => setState(() {
        _themeMode = mode;
        FlutterFlowTheme.saveThemeMode(mode);
      });

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'The Purple Piggy Bank',
      localizationsDelegates: const [
        FFLocalizationsDelegate(),
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      locale: _locale,
      supportedLocales: const [
        Locale('en'),
        Locale('es'),
        Locale('tl'),
        Locale('fr'),
        Locale.fromSubtags(languageCode: 'zh', scriptCode: 'Hans'),
      ],
      theme: ThemeData(
        brightness: Brightness.light,
        scrollbarTheme: ScrollbarThemeData(
          thumbVisibility: MaterialStateProperty.all(true),
          trackVisibility: MaterialStateProperty.all(true),
          interactive: true,
          thickness: MaterialStateProperty.all(3.0),
          radius: const Radius.circular(12.0),
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.dragged)) {
              return const Color(0xffa06ee1);
            }
            if (states.contains(MaterialState.hovered)) {
              return const Color(0xffa06ee1);
            }
            return const Color(0xffa06ee1);
          }),
          minThumbLength: 5.0,
          crossAxisMargin: 2.0,
          mainAxisMargin: 2.0,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        scrollbarTheme: ScrollbarThemeData(
          thumbVisibility: MaterialStateProperty.all(true),
          trackVisibility: MaterialStateProperty.all(true),
          interactive: true,
          thickness: MaterialStateProperty.all(3.0),
          radius: const Radius.circular(12.0),
          thumbColor: MaterialStateProperty.resolveWith((states) {
            if (states.contains(MaterialState.dragged)) {
              return const Color(0xff7329c6);
            }
            if (states.contains(MaterialState.hovered)) {
              return const Color(0xff7329c6);
            }
            return const Color(0xff7329c6);
          }),
          minThumbLength: 5.0,
          crossAxisMargin: 2.0,
          mainAxisMargin: 2.0,
        ),
      ),
      themeMode: _themeMode,
      routerConfig: _router,
    );
  }
}

class NavBarPage extends StatefulWidget {
  const NavBarPage({super.key, this.initialPage, this.page});

  final String? initialPage;
  final Widget? page;

  @override
  _NavBarPageState createState() => _NavBarPageState();
}

/// This is the private State class that goes with NavBarPage.
class _NavBarPageState extends State<NavBarPage> {
  String _currentPageName = 'Ledger';
  late Widget? _currentPage;

  @override
  void initState() {
    super.initState();
    _currentPageName = widget.initialPage ?? _currentPageName;
    _currentPage = widget.page;
  }

  @override
  Widget build(BuildContext context) {
    final tabs = {
      'Bills': const BillsWidget(),
      'Threshold': const ThresholdWidget(),
      'Ledger': const LedgerWidget(),
      'Incomes': const IncomesWidget(),
      'Settings': const SettingsWidget(),
    };
    final currentIndex = tabs.keys.toList().indexOf(_currentPageName);

    return Scaffold(
      body: _currentPage ?? tabs[_currentPageName],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (i) => setState(() {
          _currentPage = null;
          _currentPageName = tabs.keys.toList()[i];
        }),
        backgroundColor: FlutterFlowTheme.of(context).secondaryBackground,
        selectedItemColor: FlutterFlowTheme.of(context).primary,
        unselectedItemColor: FlutterFlowTheme.of(context).primaryText,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.ballot_sharp,
              size: 24.0,
            ),
            label: FFLocalizations.of(context).getText(
              'ttmje8k7' /* Bills */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.data_thresholding,
              size: 24.0,
            ),
            label: FFLocalizations.of(context).getText(
              'odolg6eo' /* Threshold */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.monetization_on_outlined,
              size: 24.0,
            ),
            label: FFLocalizations.of(context).getText(
              'z67rchgz' /* Ledger */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.inbox,
              size: 24.0,
            ),
            label: FFLocalizations.of(context).getText(
              'xkkd5m13' /* Incomes  */,
            ),
            tooltip: '',
          ),
          BottomNavigationBarItem(
            icon: const Icon(
              Icons.settings_suggest,
              size: 24.0,
            ),
            label: FFLocalizations.of(context).getText(
              '9lph6yzp' /* Settings */,
            ),
            tooltip: '',
          )
        ],
      ),
    );
  }
}
