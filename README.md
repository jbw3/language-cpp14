# language-cpp14 package

Syntax highlighting for C++14.

### Features

* C++11 and C++14 keywords
* Doxygen keywords
* Binary literals
* Digit separators
* Raw strings
* C++ snippets

### Doxygen

This package marks doxygen keywords. However, many syntax themes do not highlight them. If your theme does not, you can enable highlighting by adding the following to your styles.less file:

```less
atom-text-editor::shadow .keyword.other.documentation
{
    color: red;
}
```

### License

MIT
