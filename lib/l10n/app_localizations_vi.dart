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

  @override
  String get helpTooltip => 'Trợ giúp & Hướng dẫn';

  @override
  String get helpTitle => 'Hướng dẫn lập kế hoạch đóng hộp';

  @override
  String get helpProblemSolvedTitle => 'Vấn đề giải quyết';

  @override
  String get helpProblemSolvedContent =>
      'Xác định số lượng vật phẩm hình chữ nhật giống hệt nhau vừa vặn trong hộp theo các hướng và tính thể tích còn lại.';

  @override
  String get helpHowToUseTitle => 'Cách sử dụng';

  @override
  String get helpHowToUseContent =>
      'Nhập kích thước hộp bên ngoài (dài, rộng, cao) và kích thước vật phẩm đơn lẻ (dài, rộng, cao), sau đó nhấn Tính toán.';

  @override
  String get helpReadingResultsTitle => 'Đọc kết quả';

  @override
  String get helpReadingResultsContent =>
      'Hiển thị tổng số vật phẩm xếp được, phân bố theo từng trục (dài × rộng × cao), tỷ lệ sử dụng thể tích (%) và không gian thừa.';

  @override
  String get helpExampleTitle => 'Ví dụ';

  @override
  String get helpExampleContent =>
      'Hộp: 30 x 20 x 10 cm | Vật phẩm: 10 x 10 x 5 cm\nKết quả: 3 dài x 2 rộng x 2 cao = tổng 12 vật phẩm (sử dụng 100% thể tích).';

  @override
  String get helpLimitsTitle => 'Xác thực & Giới hạn';

  @override
  String get helpLimitsContent =>
      'Tính toán hình học đơn giản. Không tính đến giới hạn trọng lượng, độ dễ vỡ, đệm lót bảo vệ hoặc biến dạng.';

  @override
  String get helpDataAndPrivacyTitle => 'Dữ liệu cục bộ & Quảng cáo';

  @override
  String get helpDataAndPrivacyContent =>
      'Tất cả các kích thước được tính toán cục bộ mà không cần internet. Biểu ngữ AdMob hiển thị ở dưới cùng.';
}
