view: booklist {
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

  dimension: abbr {
    type: string
    sql: ${TABLE}."ABBR" ;;
  }

  dimension: bookclass {
    type: string
    sql: ${TABLE}."BOOKCLASS" ;;
  }

  dimension: databaseurl {
    type: string
    sql: ${TABLE}."DATABASEURL" ;;
  }

  dimension: description {
    type: string
    sql: ${TABLE}."DESCRIPTION" ;;
  }

  dimension: discipline {
    type: string
    sql: ${TABLE}."DISCIPLINE" ;;
  }

  dimension: enabled {
    type: number
    sql: ${TABLE}."ENABLED" ;;
  }

  dimension_group: importdate {
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
    sql: ${TABLE}."IMPORTDATE" ;;
  }

  dimension: importrepository {
    type: string
    sql: ${TABLE}."IMPORTREPOSITORY" ;;
  }

  dimension: importuuid {
    type: string
    sql: ${TABLE}."IMPORTUUID" ;;
  }

  dimension: importversion {
    type: string
    sql: ${TABLE}."IMPORTVERSION" ;;
  }

  dimension: isbn {
    type: string
    sql: ${TABLE}."ISBN" ;;
  }

  dimension_group: lastmodified {
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
    sql: ${TABLE}."LASTMODIFIED" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: newabbr {
    type: string
    sql: ${TABLE}."NEWABBR" ;;
  }

  dimension: product {
    type: string
    sql: ${TABLE}."PRODUCT" ;;
  }

  dimension: version {
    type: string
    sql: ${TABLE}."VERSION" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
