import 'package:flutter/material.dart';

class StyledTextFormField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final FormFieldValidator<String>? validator;
  final int? maxLines;

  const StyledTextFormField({
    super.key,
    required this.controller,
    required this.hintText,
    this.validator,
    this.maxLines,
  });

  @override
  _StyledTextFormFieldState createState() => _StyledTextFormFieldState();
}

class _StyledTextFormFieldState extends State<StyledTextFormField> {
  late FocusNode _focusNode;
  bool _isFocused = false;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void dispose() {
    _focusNode.removeListener(_handleFocusChange);
    _focusNode.dispose();
    super.dispose();
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  Widget build(BuildContext context) {
    final borderColor =
        _isFocused ? Colors.black : Colors.grey.withOpacity(0.4);
    final borderWidth = _isFocused ? 4.0 : 1.0;

    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        border: Border(
          left: BorderSide(width: borderWidth, color: borderColor),
          bottom: BorderSide(width: borderWidth, color: borderColor),
          top: BorderSide(width: 1, color: borderColor),
          right: BorderSide(width: 1, color: borderColor),
        ),
      ),
      child: TextFormField(
        controller: widget.controller,
        focusNode: _focusNode,
        validator: widget.validator,
        maxLines: widget.maxLines,
        decoration: InputDecoration(
          hintText: widget.hintText,
          border: InputBorder.none,
          contentPadding:
              const EdgeInsets.symmetric(vertical: 16, horizontal: 12),
        ),
      ),
    );
  }
}
