import 'package:flutter/material.dart';

class LanguageDropdown extends StatelessWidget {
  final List<String> languages;
  final String language;
  final Function(String) onChanged;

  LanguageDropdown({
    @required this.languages,
    @required this.language,
    @required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10.0),
      height: 35.0,
      decoration: BoxDecoration(
        color: Color(0xFF1b2b45),
        borderRadius: BorderRadius.circular(25.0),
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
            dropdownColor: Color(0xFF1b2b45),
            value: language,
            items: languages
                .map((e) => DropdownMenuItem(
                      child: Row(
                        children: <Widget>[
                          Text(
                            e,
                            style: TextStyle(
                                fontSize: 12.0,
                                fontWeight: FontWeight.w400,
                                color: Colors.white),
                          )
                        ],
                      ),
                      value: e,
                    ))
                .toList(),
            onChanged: onChanged),
      ),
    );
  }
}
