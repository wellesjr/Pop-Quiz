import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:popquiz/modules/models/answer/answer_model.dart';
import 'package:popquiz/theme/app_theme.dart';

class AnswerWidget extends StatelessWidget {
  final AnswerModel answer;
  final bool isSelected;
  final bool disabled;
  final ValueChanged<bool> onTap;

  const AnswerWidget({
    Key? key,
    required this.answer,
    required this.onTap,
    this.isSelected = false,
    this.disabled = false,
  }) : super(key: key);

  Color get _selectedColorRight => answer.isRight
      ? AppTheme.colors.colorRightcorrect
      : AppTheme.colors.colorRightwrong;

  Color get _selectedBorderRight => answer.isRight
      ? AppTheme.colors.borderRightCorrect
      : AppTheme.colors.borderRightWrong;

  Color get _selectedColorCardRight => answer.isRight
      ? AppTheme.colors.colorCardRightCorrect
      : AppTheme.colors.colorCardRightWrong;

  Color get _selectedBorderCardRight => answer.isRight
      ? AppTheme.colors.borderRightCorrect
      : AppTheme.colors.borderRightWrong;
  TextStyle get _selectedTextStyleRight =>
      answer.isRight ? AppTheme.textStyles.correct : AppTheme.textStyles.wrong;

  IconData get _selectedIconRight => answer.isRight ? Icons.check : Icons.close;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
      child: IgnorePointer(
        ignoring: disabled,
        child: InkWell(
          onTap: () {
            onTap(answer.isRight);
          },
          child: AnimatedCard(
            direction: AnimatedCardDirection.left,
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: isSelected
                    ? _selectedColorCardRight
                    : AppTheme.colors.backgroundButton2,
                borderRadius: BorderRadius.circular(10),
                border: Border.fromBorderSide(
                  BorderSide(
                      color: isSelected
                          ? _selectedBorderCardRight
                          : AppTheme.colors.colorBorder1),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: Text(
                      answer.title,
                      style: isSelected
                          ? _selectedTextStyleRight
                          : AppTheme.textStyles.notSelected,
                    ),
                  ),
                  const SizedBox(width: 16),
                  Container(
                    width: 24,
                    height: 24,
                    decoration: BoxDecoration(
                      color: isSelected
                          ? _selectedColorRight
                          : AppTheme.colors.backgroundButton2,
                      borderRadius: BorderRadius.circular(500),
                      border: Border.fromBorderSide(
                        BorderSide(
                          color: isSelected
                              ? _selectedBorderRight
                              : AppTheme.colors.colorBorder1,
                        ),
                      ),
                    ),
                    child: isSelected
                        ? Icon(_selectedIconRight,
                            color: AppTheme.colors.backgroundButton2, size: 16)
                        : null,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
