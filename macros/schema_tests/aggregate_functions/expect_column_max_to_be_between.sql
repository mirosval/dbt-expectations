{% macro test_expect_column_max_to_be_between(model, column_name,
                                                min_value,
                                                max_value,
                                                partition_column=None,
                                                partition_filter=None
                                                ) %}
{% set expression %}
max({{ column_name }})
{% endset %}
{{ dbt_expectations.expression_between(model,
                                        expression=expression,
                                        min_value=min_value,
                                        max_value=max_value,
                                        partition_column=partition_column,
                                        partition_filter=partition_filter
                                        ) }}
{% endmacro %}
