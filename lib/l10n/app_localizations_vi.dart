// ignore: unused_import
import 'package:intl/intl.dart' as intl;

import 'app_localizations.dart';

// ignore_for_file: type=lint

/// The translations for Vietnamese (`vi`).
class AppLocalizationsVi extends AppLocalizations {
  AppLocalizationsVi([String locale = 'vi']) : super(locale);

  @override
  String get appTitle => 'Trình tính xếp hộp';

  @override
  String get appDescription =>
      'So sánh các hướng thẳng hàng 90° để biết có thể xếp bao nhiêu vật phẩm hình hộp giống nhau vào hộp.';

  @override
  String get languageTooltip => 'Chọn ngôn ngữ';

  @override
  String get privacyPolicy => 'Chính sách quyền riêng tư';

  @override
  String get appearanceTooltip => 'Chọn giao diện';

  @override
  String get appearanceMaterial => 'Vật liệu';

  @override
  String get appearanceFlat => 'Phẳng';

  @override
  String get appearanceSoft => 'Mềm mại';

  @override
  String get unitLabel => 'Đơn vị';

  @override
  String get millimetres => 'Milimét (mm)';

  @override
  String get centimetres => 'Xentimét (cm)';

  @override
  String get inches => 'Inch (in)';

  @override
  String get unitless => 'Không đơn vị';

  @override
  String get boxDimensions => 'Kích thước hộp';

  @override
  String get itemDimensions => 'Kích thước vật phẩm';

  @override
  String get boxLength => 'Chiều dài hộp';

  @override
  String get boxWidth => 'Chiều rộng hộp';

  @override
  String get boxHeight => 'Chiều cao hộp';

  @override
  String get itemLength => 'Chiều dài vật phẩm';

  @override
  String get itemWidth => 'Chiều rộng vật phẩm';

  @override
  String get itemHeight => 'Chiều cao vật phẩm';

  @override
  String get calculateFit => 'Tính sức chứa';

  @override
  String get reset => 'Đặt lại';

  @override
  String get errorRequired => 'Hãy nhập giá trị';

  @override
  String get errorPositive => 'Hãy nhập số dương';

  @override
  String get errorNumber => 'Hãy nhập số hợp lệ';

  @override
  String get errorFinite => 'Hãy nhập số hữu hạn';

  @override
  String get errorPrecision => 'Chỉ dùng tối đa 3 chữ số thập phân';

  @override
  String get errorLimit => 'Hãy nhập không quá 1.000.000.000';

  @override
  String get resultsTitle => 'Kết quả theo hướng';

  @override
  String get bestFit => 'Cách xếp tốt nhất';

  @override
  String get orientation => 'Hướng';

  @override
  String acrossLength(int count) {
    return 'Theo chiều dài: $count';
  }

  @override
  String acrossWidth(int count) {
    return 'Theo chiều rộng: $count';
  }

  @override
  String layers(int count) {
    return 'Số lớp: $count';
  }

  @override
  String totalItems(int count) {
    return 'Tổng vật phẩm: $count';
  }

  @override
  String unusedLength(String value) {
    return 'Chiều dài còn lại: $value';
  }

  @override
  String unusedWidth(String value) {
    return 'Chiều rộng còn lại: $value';
  }

  @override
  String unusedHeight(String value) {
    return 'Chiều cao còn lại: $value';
  }

  @override
  String get nothingFits => 'Không có vật phẩm nào vừa với kích thước đã nhập';

  @override
  String get assumptionsTitle => 'Trước khi đóng gói';

  @override
  String get assumptions =>
      'Sử dụng kích thước trong lòng hộp có thể dùng và các vật phẩm hình hộp cứng giống nhau trên lưới thẳng hàng đơn giản. Không tính xoay nghiêng, nén, lồng nhau, vách ngăn, lớp đệm, độ dày thành hộp, giới hạn tải hoặc nhiều kích thước vật phẩm.';
}
