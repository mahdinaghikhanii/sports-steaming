import 'package:flutter/widgets.dart';

class AnimatedToggle extends StatefulWidget {
  final List<String> values;
  final ValueChanged onToggleCallback;
  final Color backgroundColor;
  final Color buttonColor;
  final Color textColor;

  const AnimatedToggle({
    super.key,
    required this.values,
    required this.onToggleCallback,
    this.backgroundColor = const Color(0xFFe7e7e8),
    this.buttonColor = const Color(0xFFFFFFFF),
    this.textColor = const Color(0xFF000000),
  });
  @override
  // ignore: library_private_types_in_public_api
  _AnimatedToggleState createState() => _AnimatedToggleState();
}

class _AnimatedToggleState extends State<AnimatedToggle> {
  bool initialPosition = true;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 32),
      width: MediaQuery.sizeOf(context).width * 0.65,
      height: MediaQuery.sizeOf(context).width * 0.10,
      padding: const EdgeInsets.all(4),
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: const BorderSide(
            width: 1,
            strokeAlign: BorderSide.strokeAlignCenter,
            color: Color(0xFFB7B7CD),
          ),
          borderRadius: BorderRadius.circular(8),
        ),
      ),
      child: Container(
        width: MediaQuery.sizeOf(context).width * 0.65,
        height: MediaQuery.sizeOf(context).width * 0.13,
        child: Stack(
          children: <Widget>[
            GestureDetector(
              onTap: () {
                initialPosition = !initialPosition;
                var index = 0;
                if (!initialPosition) {
                  index = 1;
                }
                widget.onToggleCallback(index);
                setState(() {});
              },
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.6,
                height: MediaQuery.sizeOf(context).width * 0.13,
                decoration: ShapeDecoration(
                  color: widget.backgroundColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: List.generate(
                    widget.values.length,
                    (index) => Padding(
                      padding: EdgeInsets.symmetric(
                          horizontal: MediaQuery.sizeOf(context).width * 0.05),
                      child: Text(
                        widget.values[index],
                        style: TextStyle(
                          fontFamily: 'Rubik',
                          fontSize: MediaQuery.sizeOf(context).width * 0.045,
                          fontWeight: FontWeight.bold,
                          color: const Color(0xAA000000),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            AnimatedAlign(
              duration: const Duration(milliseconds: 250),
              curve: Curves.decelerate,
              alignment: initialPosition
                  ? Alignment.centerLeft
                  : Alignment.centerRight,
              child: Container(
                width: MediaQuery.sizeOf(context).width * 0.33,
                height: MediaQuery.sizeOf(context).width * 0.13,
                decoration: ShapeDecoration(
                  color: widget.buttonColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6),
                  ),
                ),
                alignment: Alignment.center,
                child: Text(
                  initialPosition ? widget.values[0] : widget.values[1],
                  style: TextStyle(
                    fontFamily: 'Rubik',
                    fontSize: MediaQuery.sizeOf(context).width * 0.045,
                    color: widget.textColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
