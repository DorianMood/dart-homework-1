import 'package:homework_1/drawer.dart';
import 'package:homework_1/drawer_provider.dart';

void main(List<String> arguments) {
  // Task 1.1
  final Drawer drawer = Drawer(symbol: 'o', prefixText: 'test');

  // Task 1.2
  print('\nTask 1.2:');
  drawer.drawLine(17);

  // Task 1.3
  print('\nTask 1.3:');
  drawer.drawRect(8, 3);

  // Task 1.4
  print('\nTask 1.4:');
  drawer.drawSquare();

  // Task 1.5
  print('\nTask 1.5:');
  drawer.drawLastFigure();

  // Task 2.1
  print('\nTask 2.1:');
  final DrawerProvider drawerProvider =
      DrawerProvider(symbol: 'x', prefixText: 'Drawer provider');

  // Task 2.2
  print('\nTask 2.2:');
  final Drawer defaultDrawer = drawerProvider.getDefaultDrawer();
  defaultDrawer.drawSquare();
}
