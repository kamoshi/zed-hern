; Explicit bracket delimiters
(do_expression "{" @start "}" @end) @indent
(block "{" @start "}" @end) @indent
(record_expression "{" @start "}" @end) @indent
(record_pattern "{" @start "}" @end) @indent
(type_record "{" @start "}" @end) @indent
(associated_type_record "{" @start "}" @end) @indent
(use_selective_binding "{" @start "}" @end) @indent
(trait_stmt "{" @start "}" @end) @indent
(trait_impl_stmt "{" @start "}" @end) @indent
(inherent_impl_stmt "{" @start "}" @end) @indent
(test_stmt "{" @start "}" @end) @indent
(macro_rule_block "{" @start "}" @end) @indent
(macro_brace_tree "{" @start "}" @end) @indent
(macro_bracket_tree "[" @start "]" @end) @indent
(macro_paren_tree "(" @start ")" @end) @indent
(match_expression "{" @start "}" @end) @indent
(array_expression "[" @start "]" @end) @indent
(list_pattern "[" @start "]" @end) @indent
(type_array "[" @start "]" @end) @indent
(associated_type_array "[" @start "]" @end) @indent
(parameters "(" @start ")" @end) @indent
(trait_parameters "(" @start ")" @end) @indent
(type_params "(" @start ")" @end) @indent
(attribute_arguments "(" @start ")" @end) @indent
(type_apply "(" @start ")" @end) @indent
(type_fn "(" @start ")" @end) @indent
(associated_type_apply "(" @start ")" @end) @indent
(associated_type_fn "(" @start ")" @end) @indent
(tuple_expression "(" @start ")" @end) @indent
(tuple_pattern "(" @start ")" @end) @indent
(type_tuple "(" @start ")" @end) @indent
(associated_type_tuple "(" @start ")" @end) @indent
(parenthesized_expression "(" @start ")" @end) @indent
(parenthesized_pattern "(" @start ")" @end) @indent
(parenthesized_type "(" @start ")" @end) @indent
(associated_parenthesized_type "(" @start ")" @end) @indent

; Match arms
(match_arm "->" @start) @indent
(match_arm
  "->" @start
  value: (primary_expression (block) @end)
) @indent

; Multiline declarations and expressions
(type_def_stmt "=" @start) @indent
(type_alias_stmt "=" @start) @indent
(let_stmt "=" @start) @indent
(do_bind_statement "<-" @start) @indent
(fn_stmt "->" @start) @indent
(fn_stmt (where_clause "where" @start)) @indent
(trait_impl_stmt (where_clause "where" @start)) @indent
(inherent_impl_stmt (where_clause "where" @start)) @indent
(inherent_impl_method (where_clause "where" @start)) @indent
(lambda_expression "->" @start) @indent
(if_expression "else" @start) @indent
