; Keywords
[
  "let"
  "fn"
  "trait"
  "impl"
  "type"
  "extern"
  "import"
  "where"
  "for"
  "in"
  "do"
] @keyword

; `mut` is a modifier — highlight it distinctly wherever it appears
"mut" @keyword.modifier

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
(inner_attribute name: (identifier) @attribute)

; Hashbang and comments
(hashbang) @comment

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
  "<-"
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
(never_type) @type.builtin

; Variables and properties
(identifier) @variable
(field_initializer name: (identifier) @property)
(record_field_or_spread shorthand: (identifier) @property)
(field_access_expression field: (identifier) @property)
(record_pattern_field field: (identifier) @property)

; Types
(type_identifier) @type
(type_variable) @type.parameter
(type_hole) @type.builtin
(type_rest) @punctuation.special
(type_field name: (identifier) @property)
(type_def_stmt name: (identifier) @type.definition)
(type_params (identifier) @type.parameter)
(type_params (type_variable) @type.parameter)
(type_bound var: (_) @type.parameter)
(type_bound trait: (identifier) @type)
(trait_stmt name: (identifier) @type)
(trait_stmt param: (_) @type.parameter)
(trait_impl_stmt trait: (identifier) @type)
(trait_impl_stmt trait: (type_identifier) @type)
(trait_impl_stmt trait: (type_apply name: (_) @type))

; Constructors and variants
(variant name: (identifier) @constructor)
(variant name: (type_identifier) @constructor)
(constructor_pattern name: (identifier) @constructor)

; Bindings
(parameter pattern: (pattern (identifier) @variable.parameter))
(parameter "mut" @keyword.modifier)
(trait_parameter name: (identifier) @variable.parameter)
(record_pattern_field binding: (identifier) @variable)
(record_rest_pattern binding: (identifier) @variable)
(list_rest_pattern binding: (identifier) @variable)

; Spread syntax in array and record expressions
(array_element ".." @punctuation.special)
(record_field_or_spread ".." @punctuation.special)

; Functions and methods
(fn_stmt name: (identifier) @function)
(fn_stmt name: (operator) @function)
(inherent_impl_method name: (identifier) @function.method)
(trait_impl_method name: (identifier) @function.method)
(trait_impl_method name: (operator) @function.method)
(trait_method name: (identifier) @function.method)
(trait_method name: (operator) @function.method)
(extern_stmt name: (identifier) @function)
(call_expression function: (primary_expression (identifier) @function.call))
(call_expression
  function: (primary_expression
    (field_access_expression field: (identifier) @function.method.call)))

; do-bind pattern variable
(do_bind_statement pattern: (pattern (identifier) @variable.parameter))

; Comments
(comment) @comment
