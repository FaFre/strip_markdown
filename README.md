# Strip Markdown

## What is it?
**strip_markdown** is a Dart package that removes (strips) Markdown formatting from text. This is a port of the popular Node.js [remove-markdown](https://github.com/zuchka/remove-markdown) package.

*Markdown formatting* means pretty much anything that doesn't look like regular text, like square brackets, asterisks, hash symbols, etc.

## When do I need it?
The typical use case is to display an excerpt from some Markdown text, without any of the actual Markdown syntax - for example in a list of posts, search results, or content previews.

## Installation

Add this to your package's ```pubspec.yaml``` file:

```yaml
dependencies:
  strip_markdown: ^1.0.0
```

Then run:
```bash
dart pub get
```

## Usage

```dart
import 'package:strip_markdown/strip_markdown.dart';

void main() {
  const markdown = '''
# This is a heading

This is a paragraph with [a link](http://www.example.com/) in it.

- List item 1
- List item 2

> This is a blockquote
''';

  final plainText = removeMd(markdown);
  print(plainText);
  // Output: This is a heading
  //
  // This is a paragraph with a link in it.
  //
  // List item 1
  // List item 2
  //
  // This is a blockquote
}
```

You can also supply an options object to the function. Currently, the following options are supported:

```dart
final plainText = removeMd(markdown, RemoveMarkdownOptions(
  stripListLeaders: true,    // strip list leaders (default: true)
  listUnicodeChar: '•',      // char to insert instead of stripped list leaders (default: null)
  gfm: true,                 // support GitHub-Flavored Markdown (default: true)
  useImgAltText: true,       // replace images with alt-text, if present (default: true)
  replaceLinksWithURL: false, // replace links with their URLs instead of link text (default: false)
  htmlTagsToSkip: [],        // HTML tags to skip when removing (default: [])
  throwError: false,         // throw errors instead of returning original text (default: false)
));
```

Setting ```stripListLeaders``` to ```false``` will retain any list characters (```*, -, +, (digit).```).

Setting ```listUnicodeChar``` to a string (e.g., ```'•'```) will replace list leaders with that character instead of removing them entirely.

## Features

This package supports removing:
- Headers (both ATX ```#``` and Setext ```===``` styles)
- Emphasis (bold and italic with ```*``` and ```_```)
- Links and images
- Code blocks and inline code
- Lists (ordered and unordered)
- Blockquotes
- Horizontal rules
- HTML tags
- Strikethrough text
- And more!

## Credits

This is a Dart port of the Node.js [remove-markdown](https://github.com/zuchka/remove-markdown) package.

The original JavaScript code is based on **Markdown Service Tools - Strip Markdown** by Brett Terpstra.

### Original Authors
- Stian Grytøyr (original creator)
- [zuchka](https://github.com/zuchka) (maintainer since 2023)

### Dart Port
- Fabian Freund (Dart implementation)

## License

MIT License - see the [LICENSE](LICENSE) file for details.

