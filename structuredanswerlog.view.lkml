view: structuredanswerlog {
  sql_table_name: CNOW_QA02_USERS.STRUCTUREDANSWERLOG ;;

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

  dimension: answer {
    type: string
    sql: ${TABLE}.ANSWER ;;
  }

  dimension: assignmentresultsuuid {
    type: string
    sql: ${TABLE}.ASSIGNMENTRESULTSUUID ;;
  }

  dimension: itemuri {
    type: string
    sql: ${TABLE}.ITEMURI ;;
  }

  dimension: lastmodified {
    type: string
    sql: ${TABLE}.LASTMODIFIED ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
