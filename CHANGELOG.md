# Change Log

## [0.3.6]

- Fix memory view dimensions parsing
- Allow cython import completions for module in from import statements

## [0.3.5]

- Allow membernodes for template annotations
- Ensure TypeVar semantics are provided
- Default to variable semantics unless no declaration
- Add type parameter semantics
- Parse template returnType
- Add missing semantics
- Create type annotation for template declaration
- Fix hang when parsing nested cpp template params
- Fix nested cpp classes type evaluation

## [0.3.4]

- Don't add constructors for cppclass to completions
- Fix issue binding scope to constructor

## [0.3.3]

- Allow multiple imports of same name for python and cython
- Temp fix for infinite recursion with nested cpp classes
- Fix error parsing semantic tokens with elipses
- Fix error for no fullname attribute
- Make properties appear as a variable in semantic tokens
- Add cython keyword completions
- Add fused types
- Fix bogus error for 'cdef inline' function with nogil

## [0.3.2]

- Differentiate config options from pyright
- Make nogil and gil soft keywords
- Ensure modifiers in params are highlighted
- Fix semantics for callback functions

## [0.3.1]

- Update readme

## [0.3.0]

- Add Semantic Tokens

## [0.2.1]

- Add packed modifier to highlight
- Add compileCurrentFile command
- Fix declaration type mismatch
- Add parsing for packed struct
- Don't report general type error for struct or union with constructor or sequence initialization
- Do not report general type error for a cast to an aliased callback
- Fix type check 'noReturn' for protoype function

## [0.2.0]

- Add cpp syntax support
- Fix cpp operator highlight

## [0.1.5]

- Add typings for cython module

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
