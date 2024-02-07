import 'package:homework_1/drawer.dart';

void main(List<String> arguments) {
  // Task 1
  final Drawer drawer = Drawer(symbol: 'o', prefixText: 'test');

  // Task 2
  print('\nTask 2:');
  drawer.drawLine(17);

  // Task 3
  print('\nTask 3:');
  drawer.drawRect(8, 3);

  // Task 4
  print('\nTask 4:');
  drawer.drawSquare();

  // Task 5
  print('\nTask 5:');
  drawer.drawLastFigure();
}
