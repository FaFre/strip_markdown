// ignore_for_file: avoid_print

import 'package:strip_markdown/strip_markdown.dart';

void main() {
  // Basic markdown removal
  const String markdown = '''
# Heading
This is **bold** and *italic* text with a [link](https://example.com).

## Another heading
- List item 1
- List item 2

> This is a blockquote

`inline code` and ```code block```

![Image alt text](image.png)
''';

  final String plainText = removeMd(markdown);
  print('Original markdown:');
  print(markdown);
  print('\nStripped text:');
  print(plainText);

  // Using options
  const String markdownWithOptions = '- **Important** item\n- Another item';

  // Keep list leaders but replace with custom character
  final String withCustomList = removeMd(
    markdownWithOptions,
    const RemoveMarkdownOptions(listUnicodeChar: '•'),
  );
  print('\nWith custom list character:');
  print(withCustomList);

  // Remove list leaders completely
  final String withoutLists = removeMd(
    markdownWithOptions,
    const RemoveMarkdownOptions(),
  );
  print('\nWithout list leaders:');
  print(withoutLists);

  // Keep image alt text
  const String imageMarkdown = 'Check out this ![cool image](photo.jpg)!';
  final String withAltText = removeMd(
    imageMarkdown,
    const RemoveMarkdownOptions(),
  );
  print('\nWith image alt text:');
  print(withAltText);
}
