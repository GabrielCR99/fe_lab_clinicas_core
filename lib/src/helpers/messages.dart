import 'package:flutter/widgets.dart';
import 'package:signals/signals.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

void _showError(BuildContext context, String message) => showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.error(message: message),
    );

void _showInfo(BuildContext context, String message) => showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.info(message: message),
    );

void _showSuccess(BuildContext context, String message) => showTopSnackBar(
      Overlay.of(context),
      CustomSnackBar.success(message: message),
    );

base mixin class MessagesControllerMixin {
  final Signal<String?> _errorMessage = signal(null);
  String? get errorMessage => _errorMessage();

  final Signal<String?> _infoMessage = signal(null);
  String? get infoMessage => _infoMessage();

  final Signal<String?> _successMessage = signal(null);
  String? get successMessage => _successMessage();

  void clearError() => _errorMessage.value = null;
  void clearInfo() => _infoMessage.value = null;
  void clearSuccess() => _successMessage.value = null;

  void showError(String message) {
    untracked(clearError);
    _errorMessage.value = message;
  }

  void showInfo(String message) {
    untracked(clearInfo);
    _infoMessage.value = message;
  }

  void showSuccess(String message) {
    untracked(clearSuccess);
    _successMessage.value = message;
  }

  void clearAllMessages() => untracked<void>(() {
        clearError();
        clearInfo();
        clearSuccess();
      });
}

extension MessageBuildContext on BuildContext {
  EffectCleanup messageListener(MessagesControllerMixin state) => effect(
        () => switch (state) {
          MessagesControllerMixin(:final errorMessage?) =>
            _showError(this, errorMessage),
          MessagesControllerMixin(:final infoMessage?) =>
            _showInfo(this, infoMessage),
          MessagesControllerMixin(:final successMessage?) =>
            _showSuccess(this, successMessage),
          _ => null,
        },
      );
}
