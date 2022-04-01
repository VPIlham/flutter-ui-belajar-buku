class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourses() {
    return [
      Course('Nur', 'assets/icons/avatar01.png', 'Kancil dan Pak Tani',
          'assets/images/course01.png'),
      Course('Ilham', 'assets/icons/avatar02.png', 'Kisah Ayam dan Elang',
          'assets/images/course02.png'),
      Course('Hakim', 'assets/icons/avatar03.png', 'Kasuari yang Sombong',
          'assets/images/course03.png'),
    ];
  }
}
