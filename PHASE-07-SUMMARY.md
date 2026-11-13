# ملخص المرحلة 07 — الاتصالات والرسائل

تمت إضافة MessageTemplate وCommunicationHistory إلى قاعدة بيانات Isar المحلية، مع أنواع Call وSMS وWhatsApp وBulkSMS وBulkWhatsApp، وربط سجل الاتصالات بالمنشآت.

أضيف MessageTemplateRepository وCommunicationHistoryRepository وMessageTemplateProvider وCommunicationProvider. يدعم النظام إنشاء القوالب وتعديلها وحذفها، وتسجيل عمليات التواصل، واستبدال المتغيرات `{OWNER_NAME}` و`{TRADE_NAME}` و`{LICENSE_NUMBER}` و`{PHONE_NUMBER}` و`{SERIAL_NUMBER}` تلقائيًا.

داخل تفاصيل المنشأة أضيفت بطاقة التواصل السريع وسجل الاتصالات. تستخدم الأزرار `tel:` و`sms:` و`https://wa.me` لفتح تطبيقات الجهاز المحلية دون خادم خارجي، مع تسجيل العملية محليًا.

أضيفت شاشة قوالب الرسائل، وشاشة الرسائل الجماعية مع التصفية حسب النشاط وحالة المنشأة، وعدّ المستلمين، ومعاينة الرسالة، وفتح SMS أو WhatsApp لكل مستلم.

لم تُنفذ الإحصائيات أو التقارير أو PDF/Excel أو الحقول المخصصة أو النسخ الاحتياطي أو الاختبارات النهائية.

يتطلب البناء تشغيل `flutter pub get` و`build_runner` على بيئة Flutter x64 ثم analyze/test/build. بيئة التنفيذ الحالية ARM64 ولا توفر Flutter Linux ARM64 الرسمي.
