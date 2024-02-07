import 'package:homework_1/drawer.dart';

class DrawerProvider {
  DrawerProvider({required this.symbol, this.prefixText});

  final String symbol;
  final String? prefixText;
  late final Drawer _defaultDrawer = _createDefaultDrawer();

  Drawer _createDefaultDrawer() {
    return Drawer(symbol: symbol, prefixText: prefixText);
  }

  Drawer getDefaultDrawer() {
    return _defaultDrawer;
  }
}
