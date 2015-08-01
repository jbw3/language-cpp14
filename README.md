# language-cpp14 package

Syntax highlighting for C++14.

### Features

* C++11 and C++14 keywords
* Binary literals
* Digit separators
* Raw strings

### Doxygen

This package also marks doxygen keywords. However, many syntax themes
do not highlight these keywords. If your theme does not, you can add
the following to your styles.less file:

```less
atom-text-editor::shadow .comment.documentation {
    color: red;
}
```

### License

MIT
