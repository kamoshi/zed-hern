; Keywords
[
  "let"
  "mut"
  "fn"
  "trait"
  "impl"
  "type"
  "extern"
  "import"
  "for"
  "in"
] @keyword

[
  "match"
  "if"
  "else"
  "loop"
  "continue"
  "break"
  "return"
] @keyword.control

[
  "infix"
  "infixl"
  "infixr"
] @keyword

(attribute "inline" @attribute)
(extern_attribute "template" @attribute)

; Operators
[
  "->"
  "|>"
  "||"
  "&&"
  "=="
  "!="
  "+"
  "-"
  "*"
  ".."
  "!"
  "="
] @operator

(operator) @operator

; Punctuation
[
  ";"
  ":"
  ","
  "."
] @punctuation.delimiter

[
  "("
  ")"
  "["
  "]"
  "{"
  "}"
] @punctuation.bracket

"#" @punctuation.special

; Literals
(string) @string
(number) @number
(bool) @boolean
(unit_expression) @constant.builtin
(unit_type) @type.builtin

; Types
(type_identifier) @type
(type_variable) @type.parameter
(type_hole) @type.builtin
(type_rest) @punctuation.special
(type_field name: (identifier) @property)
(type_def_stmt name: (identifier) @type.definition)
(type_params (identifier) @type.parameter)
(trait_stmt name: (identifier) @type)
(trait_stmt param: (_) @type.parameter)

; Functions and methods
(fn_stmt name: (identifier) @function)
(fn_stmt name: (operator) @function)
(impl_method name: (identifier) @function.method)
(impl_method name: (operator) @function.method)
(trait_method name: (identifier) @function.method)
(trait_method name: (operator) @function.method)
(extern_stmt name: (identifier) @function)
(call_expression function: (primary_expression (identifier) @function.call))
(call_expression
  function: (primary_expression
    (field_access_expression field: (identifier) @function.method.call)))

; Constructors and variants
(variant name: (identifier) @constructor)
(variant name: (type_identifier) @constructor)
(constructor_pattern name: (identifier) @constructor)

; Bindings
(parameter pattern: (pattern (identifier) @variable.parameter))
(trait_parameter name: (identifier) @variable.parameter)
(record_pattern_field binding: (identifier) @variable)
(record_rest_pattern binding: (identifier) @variable)
(list_rest_pattern binding: (identifier) @variable)

; Variables and properties
(identifier) @variable
(field_initializer name: (identifier) @property)
(field_access_expression field: (identifier) @property)
(record_pattern_field field: (identifier) @property)

; Comments
(comment) @comment
