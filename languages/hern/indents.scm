; Explicit bracket delimiters
(block "{" @start "}" @end) @indent
(record_expression "{" @start "}" @end) @indent
(record_pattern "{" @start "}" @end) @indent
(type_record "{" @start "}" @end) @indent
(trait_stmt "{" @start "}" @end) @indent
(impl_stmt "{" @start "}" @end) @indent
(match_expression "{" @start "}" @end) @indent
(array_expression "[" @start "]" @end) @indent
(list_pattern "[" @start "]" @end) @indent
(type_array "[" @start "]" @end) @indent
(parameters "(" @start ")" @end) @indent
(trait_parameters "(" @start ")" @end) @indent
(type_params "(" @start ")" @end) @indent
(type_bounds "[" @start "]" @end) @indent
(type_apply "(" @start ")" @end) @indent
(type_fn "(" @start ")" @end) @indent
(tuple_expression "(" @start ")" @end) @indent
(tuple_pattern "(" @start ")" @end) @indent
(type_tuple "(" @start ")" @end) @indent
(parenthesized_expression "(" @start ")" @end) @indent
(parenthesized_pattern "(" @start ")" @end) @indent
(parenthesized_type "(" @start ")" @end) @indent

; Match arms
(match_arm "->" @start) @indent
(match_arm
  "->" @start
  value: (primary_expression (block) @end)
) @indent

; Multiline declarations and expressions
(type_def_stmt "=" @start) @indent
(let_stmt "=" @start) @indent
(fn_stmt "->" @start) @indent
(lambda_expression "->" @start) @indent
(if_expression "else" @start) @indent
