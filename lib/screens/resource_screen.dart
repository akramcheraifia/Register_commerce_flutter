import 'package:flutter/material.dart';

class FAQPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.of(context).pop(),
        ),
        backgroundColor: Colors.blue,
        elevation: 0,
        title: const Text(
          'Questions fréquemment posées',
          style: TextStyle(
            fontSize: 17,
            color: Colors.white,
          ),
        ),
      ),
      body: ListView(
        children: const [
          FAQItem(
            question: 'من هم الأشخاص غير المؤهلين لممارسة نشاط تجاري؟',
            answer:
                'تطبيقا لأحكام المادة 08 من القانون 04-08 المؤرخ في 14 غشت 2004، المتعلق بممارسة الأنشطة التجار ية، يتعذر التسجيل في السجل التجاري أو ممارسة أي نشاط تجاري، على الأشخاص المحكوم عليهم الذين لم يردّ لهم الاعتبار لارتكابهم الجنايات والجنح التالية::\n\n'
                ' - اختلاس الأموال ؛\n\n'
                ' - الغدر ؛\n\n'
                ' - الرشوة ؛\n\n'
                ' - السرقة والاحتيال؛\n\n'
                ' - إخفاء الأشياء ؛\n\n'
                ' - خيانة الأمانة ؛\n\n'
                ' - إصدار شيك بدون رصيد ؛\n\n'
                ' - الإدلاء بتصريح كاذب من أجل التسجيل في السجل التجاري ؛\n\n'
                ' - تبييض الأموال ؛\n\n'
                ' - الغش الضريبي ؛\n\n'
                ' - الاتّجار بالمخدرات ؛\n'
                ' - المتاجرة بموّاد وسلع تلحق أضرارا جسيمة بصحة المستهلك',
          ),
          FAQItem(
            question: 'شروط التسجيل في السجل التجاري',
            answer: 'شروط التسجيل في السجل التجاري\n\n'
                'شروط متعلقة بالنشاط التجاري: حول هذه النقطة، فمن الضروري التمييز بين الأنشطة الخاضعة للتنظيم وتلك التي لا تخضع الي تنظيم.\n\n'
                ' - الأنشطة غير المنظمة مفتوحة لجميع المتعاملين اللذين تتوفر فيهم الشروط المتعلقة بطبيعة التاجر.\n\n'
                ' - وفيما يتعلق بالانشطة المقننة، فممارستها تخضع لترخيص او موافقة مسبقة من السلطات المختصة مخولة لذلك. . وتجدر الإشارة إلى أنه وفقا للمادة 25 من القانون 04-08 من 14/08/2004، معدلة و متممة، الخاصة بشروط بممارسة ال نشاطات التجارية، موافقات أو التراخيص المؤقتة مقبولة للتسجيل في السجل التجاري لممارسة النشاط المقنن.\n\n'
                'شروط متعلقة بمكان مزاولة النشاط:\n\n'
                'يتم منح السجل التجاري لممارسة النشاطات المستقرة على أي شخص طبيعي أو معنوي يبرر مكان مزاولة النشاط قانوني كعقد امتلاك أو عقد ايجار محل تجاري.\n\n'
                'مع ذلك، وفقا للمادة 21 من القانون 04-08 من 14 أغسطس 2004، المعدل والمتمم، عندما يكون التاجر مستثمر أولي، فإنه يمكن ان يكون مقر الشركة في عنوان إقا مته المعتادة حتى الانتهاء من المشروع، وفي هذه الحالة الاقامة هي موقع النشاط.\n\n'
                'الشركة التجارية المستثمرة الاولية التي لا مقر لها يمكن أن تختار مسكنا ، لمدة أقصها (2) سنوات قابلة للتجديد مرة واحدة، عند الضرورة، قرب:\n\n'
                ' - محافظ الحسابات أو محاسب خبير\n\n'
                ' - محامي أو موثق\n\n'
                ' - عنوان الممثل القانوني للشركة.\n\n'
                'في بداية النشاط، مكان التوطين يصبح مكان نشاط الشركة.\n\n'
                'شروط متعلقة بالشخص :\n\n'
                'شروط متعلقة بالشخص\n\n'
                ' - الأشخاص الطبيعية\n\n'
                'ينبغي أن يتمتعو بجميعقدراتهم القانونية وحقوقهم المدنية.\n\n'
                ' - الأشخاص المعنوية\n\n'
                'بإمكانه اتخاذ أشكال مختلفة، كما هو مبيّن أدناه، وذلك وفقا للنصوص التشريعية والتنظيمية السارية المفعول.\n\n'
                'الشركات التجارية التي تم إنشاؤها بموجب عقد توثيقي وخاضعة للنشر في النشرة الرسمية للإعلانات القانونية ويتعلق الأمر بشركات التضامن، شركات التوصية البسيطة، شركات ذات المسؤولية المحدودة والشركات ذات الشخص الوحيد وذات المسؤولية المحدودة وكذا الشركات ذات الأسهم.\n\n'
                ' - المؤسسات ذات الطابع الصناعي والتجاري.\n\n'
                ' - التجمّعات\n\n'
                ' - كل مؤسسة تمارس نشاطها بالجزائر لحساب شركة تجارية مقرها بالخارج.\n\n'
                ' - التعاونيات بهدف الربح .\n\n'
                ' - شروط المتعلقة بالنشاط التجاري للتجار الأجانب\n\n'
                ' - المستثمرين الأجانب في إطار النشاطات الإقتصادية المتعلقة بإنتاج السلع الخدمات و كذا إستيراد المنتجات الموجهة لإعادة البيع على حا لها لايمكن تحقيقها إلا في إطار شراكة مع مساهمة المقييين الوطنيين بنسبة تمثل .... على الأقل من رأس المال و ذلك وفقا لأحكام المادة 04 مكرر من الامر رقم 01-03 المؤرخ في 20 أغسطس 2001، الخاص بتطوير الإستثمار، المعدل و المتمم.\n\n'
                ' - وفقا لأحكام المرسوم التنفيذي رقم 06-454 الصادر في 11 ديسمبر 2006 حول البطاقة المهنية الصادرة للأجانب الناشطين على المستوى الوطني الممارسين لنشاط تجاري، حرفي أو صناعي أو مهنة حرة، كل متعامل إقتصادي أجنبي يتم تسجيله في السجل التجاري مثل أي متعامل ذو جنسية جزائرية، فهم يخضعون لنفس شروط التسجيل.\n\n'
                ' - وتجدر الإشارة إلى أن المرسوم التنفيذي ألغى الحكم المذكور أعلاه من الأمر التنفيذي رقم 97-41 من 1997/1/18، المعدل والمتمم، الأمر الذي يتطلب العرض المسبق لبطاقة التاجر الأجنبي.',
          ),
          // Add more FAQItems as needed
          FAQItem(
            question: 'نصائح لملء النموذج بشكل صحيح',
            answer: 'نصائح لملء النموذج بشكل صحيح:\n\n'
                '1. قم بتعبئة جميع الحقول المطلوبة بعناية.\n\n'
                '2. تحقق من صحة المعلومات التي أدخلتها قبل النقر على "إرسال".\n\n'
                '3. استخدم الحروف الكبيرة والصغيرة بشكل صحيح في الأسماء والمعلومات.\n\n'
                '4. تجنب استخدام الإختصارات، استخدم الكلمات بشكل كامل لضمان الفهم الصحيح.\n\n'
                '5. عندما يُطلب إدخال تواريخ، استخدم التنسيق الصحيح لليوم، الشهر، والسنة.\n\n'
                '6. اطلع على الإرشادات المرفقة بكل حقل إذا كانت متوفرة.\n\n'
                '7. تجنب إدخال معلومات كاذبة أو غير دقيقة.\n\n'
                '8. في حالة وجود أسئلة أو استفسارات، لا تتردد في الاتصال بفريق الدعم الفني.\n\n'
                '9. احرص على استخدام لغة عربية صحيحة وواضحة لتجنب السوء في التفاهم.\n\n'
                '10. احتفظ بنسخة من المعلومات التي قمت بإدخالها لديك لضمان الدقة في المستقبل.\n\n',
          ),
        ],
      ),
    );
  }
}

class FAQItem extends StatefulWidget {
  final String question;
  final String answer;

  const FAQItem({Key? key, required this.question, required this.answer})
      : super(key: key);

  @override
  _FAQItemState createState() => _FAQItemState();
}

class _FAQItemState extends State<FAQItem> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Theme(
        data: ThemeData(
          hintColor: Colors.blue, // Customize the accent color
        ),
        child: ExpansionTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: Text(
            widget.question,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
            textAlign: TextAlign.right,
          ),
          onExpansionChanged: (expanded) {
            setState(() {
              isExpanded = expanded;
            });
          },
          initiallyExpanded: isExpanded,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: Text(
                widget.answer,
                textAlign: TextAlign.right,
                textDirection: TextDirection.rtl,
                style: const TextStyle(
                  fontSize: 14,
                  color: Colors.black87,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
