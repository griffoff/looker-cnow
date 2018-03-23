view: tests {
  sql_table_name: CNOW_QA02_USERS.TESTS ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.ID ;;
  }

  dimension: _fivetran_deleted {
    type: yesno
    sql: ${TABLE}._FIVETRAN_DELETED ;;
  }

  dimension: _fivetran_synced {
    type: string
    sql: ${TABLE}._FIVETRAN_SYNCED ;;
  }

  dimension: archived {
    type: string
    sql: ${TABLE}.ARCHIVED ;;
  }

  dimension: fullitemcount {
    type: number
    sql: ${TABLE}.FULLITEMCOUNT ;;
  }

  dimension: headerfooterprintoption {
    type: number
    sql: ${TABLE}.HEADERFOOTERPRINTOPTION ;;
  }

  dimension: idata {
    type: string
    sql: ${TABLE}.IDATA ;;
  }

  dimension: institutionid {
    type: string
    sql: ${TABLE}.INSTITUTIONID ;;
  }

  dimension: isautogradable {
    type: number
    sql: ${TABLE}.ISAUTOGRADABLE ;;
  }

  dimension: isfolder {
    type: number
    sql: ${TABLE}.ISFOLDER ;;
  }

  dimension: isforcesystemcheck {
    type: number
    sql: ${TABLE}.ISFORCESYSTEMCHECK ;;
  }

  dimension: ispublic {
    type: number
    sql: ${TABLE}.ISPUBLIC ;;
  }

  dimension: isreadonly {
    type: number
    sql: ${TABLE}.ISREADONLY ;;
  }

  dimension: itemcount {
    type: number
    sql: ${TABLE}.ITEMCOUNT ;;
  }

  dimension: lastmodified {
    type: string
    sql: ${TABLE}.LASTMODIFIED ;;
  }

  dimension: lasttestedit {
    type: string
    sql: ${TABLE}.LASTTESTEDIT ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: parentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.PARENTID ;;
  }

  dimension: preferableversion {
    type: string
    sql: ${TABLE}.PREFERABLEVERSION ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.USERID ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name]
  }
}
