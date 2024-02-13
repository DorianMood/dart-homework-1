import 'package:homework_1/drawer.dart';
import 'package:test/test.dart';

const symbol = 'x';

void main() {
  test('Creates instance with given symbol', () {
    Drawer drawerInstance = Drawer(symbol: symbol);

    expect(drawerInstance.symbol, symbol);
    expect(drawerInstance.prefixText, null);
  });
}
