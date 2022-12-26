
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class InputBox extends StatefulWidget {
  final TextEditingController controller;
  final String? hintText;
  final String? helperText;
  final String? textLabel;
  final Color? boarderColor;
  final IconData? prefixIcon;
  final IconData? sufixIcon;
  final Widget? suffix;
  final IconData? sufixIconOnclick;
  final bool? isPassword;
  final bool? showPassword;
  final bool enaled;
  final bool readOnly;
  final Function()? onPressEye;
  final int? maxLines;
  final int? minLines;
  final Widget? header;
  final  String? Function(String?)? validator;

  const InputBox(
      {super.key,
        required this.controller,
        this.hintText,
        this.suffix,
        this.helperText,
        this.textLabel,
        this.boarderColor,
        this.prefixIcon,
        this.sufixIcon,
        required this.enaled,
        required this.readOnly,
        this.isPassword,
        this.onPressEye,
        this.showPassword,
        this.sufixIconOnclick,
        this.maxLines,
        this.minLines,
        this.header,
        this.validator,

      });

  @override
  State<InputBox> createState() => _InputBoxState();
}

class _InputBoxState extends State<InputBox> {

  late FocusNode _focusNode;

  @override
  void initState() {
    super.initState();
    _focusNode = FocusNode();
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0, right: 15.0),
      child: Column(
        children: [
          Align(alignment: Alignment.topLeft, child: widget.header),
          const SizedBox(
            height: 5,
          ),
          TextFormField(
              maxLines: widget.maxLines ?? 1,
              minLines: widget.minLines != null ? 1 : widget.minLines,
              style: const TextStyle(color: Color(0xFFA1A7AC)),
              controller: widget.controller,
              readOnly: widget.readOnly ? false : true,
              obscureText: widget.isPassword??true,
              decoration: InputDecoration(
                fillColor: const Color(0xFFEBEBEB),
                filled: true,
                /*focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.black, width: 1.0)),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.green, width: 1.0),
              ),*/

                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      10.0,
                    ),
                    borderSide: BorderSide.none),
                helperText: widget.helperText ?? '',
                hintText: widget.hintText,
                labelStyle: Theme.of(context).textTheme.bodyText2,
                floatingLabelStyle: Theme.of(context).textTheme.bodyText2,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                floatingLabelAlignment: FloatingLabelAlignment.start,
                prefixIcon: null == widget.prefixIcon ? null : Icon(widget.prefixIcon),
                /*suffixIcon: null == sufixIcon ? null : Icon(sufixIcon),*/
                suffixIcon: widget.suffix ,
                enabled: widget.enaled ? true : false,
              ),
              validator:widget.validator
          ),
        ],
      ),
    );
  }
  void _requestFocus() {
    setState(() {
      FocusScope.of(context).requestFocus(_focusNode);
    });
  }
}
