# language-cpp14 package

Syntax highlighting for C++14.

### Features

* C++11 and C++14 keywords
* Doxygen keywords
* Binary literals
* Digit separators
* Raw strings
* Attributes
* C++ snippets

### Doxygen

This package marks doxygen keywords. Most syntax themes will highlight them with the same color as keywords. To change this, add the following to your styles.less file:

```less
atom-text-editor::shadow .keyword.other.documentation
{
    color: red;
}
```

### License

MIT
