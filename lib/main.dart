// main.dart
// حزب العمران - Parti Al-Omrane
// الشعار: "نريد دولة - Nous voulons un État"
// ملاحظة: تم وضع تعليقات /// SUPABASE: للإشارة إلى الأماكن التي سيتم ربطها بـ Supabase لاحقاً

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const OmranePartyApp());
}

class OmranePartyApp extends StatelessWidget {
  const OmranePartyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'حزب العمران - Parti Al-Omrane',
      theme: ThemeData(
        primaryColor: const Color(0xFF1A2D42),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF1A2D42),
          primary: const Color(0xFF1A2D42),
          secondary: const Color(0xFFB0925A),
        ),
        scaffoldBackgroundColor: Colors.white,
        fontFamily: GoogleFonts.cairo().fontFamily,
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

// ==================== DATA MODELS ====================

/// نموذج الخبر (سياسي-تنموي)
class NewsModel {
  final int id;
  final String title;
  final String excerpt;
  final String imageUrl;
  final String date;
  final String content;

  NewsModel({
    required this.id,
    required this.title,
    required this.excerpt,
    required this.imageUrl,
    required this.date,
    required this.content,
  });
}

/// نموذج البرنامج الحزبي
class ProgramModel {
  final int id;
  final String title;
  final String description;
  final String imageUrl;
  final String status;
  final String region;

  ProgramModel({
    required this.id,
    required this.title,
    required this.description,
    required this.imageUrl,
    required this.status,
    required this.region,
  });
}

/// بيانات تجريبية (موريتانيا)
class MockData {
  static List<NewsModel> getNews() {
    return [
      NewsModel(
        id: 1,
        title:
            'حزب العمران يُطلق مبادرة "نواكشوط الخضراء" لتحسين البيئة الحضرية',
        excerpt:
            'المبادرة تهدف إلى زراعة 50 ألف شجرة وإنشاء حدائق عامة في أحياء العاصمة...',
        imageUrl:
            'https://images.unsplash.com/photo-1590845947670-c009801ffa74?w=800',
        date: '2024-03-15',
        content: 'تفاصيل المبادرة...',
      ),
      NewsModel(
        id: 2,
        title: 'الحزب يقدم رؤية لتطوير ميناء نواذيبو كقطب اقتصادي إقليمي',
        excerpt:
            'تشمل الرؤية تحديث البنية التحتية وإقامة منطقة حرة لتعزيز التجارة...',
        imageUrl:
            'https://images.unsplash.com/photo-1543747579-795b9c202c3c?w=800',
        date: '2024-03-10',
        content: 'تفاصيل الرؤية...',
      ),
      NewsModel(
        id: 3,
        title: 'انطلاق الحملة الوطنية لمحو الأمية الرقمية في الوسط الريفي',
        excerpt:
            'بالتعاون مع وزارة التحول الرقمي، الحزب يطلق دورات تدريبية في ولايات الحوض...',
        imageUrl:
            'https://images.unsplash.com/photo-1571260899304-425eee4c7efc?w=800',
        date: '2024-03-05',
        content: 'التفاصيل الكاملة...',
      ),
      NewsModel(
        id: 4,
        title: 'حزب العمران يدعو لحوار وطني حول الإسكان الاجتماعي',
        excerpt:
            'دعوة مفتوحة للخبراء لمناقشة قانون جديد للإسكان يخدم الشباب ومحدودي الدخل...',
        imageUrl:
            'https://images.unsplash.com/photo-1460317442991-4ff1f463b3e9?w=800',
        date: '2024-02-28',
        content: 'موعد وتفاصيل الحوار...',
      ),
    ];
  }

  static List<ProgramModel> getPrograms() {
    return [
      ProgramModel(
        id: 1,
        title: 'برنامج "تآزر" للتنمية المحلية',
        description:
            'دعم المشاريع الصغيرة والمتوسطة في الولايات الداخلية عبر قروض ميسرة',
        imageUrl:
            'https://images.unsplash.com/photo-1531482615713-2afd69097998?w=800',
        status: 'قيد التنفيذ',
        region: 'الحوضين ولعصابة',
      ),
      ProgramModel(
        id: 2,
        title: 'مشروع المدرسة الرقمية',
        description: 'تجهيز 200 مدرسة ثانوية بأجهزة لوحية وإنترنت فائق السرعة',
        imageUrl:
            'https://images.unsplash.com/photo-1509062522246-3755977927d7?w=800',
        status: '60%',
        region: 'عموم موريتانيا',
      ),
      ProgramModel(
        id: 3,
        title: 'الطريق المداري نواكشوط - نواذيبو',
        description: 'تطوير الطريق السريع وربطه بمناطق تنموية على طول الساحل',
        imageUrl:
            'https://images.unsplash.com/photo-1596436889106-be35e843f974?w=800',
        status: 'مرحلة الدراسات',
        region: 'الساحل الغربي',
      ),
    ];
  }

  static Map<String, String> getStats() {
    return {
      'عضو مسجّل': '18,750+',
      'فرع حزبي': '42',
      'برنامج منجَز': '27',
      'مستفيد': '125,000+',
    };
  }
}

// ==================== MAIN PAGE ====================

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const NavBar(),
            const HeroSection(),
            const StatsSection(),
            const VisionSnippet(),
            NewsTeasers(news: MockData.getNews().take(3).toList()),
            const ProgramsPreview(),
            const Footer(),
          ],
        ),
      ),
    );
  }
}

// ==================== NAVIGATION BAR ====================

class NavBar extends StatelessWidget {
  const NavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF1A2D42),
        boxShadow: [
          BoxShadow(
            color: Colors.black12,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth > 900;
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  /// شعار الحزب (سيتم وضع ملف logo.JPG في مجلد assets)
                  /// SUPABASE: استخدام صورة الشعار من الأصول
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFFB0925A),
                      borderRadius: BorderRadius.circular(8),
                      image: const DecorationImage(
                        image: AssetImage(
                          'assets/logo.JPG',
                        ), // ضع ملف الشعار في assets/logo.JPG
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: const Icon(
                      Icons.image,
                      color: Colors.white,
                    ), // مؤقت لحين وجود الصورة
                  ),
                  const SizedBox(width: 12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'حزب العمران',
                        style: GoogleFonts.amiri(
                          fontSize: isDesktop ? 22 : 18,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      Text(
                        'Parti Al-Omrane',
                        style: TextStyle(
                          fontSize: isDesktop ? 12 : 10,
                          color: Colors.grey[400],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              if (isDesktop)
                Row(
                  children: [
                    _navLink('الرئيسية', () {}),
                    _navLink(
                      'الأخبار',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const AllNewsPage()),
                      ),
                    ),
                    _navLink(
                      'برامجنا',
                      () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const ProgramsPage()),
                      ),
                    ),
                    _navLink('عن الحزب', () => _showAboutDialog(context)),
                    const SizedBox(width: 20),
                    ElevatedButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const JoinPage()),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFB0925A),
                        foregroundColor: Colors.white,
                      ),
                      child: const Text('انضم الآن'),
                    ),
                  ],
                ),
              if (!isDesktop)
                IconButton(
                  icon: const Icon(Icons.menu, color: Colors.white),
                  onPressed: () => _showMobileMenu(context),
                ),
            ],
          );
        },
      ),
    );
  }

  Widget _navLink(String title, VoidCallback onTap) => InkWell(
    onTap: onTap,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Text(
        title,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
    ),
  );

  void _showMobileMenu(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) => Container(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _mobileMenuItem('الرئيسية', () {}),
            _mobileMenuItem(
              'الأخبار',
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const AllNewsPage()),
              ),
            ),
            _mobileMenuItem(
              'برامجنا',
              () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ProgramsPage()),
              ),
            ),
            _mobileMenuItem('عن الحزب', () => _showAboutDialog(context)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const JoinPage()),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFFB0925A),
              ),
              child: const Text('انضم الآن'),
            ),
          ],
        ),
      ),
    );
  }

  Widget _mobileMenuItem(String title, VoidCallback onTap) => ListTile(
    title: Text(title, textAlign: TextAlign.center),
    onTap: onTap,
  );

  void _showAboutDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('عن حزب العمران'),
        content: const Text(
          'تأسس حزب العمران عام 2015 في نواكشوط، يهدف إلى بناء دولة المؤسسات وتحقيق التنمية المستدامة والعمران المتوازن في موريتانيا. شعارنا: "نريد دولة - Nous voulons un État".',
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('إغلاق'),
          ),
        ],
      ),
    );
  }
}

// ==================== HERO SECTION مع شعار "نريد دولة" ====================

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 550,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          colors: [const Color(0xFF1A2D42), const Color(0xFF2A4058)],
        ),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              /// شعار الحزب الأساسي "نريد دولة"
              Text(
                'نريد دولة',
                textAlign: TextAlign.center,
                style: GoogleFonts.amiri(
                  fontSize: 64,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xFFB0925A),
                  height: 1.2,
                ),
              ),
              Text(
                'Nous voulons un État',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w300,
                  color: Colors.white,
                  letterSpacing: 2,
                ),
              ),
              const SizedBox(height: 30),
              Container(width: 120, height: 2, color: const Color(0xFFB0925A)),
              const SizedBox(height: 30),
              Text(
                'حزب العمران الموريتاني: معًا نبني دولة القانون والمؤسسات، عمرانًا وتنميةً وعدالةً اجتماعية',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.grey[200],
                  height: 1.5,
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const JoinPage()),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFB0925A),
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 48,
                    vertical: 16,
                  ),
                  textStyle: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                child: const Text('انضم إلى الحزب'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// ==================== STATS SECTION ====================

class StatsSection extends StatelessWidget {
  const StatsSection({super.key});

  @override
  Widget build(BuildContext context) {
    final stats = MockData.getStats();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      color: Colors.grey[50],
      child: Wrap(
        spacing: 40,
        runSpacing: 40,
        alignment: WrapAlignment.center,
        children: stats.entries
            .map(
              (entry) => SizedBox(
                width: 200,
                child: Column(
                  children: [
                    Text(
                      entry.value,
                      style: const TextStyle(
                        fontSize: 36,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A2D42),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      entry.key,
                      style: const TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ],
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

// ==================== VISION SNIPPET ====================

class VisionSnippet extends StatelessWidget {
  const VisionSnippet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(
        children: [
          Icon(Icons.celebration, size: 60, color: const Color(0xFFB0925A)),
          const SizedBox(height: 20),
          Text(
            'رُؤْيَتُنَا',
            style: GoogleFonts.amiri(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A2D42),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            constraints: const BoxConstraints(maxWidth: 800),
            child: Text(
              'نَحْلُمُ بِدَوْلَةِ المُؤَسَّسَاتِ الَّتِي تَضَعُ العَدَالَةَ وَالتَّنْمِيَةَ فِي صَمِيمِ أُولَوِيَّاتِهَا. حَيْثُ يَكُونُ العُمْرَانُ وَسِيلَةً لِرَفَاهِيَةِ المُوَاطِنِ، وَالثَّقَافَةُ جِسْرًا لِلتَّوَاصُلِ وَالانْتِمَاءِ. نَسْعَى لِمُورِيتَانِيَا قَوِيَّةٍ بِأَبْنَائِهَا، غَنِيَّةٍ بِمَوَارِدِهَا، عَادِلَةٍ فِي مُؤَسَّسَاتِهَا.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 18,
                height: 1.8,
                color: Colors.grey[700],
              ),
            ),
          ),
          const SizedBox(height: 30),
          TextButton.icon(
            onPressed: () {
              showDialog(
                context: context,
                builder: (_) => AlertDialog(
                  title: const Text('رؤية حزب العمران'),
                  content: const Text('سيتم ربط البيان الكامل بـ Supabase'),
                  actions: [
                    TextButton(
                      onPressed: () => Navigator.pop(context),
                      child: const Text('إغلاق'),
                    ),
                  ],
                ),
              );
            },
            icon: const Icon(Icons.arrow_forward),
            label: const Text('اقرأ البيان الكامل'),
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFFB0925A),
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== NEWS TEASERS ====================

class NewsTeasers extends StatelessWidget {
  final List<NewsModel> news;
  const NewsTeasers({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      color: Colors.grey[50],
      child: Column(
        children: [
          Text(
            'آخِرُ الأَخْبَارِ',
            style: GoogleFonts.amiri(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A2D42),
            ),
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth > 900
                  ? 3
                  : (constraints.maxWidth > 600 ? 2 : 1);
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.8,
                ),
                itemCount: news.length,
                itemBuilder: (context, index) => NewsCard(news: news[index]),
              );
            },
          ),
          const SizedBox(height: 30),
          TextButton(
            onPressed: () => Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const AllNewsPage()),
            ),
            child: const Text('عرض جميع الأخبار'),
            style: TextButton.styleFrom(
              foregroundColor: const Color(0xFFB0925A),
            ),
          ),
        ],
      ),
    );
  }
}

class NewsCard extends StatelessWidget {
  final NewsModel news;
  const NewsCard({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            news.imageUrl,
            height: 180,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  news.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  news.date,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(
                  news.excerpt,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 12),
                TextButton(
                  onPressed: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => NewsDetailPage(news: news),
                    ),
                  ),
                  child: const Text('اقرأ المزيد'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== PROGRAMS PREVIEW ====================

class ProgramsPreview extends StatelessWidget {
  const ProgramsPreview({super.key});

  @override
  Widget build(BuildContext context) {
    final programs = MockData.getPrograms();
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 40),
      child: Column(
        children: [
          Text(
            'بَرَامِجُنَا',
            style: GoogleFonts.amiri(
              fontSize: 32,
              fontWeight: FontWeight.bold,
              color: Color(0xFF1A2D42),
            ),
          ),
          const SizedBox(height: 40),
          LayoutBuilder(
            builder: (context, constraints) {
              int crossAxisCount = constraints.maxWidth > 900
                  ? 3
                  : (constraints.maxWidth > 600 ? 2 : 1);
              return GridView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: crossAxisCount,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20,
                  childAspectRatio: 0.9,
                ),
                itemCount: programs.length,
                itemBuilder: (context, index) =>
                    ProgramCard(program: programs[index]),
              );
            },
          ),
        ],
      ),
    );
  }
}

class ProgramCard extends StatelessWidget {
  final ProgramModel program;
  const ProgramCard({super.key, required this.program});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            program.imageUrl,
            height: 160,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  program.title,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  program.region,
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
                const SizedBox(height: 8),
                Text(program.description),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Chip(
                      label: Text(program.status),
                      backgroundColor: const Color(0xFFB0925A).withOpacity(0.2),
                    ),
                    TextButton(
                      onPressed: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => ProgramDetailPage(program: program),
                        ),
                      ),
                      child: const Text('تفاصيل البرنامج'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

// ==================== FOOTER ====================

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 40),
      color: const Color(0xFF1A2D42),
      child: LayoutBuilder(
        builder: (context, constraints) {
          bool isDesktop = constraints.maxWidth > 700;
          return isDesktop
              ? Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [_footerColumn(), _linksColumn(), _contactColumn()],
                )
              : Column(
                  children: [
                    _footerColumn(),
                    const SizedBox(height: 30),
                    _linksColumn(),
                    const SizedBox(height: 30),
                    _contactColumn(),
                  ],
                );
        },
      ),
    );
  }

  Widget _footerColumn() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Row(
        children: [
          Container(
            width: 45,
            height: 45,
            decoration: BoxDecoration(
              color: const Color(0xFFB0925A),
              borderRadius: BorderRadius.circular(8),
              image: const DecorationImage(
                image: AssetImage('assets/logo.JPG'),
                fit: BoxFit.cover,
              ),
            ),
            child: const Icon(Icons.image, color: Colors.white),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'حزب العمران',
                style: GoogleFonts.amiri(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Parti Al-Omrane',
                style: TextStyle(fontSize: 12, color: Colors.grey[400]),
              ),
            ],
          ),
        ],
      ),
      const SizedBox(height: 20),
      const Text(
        'نريد دولة - Nous voulons un État',
        style: TextStyle(color: Color(0xFFB0925A), fontWeight: FontWeight.bold),
      ),
      const SizedBox(height: 10),
      const Text(
        'معاً نبني موريتانيا الغد',
        style: TextStyle(color: Colors.grey),
      ),
    ],
  );

  Widget _linksColumn() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'روابط سريعة',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 12),
      _footerLink('برنامج الحزب'),
      _footerLink('البيان السياسي'),
      _footerLink('الهيكل التنظيمي'),
      _footerLink('الانضمام'),
    ],
  );

  Widget _contactColumn() => Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      const Text(
        'اتصل بنا',
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      const SizedBox(height: 12),
      _footerLink('info@al-omrane.mr'),
      _footerLink('+222 45 25 15 15'),
      _footerLink('نواكشوط - تفرغ زينة'),
    ],
  );

  Widget _footerLink(String text) => Padding(
    padding: const EdgeInsets.symmetric(vertical: 4),
    child: Text(text, style: const TextStyle(color: Colors.grey)),
  );
}

// ==================== INTERNAL PAGES ====================

class AllNewsPage extends StatelessWidget {
  const AllNewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('جميع الأخبار'),
        backgroundColor: const Color(0xFF1A2D42),
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(20),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
          childAspectRatio: 0.7,
        ),
        itemCount: MockData.getNews().length,
        itemBuilder: (context, index) =>
            NewsCard(news: MockData.getNews()[index]),
      ),
    );
  }
}

class ProgramsPage extends StatelessWidget {
  const ProgramsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('برامج الحزب'),
        backgroundColor: const Color(0xFF1A2D42),
      ),
      body: ListView.builder(
        padding: const EdgeInsets.all(20),
        itemCount: MockData.getPrograms().length,
        itemBuilder: (context, index) => Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ProgramCard(program: MockData.getPrograms()[index]),
        ),
      ),
    );
  }
}

class NewsDetailPage extends StatelessWidget {
  final NewsModel news;
  const NewsDetailPage({super.key, required this.news});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(news.title),
        backgroundColor: const Color(0xFF1A2D42),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              news.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Text(news.date, style: const TextStyle(color: Colors.grey)),
            const SizedBox(height: 12),
            Text(
              news.title,
              style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            /// SUPABASE: سيتم جلب المحتوى الكامل من Supabase
            Text(
              news.content,
              style: const TextStyle(fontSize: 16, height: 1.6),
            ),
          ],
        ),
      ),
    );
  }
}

class ProgramDetailPage extends StatelessWidget {
  final ProgramModel program;
  const ProgramDetailPage({super.key, required this.program});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(program.title),
        backgroundColor: const Color(0xFF1A2D42),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(
              program.imageUrl,
              height: 300,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Chip(label: Text('الولاية: ${program.region}')),
                Chip(label: Text('الحالة: ${program.status}')),
              ],
            ),
            const SizedBox(height: 20),
            Text(
              program.description,
              style: const TextStyle(fontSize: 16, height: 1.6),
            ),
            const SizedBox(height: 20),

            /// SUPABASE: مزيد من التفاصيل
            const Text('خطة التنفيذ والميزانية... سيتم ربطها بـ Supabase'),
          ],
        ),
      ),
    );
  }
}

class JoinPage extends StatelessWidget {
  const JoinPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('انضم إلى الحزب'),
        backgroundColor: const Color(0xFF1A2D42),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 500),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.person_add,
                  size: 80,
                  color: Color(0xFFB0925A),
                ),
                const SizedBox(height: 24),
                const Text(
                  'سجل بياناتك',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 32),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'الاسم الكامل',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'البريد الإلكتروني',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  decoration: const InputDecoration(
                    labelText: 'رقم الهاتف',
                    border: OutlineInputBorder(),
                  ),
                ),
                const SizedBox(height: 16),
                DropdownButtonFormField<String>(
                  decoration: const InputDecoration(
                    labelText: 'ولاية الإقامة',
                    border: OutlineInputBorder(),
                  ),
                  items:
                      [
                            'نواكشوط',
                            'نواذيبو',
                            'الحوض الشرقي',
                            'الحوض الغربي',
                            'لعصابة',
                            'كوركول',
                            'آدرار',
                          ]
                          .map(
                            (e) => DropdownMenuItem(value: e, child: Text(e)),
                          )
                          .toList(),
                  onChanged: (value) {},
                ),
                const SizedBox(height: 24),
                ElevatedButton(
                  onPressed: () {
                    /// SUPABASE: إرسال بيانات العضو
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        title: const Text('تم استلام طلبك'),
                        content: const Text(
                          'شكراً لانضمامك إلى حزب العمران. سنتواصل معك قريباً. نريد دولة - Nous voulons un État',
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text('حسناً'),
                          ),
                        ],
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFB0925A),
                    minimumSize: const Size(double.infinity, 50),
                  ),
                  child: const Text('إرسال', style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
