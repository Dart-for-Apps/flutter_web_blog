class BlogOption {
  BlogOption({
    this.baseDir,
    this.categoryFile,
    this.postFile,
    this.tagFile,
  });
  factory BlogOption.fromMap(Map map) => BlogOption(
        baseDir: map['baseDir'] as String,
        categoryFile: map['categoryFile'] as String,
        postFile: map['postFile'] as String,
        tagFile: map['tagFile'] as String,
      );
  final String baseDir;
  final String tagFile;
  final String postFile;
  final String categoryFile;
}
