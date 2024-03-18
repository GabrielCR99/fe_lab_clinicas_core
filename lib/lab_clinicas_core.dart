/// Core library for the project.
library lab_clinicas_core;

export 'src/constants/constants.dart';
export 'src/exceptions/auth_exception.dart';
export 'src/exceptions/repository_exception.dart';
export 'src/exceptions/service_exception.dart';
export 'src/fp/either.dart';
export 'src/fp/nil.dart';
export 'src/fp/unit.dart';
export 'src/helpers/messages.dart';
export 'src/lab_clinicas_core_config.dart';
export 'src/rest_client/rest_client.dart'
    if (dart.library.html) 'src/rest_client/rest_client_web.dart';
export 'src/theme/lab_clinicas_theme.dart';
export 'src/widgets/lab_clinicas_app_bar.dart';
export 'src/widgets/popup_icon_menu.dart';
