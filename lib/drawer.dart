enum Figure { line, rect, square }

class Drawer {
  Drawer({
    required this.symbol,
    this.prefixText,
  });

  final String symbol;
  final String? prefixText;

  Figure? _lastFigure;
  int? _lastWidth;
  int? _lastHeight;

  void _drawLine(int length) {
    print(symbol * length);
  }

  void drawLine(int length) {
    if (prefixText != null) {
      print(prefixText);
    }

    _drawLine(length);

    _lastFigure = Figure.line;
    _lastWidth = length;
    _lastHeight = null;
  }

  void drawRect(int width, int height) {
    if (prefixText != null) {
      print(prefixText);
    }

    for (int i = 0; i < height; i++) {
      _drawLine(width);
    }

    _lastFigure = Figure.rect;
    _lastWidth = width;
    _lastHeight = height;
  }

  void drawSquare({int length = 4}) {
    drawRect(length, length);

    _lastFigure = Figure.square;
    _lastWidth = length;
    _lastHeight = length;
  }

  void drawLastFigure() {
    switch (_lastFigure) {
      case null:
        {
          print('No last figure to draw');
          break;
        }
      case Figure.line:
        {
          assert(_lastWidth != null);
          drawLine(_lastWidth!);
          break;
        }
      case Figure.rect:
        {
          assert(_lastWidth != null && _lastHeight != null);
          drawRect(_lastWidth!, _lastHeight!);
          break;
        }
      case Figure.square:
        {
          assert(_lastWidth != null);
          drawSquare(length: _lastWidth!);
          break;
        }
    }
  }
}
