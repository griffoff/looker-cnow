view: assignmentitemresults {
  sql_table_name: CNOW_QA02_USERS.ASSIGNMENTITEMRESULTS ;;

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

  dimension: assignmentresultsid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ASSIGNMENTRESULTSID ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: correctanswer {
    type: string
    sql: ${TABLE}.CORRECTANSWER ;;
  }

  dimension: feedbackattempts {
    type: number
    sql: ${TABLE}.FEEDBACKATTEMPTS ;;
  }

  dimension: feedbackstatus {
    type: number
    sql: ${TABLE}.FEEDBACKSTATUS ;;
  }

  dimension: gradeoverride {
    type: number
    sql: ${TABLE}.GRADEOVERRIDE ;;
  }

  dimension: gradesource {
    type: number
    sql: ${TABLE}.GRADESOURCE ;;
  }

  dimension: hintsgiven {
    type: number
    sql: ${TABLE}.HINTSGIVEN ;;
  }

  dimension: iscommentviewablebystudents {
    type: number
    sql: ${TABLE}.ISCOMMENTVIEWABLEBYSTUDENTS ;;
  }

  dimension: isextracredit {
    type: number
    sql: ${TABLE}.ISEXTRACREDIT ;;
  }

  dimension: ismerged {
    type: number
    sql: ${TABLE}.ISMERGED ;;
  }

  dimension: issavedbutnotsubmitted {
    type: number
    sql: ${TABLE}.ISSAVEDBUTNOTSUBMITTED ;;
  }

  dimension: itemorder {
    type: number
    sql: ${TABLE}.ITEMORDER ;;
  }

  dimension: itemorderdisplayed {
    type: number
    sql: ${TABLE}.ITEMORDERDISPLAYED ;;
  }

  dimension: itemuid {
    type: string
    sql: ${TABLE}.ITEMUID ;;
  }

  dimension: lastmodified {
    type: string
    sql: ${TABLE}.LASTMODIFIED ;;
  }

  dimension: possiblescore {
    type: number
    sql: ${TABLE}.POSSIBLESCORE ;;
  }

  dimension: question {
    type: string
    sql: ${TABLE}.QUESTION ;;
  }

  dimension: randseed {
    type: number
    sql: ${TABLE}.RANDSEED ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.SCORE ;;
  }

  dimension: studentanswer {
    type: string
    sql: ${TABLE}.STUDENTANSWER ;;
  }

  dimension: timespent {
    type: number
    sql: ${TABLE}.TIMESPENT ;;
  }

  dimension: timestaken {
    type: number
    sql: ${TABLE}.TIMESTAKEN ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
  }

  measure: count {
    type: count
    drill_fields: [id]
  }
}
