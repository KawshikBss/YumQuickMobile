import 'package:flutter/material.dart';
import 'package:yumquick/shared/constants/app_fonts.dart';
import 'package:yumquick/shared/theme/app_colors.dart';

class AuthInput extends StatefulWidget {
  final String? label;
  final String? hintText;
  final bool secured;
  final bool dateType;
  final TextEditingController? controller;
  const AuthInput({
    super.key,
    this.label,
    this.hintText,
    this.secured = false,
    this.dateType = false,
    this.controller,
  });

  @override
  State<AuthInput> createState() => _AuthInputState();
}

class _AuthInputState extends State<AuthInput> {
  bool _passwordVisible = false;
  _togglePasswordVisible() {
    setState(() {
      _passwordVisible = !_passwordVisible;
    });
  }

  DateTime? _selectedDate;
  _handleDateSelect() async {
    DateTime? selectedDate = await showDatePicker(
      context: context,
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
      initialDate: DateTime.now(),
    );
    if (selectedDate != null) {
      setState(() {
        _selectedDate = selectedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.label != null)
          Text(
            widget.label ?? '',
            style: TextStyle(
              fontFamily: AppFonts.leagueSpartan,
              fontSize: 20,
              color: AppColors.textDark,
            ),
          ),
        if (widget.label != null) const SizedBox(height: 10),
        if (!widget.dateType)
          TextField(
            style: TextStyle(
              fontFamily: AppFonts.leagueSpartan,
              fontSize: 20,
              color: AppColors.textDark,
            ),
            obscureText: widget.secured && !_passwordVisible,
            decoration: InputDecoration(
              filled: true,
              fillColor: AppColors.yellowSecondary,
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(14),
              ),
              contentPadding: EdgeInsets.all(16),
              hintText: widget.hintText,
              hintStyle: TextStyle(
                fontFamily: AppFonts.leagueSpartan,
                fontSize: 20,
                color: AppColors.textDark,
              ),
              suffixIcon:
                  widget.secured
                      ? IconButton(
                        onPressed: _togglePasswordVisible,
                        icon: Icon(
                          _passwordVisible
                              ? Icons.visibility_off_outlined
                              : Icons.visibility_outlined,
                          color: AppColors.orangeBase,
                        ),
                      )
                      : null,
            ),
          )
        else
          GestureDetector(
            onTap: _handleDateSelect,
            child: Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: AppColors.yellowSecondary,
                borderRadius: BorderRadius.circular(14),
              ),
              child: Text(
                _selectedDate != null
                    ? '${_selectedDate!.day.toString().padLeft(2, '0')} / ${_selectedDate!.month.toString().padLeft(2, '0')} / ${_selectedDate!.year}'
                    : widget.hintText ?? '',
                style: TextStyle(
                  fontFamily: AppFonts.leagueSpartan,
                  fontSize: 20,
                  color: AppColors.textDark,
                ),
              ),
            ),
          ),
      ],
    );
  }
}
