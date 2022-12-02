# Change Log

## [0.1.4]

- Fix error (Request textDocument/documentHighlight failed) on cast node

## [0.1.3]

- Add cython and cython.operator typings

## [0.1.2]

- Don't assume function declaration if statement is an assignment
- Suppress error on possible template

## [0.1.1]

- Add parsing for cast to memory view
- Add parsing for buffer syntax

## [0.1.0]

- Auto-import matching 'pxd' file for 'pyx' files
- Add parsing for ctuples

## [0.0.10]

- Make cython installed check simpler

## [0.0.9]

- Fix infinite loop when parsing cython function

## [0.0.8]

- Fix type alias expansion for imported type aliases
- Add deprecation warnings for legacy property and for from loops
- Remove auto closing angle brackets

## [0.0.7]

- Don't expand type alias if type is also a type alias
- Report not defined for type alias

## [0.0.6]

- Highlight variable modifiers in parameters
- Show the type name only for hovers over a variable declared with ctypedef type
- Fix rename symbol action for a type used in a cdef declaration

## [0.0.5]

- Fix parsing 'long long int'
- Retain type suffixes on assignment

## [0.0.4]

- Add type hints for callback declarations
- Add type hints for prototype functions with no name

## [0.0.3]

- Fix issue parsing 'long long' types

## [0.0.2]

- Added prefixes and suffixes to types for hover text

## [0.0.1]

- Initial release
