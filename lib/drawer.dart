class Drawer {
  Drawer({
    required this.symbol,
    this.prefixText,
  });

  final String symbol;
  final String? prefixText;

  void _drawLine(int length) {
    print(symbol * length);
  }

  void drawLine(int length) {
    print(prefixText);
    _drawLine(length);
  }

  void drawRect(int width, int height) {
    print(prefixText);
    for (int i = 0; i < height; i++) {
      _drawLine(width);
    }
  }
}
