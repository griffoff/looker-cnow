view: sat_book {
  sql_table_name: CNOWSQLCOV3_ILRNMINDTAP.BOOKLIST ;;

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}."_FIVETRAN_DELETED" ;;
  }

  dimension_group: _fivetran_synced {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}."_FIVETRAN_SYNCED" ;;
  }

  dimension: book {
    type: string
    sql: ${TABLE}."ABBR" ;;
  }

  dimension: bookhash {
    type: string
    sql: md5(${TABLE}."ABBR") ;;
  }

  dimension: discipline {
    type: string
    sql: ${TABLE}."DISCIPLINE" ;;
  }

  dimension: isbn {
    type: string
    sql: ${TABLE}."ISBN" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."PRODUCT" ;;
  }

  measure: count {
    type: count
    drill_fields: [book]
  }
}
