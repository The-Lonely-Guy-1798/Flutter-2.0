// lib/models.dart

// --- Story & Chapter Models ---

class Story {
  final String id;
  final String title;
  final String imageUrl;

  Story({required this.id, required this.title, required this.imageUrl});
}

class Chapter {
  final String title;
  final int chapterNumber;

  Chapter({required this.title, required this.chapterNumber});
}

class StoryDetail extends Story {
  final String author;
  final int views;
  final String description;
  final List<String> genres;
  final List<Chapter> chapters;

  StoryDetail({
    required super.id,
    required super.title,
    required super.imageUrl,
    required this.author,
    required this.views,
    required this.description,
    required this.genres,
    required this.chapters,
  });
}

// --- Home Page Models ---

class HomePageData {
  final List<Story> newlyAddedStories;
  final List<TrendingStory> dailyTrending;
  final List<TrendingStory> weeklyTrending;
  final List<TrendingStory> monthlyTrending;
  final List<LatestUpdate> latestUpdates;

  HomePageData({
    required this.newlyAddedStories,
    required this.dailyTrending,
    required this.weeklyTrending,
    required this.monthlyTrending,
    required this.latestUpdates,
  });
}

class TrendingStory {
  final String id;
  final String coverImageUrl;
  final String title;
  final int views;

  TrendingStory({
    required this.id,
    required this.coverImageUrl,
    required this.title,
    required this.views,
  });
}

class LatestUpdate {
  final String id;
  final String coverImageUrl;
  final String title;
  final String chapter;
  final String time;

  LatestUpdate({
    required this.id,
    required this.coverImageUrl,
    required this.title,
    required this.chapter,
    required this.time,
  });
}

// --- Article Models ---

class Article {
  final String id;
  final String title;
  final String imageUrl;
  final String author;
  final String publishedDate;
  final String category;
  final String content;
  final int views;

  Article({
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.author,
    required this.publishedDate,
    required this.category,
    required this.content,
    required this.views,
  });
}

class ArticleCategory {
  final String name;
  final String imageUrl;
  ArticleCategory({required this.name, required this.imageUrl});
}


// --- Crypto Models ---

class CryptoCurrency {
  final String id;
  final String symbol;
  final String name;
  final double price;
  final double change24h;

  CryptoCurrency({
    required this.id,
    required this.symbol,
    required this.name,
    required this.price,
    required this.change24h,
  });
}

class ReadingListStory {
  final Story story;
  final bool isUpdated;

  ReadingListStory({required this.story, required this.isUpdated});
}
