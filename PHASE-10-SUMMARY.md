# ملخص المرحلة 10 — توليد التقارير الرسمية PDF وExcel

تم بناء مركز التصدير والطباعة فوق محرك تقارير المرحلة 09. أضيفت حزم `pdf` و`excel` و`qr_flutter`، وتم إنشاء PdfExportService وExcelExportService وQrService وReportTemplateService وSignatoryService.

يدعم تصدير PDF حقيقي بصيغة A4 Portrait أو Landscape، هوامش قابلة للتخصيص، ترويسة رسمية، عنوان التقرير، التاريخ، عدد السجلات، QR Code ببيانات التقرير، جدولًا متعدد الأعمدة، التفاف البيانات وتقسيم الصفحات تلقائيًا عبر MultiPage، وتذييلًا يضم الموقعين وترقيم الصفحات الافتراضي للمستند.

يدعم تصدير XLSX حقيقيًا مع عنوان التقرير واسم الجهة والتاريخ ورؤوس الأعمدة والبيانات والإجماليات، وورقة RTL وتنسيق قابل للفتح في Excel.

أضيف ExportProvider وPdfProvider وExcelProvider وSignatoryProvider، مع شاشة ExportCenterPage للمعاينة وإعدادات الورقة والترويسة والتذييل وإدارة الموقعين وأزرار إنشاء PDF وExcel. تحفظ الملفات محليًا داخل مجلد Documents الخاص بالتطبيق وتفتح بالتطبيق الافتراضي للنظام.

لم تُنفذ المرحلة 11 أو 12 أو 13.

يتطلب البناء تشغيل `flutter pub get` و`build_runner` و`flutter analyze` و`flutter test` على بيئة Flutter x64. لم يتم تشغيل البناء في بيئة ARM64 الحالية.
