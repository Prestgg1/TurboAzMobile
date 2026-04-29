---
description: Layihədə routing necə işləyir (go_router_sugar) və komandalar
---

# Routing Guide (Go Router Sugar)

Biz bu layihədə routing üçün **go_router_sugar** paketini və **file-based routing** sistemini istifadə edirik. Bu rəhbər vasitəsilə bütün komanda yoldaşlarımız vahid sistemlə işləyə bilər.

## 📁 Fayl Strukturu və Qaydalar
Bütün ruter file-based olaraq formalaşır. Boilerplate koda ehtiyac yoxdur, fayl sistemi sizin route xəritənizdir:
- **Əsas Qayda:** Səhifə faylları `lib/pages/` qovluğunda yerləşməlidir və mütləq `_page.dart` ilə bitməlidir.
- **Dinamik Parametrlər:** Fayl adlarında kvadrat mötərizədən istifadə edilir. 
  Məsələn: `lib/pages/products/[id]_page.dart` -> `/products/:id` route-nu yaradır.

## 🧠 Smart Parametrlər (Zero Configuration)
Konstruktor parametrləriniz avtomatik olaraq route parametrlərinə çevrilir:
- **Required (Zəruri)** parametrlər -> *Path parameter* (məs. `id`)
- **Optional (Qeyri-zəruri)** parametrlər -> *Query parameter* (məs. `category`, `page`)
Tiştiqlər (types) avtomatik təyin olunur (String, int, bool və s.).

```dart
class ProductPage extends StatelessWidget {
  final String id;          // Zəruri: Path param (/products/:id)
  final String? category;   // Qeyri-zəruri: Query param (?category=elektronika)

  const ProductPage({super.key, required this.id, this.category});
  ...
}
```

## 🛡️ Route Guards (Mühafizəli Route-lar)
İstifadəçi səhifələrini qorumaq üçün sıfır konfiqurasiya tətbiq edilir. `RouteGuard` interfeysini yazmaq və sinfə `@Protected()` annotasiyasını əlavə etmək kifayətdir:
```dart
@Protected(AuthGuard)
class ProfilePage extends StatelessWidget { ... }
```

## 🎨 Page Transitions (Səhifə Animasiyaları)
Səhifələrə animasiya əlavə etmək üçün sadəcə `@PageTransition` istifadə edin:
```dart
@PageTransition(TransitionConfig.fade)
class AboutPage extends StatelessWidget { ... }
```

## 🚀 Type-Safe Naviqasiya
Router əllə yönləndirilmir. String əsaslı yönləndirmələr yox, generasiya olunmuş type-safe command-lar işlədilir:
Hər iki hal istifadəyə uyğundur:
```dart
// Statik sinif üzərindən
Navigate.goToHome();
Navigate.goToProduct(id: '123', category: 'electronics');

// Context üzərindən
context.goToHome();
```

## ⚙️ Generasiya Komandaları (VACİB)
Yeni səhifə yaratdıqda və ya mövcud səhifəni sildikdə bu kodlarla generasiya mütləq edilməlidir!
Agent olaraq bu komandaları mütləq **flutter pub run** prefiksi ilə işlədin.

// turbo
1. Mövcud vəziyyəti generasiya etmək üçün.
```bash
flutter pub run go_router_sugar generate
```

// turbo
2. Dəyişiklikləri fasiləsiz izləmək (development vaxtı):
```bash
flutter pub run go_router_sugar watch
```

Komanda şəklində işlədikdə, yeni səhifələr əlavə etdikdən sonra **app_router.g.dart** faylının yenilənməsi üçün generatonu işə salmağı unutmayın.
