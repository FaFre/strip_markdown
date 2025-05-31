class RemoveMarkdownOptions {
  final bool stripListLeaders;
  final String? listUnicodeChar;
  final bool gfm;
  final bool useImgAltText;
  final bool abbr;
  final bool replaceLinksWithURL;
  final List<String> htmlTagsToSkip;
  final bool throwError;

  const RemoveMarkdownOptions({
    this.stripListLeaders = true,
    this.listUnicodeChar,
    this.gfm = true,
    this.useImgAltText = true,
    this.abbr = false,
    this.replaceLinksWithURL = false,
    this.htmlTagsToSkip = const [],
    this.throwError = false,
  });
}
