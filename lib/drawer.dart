class Drawer {
  Drawer({
    required this.symbol,
    this.prefixText,
  });

  final String symbol;
  final String? prefixText;

  void drawLine(int length) {
    print(prefixText);
    print(symbol * length);
  }
}
