# الملخص الفني — المرحلة 01

تم إنشاء هيكل مشروع Flutter باسم `pharmacy_monitor` وفق Clean Architecture وباستخدام Riverpod وGoRouter وIsar، مع دعم عربي RTL من نقطة الدخول.

## المنفذ

- بنية `core`, `shared`, و`features`.
- تعريف Models: Establishment, Payment, Penalty, Action, Attachment, CustomField, CustomFieldValue, Signatory, AppSettings.
- خدمة Isar وDatabase Manager مع مسار محلي عبر `path_provider`.
- Riverpod Provider لموجه التطبيق.
- مسارات Dashboard وEstablishments وReports وStatistics وBackup وSettings.
- Dashboard هيكلية تحتوي AppBar وDrawer وBottom Navigation وPlaceholder Cards فقط.
- شاشة Settings أولية تحفظ اسم الجهة والوزارة والإدارة والمكتب وحجم الخط محليًا في Isar.
- Light Theme وDark Theme، والألوان المعتمدة، وخطوط Cairo وTajawal.
- `AppException`, `Failure`, `ErrorState`, و`Result<T>`.
- `AppLogger` لتسجيل المعلومات والتحذيرات والأخطاء.
- ملفات `AppConfig`, `ThemeConfig`, `DatabaseConfig`, `NavigationConfig`, و`StorageConfig`.
- لا يوجد CRUD أو تنفيذ لوحدات الأعمال.

## التحقق

تم التحقق بنيويًا من وجود 13 ملف Dart، و9 Models، و6 مسارات، و4 ملفات خطوط، وعدم وجود عمليات CRUD داخل مجلدات الوحدات المستقبلية.

## قيد البناء

البيئة الحالية ARM64، بينما مستودع Flutter الرسمي المتاح يوفر Linux x86-64 لهذه القناة ولا يوفر Linux ARM64. كما لا توجد طبقة تشغيل x86 في البيئة. لذلك لم يمكن تشغيل `flutter pub get` أو `flutter analyze` أو `flutter build` هنا. بعد نقل المشروع إلى جهاز Flutter x64 أو CI مناسب، يجب تنفيذ:

```bash
flutter pub get
flutter pub run build_runner build --delete-conflicting-outputs
flutter analyze
flutter test
flutter build apk
flutter build windows
```

سيُنشئ `build_runner` ملف `lib/shared/models/app_models.g.dart` المطلوب لمخططات Isar.

## قرار المرحلة 00

تستخدم هذه المرحلة Isar كما طلبت مواصفات المرحلة 01، وهو تحديث تنفيذي لقرار Drift/SQLite الوارد في وثيقة المرحلة 00. يجب اعتماد هذا التغيير رسميًا قبل بدء المرحلة 02.
