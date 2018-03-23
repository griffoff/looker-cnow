view: assignmentresults {
  sql_table_name: CNOW_QA02_USERS.ASSIGNMENTRESULTS ;;

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

  dimension: ability {
    type: number
    sql: ${TABLE}.ABILITY ;;
  }

  dimension: absolutestarttime {
    type: string
    sql: ${TABLE}.ABSOLUTESTARTTIME ;;
  }

  dimension: additionalactivitydata {
    type: string
    sql: ${TABLE}.ADDITIONALACTIVITYDATA ;;
  }

  dimension: assignmentid {
    type: number
    value_format_name: id
    # hidden: yes
    sql: ${TABLE}.ASSIGNMENTID ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: completedat {
    type: string
    sql: ${TABLE}.COMPLETEDAT ;;
  }

  dimension: completionsource {
    type: string
    sql: ${TABLE}.COMPLETIONSOURCE ;;
  }

  dimension: externaltakeid {
    type: string
    sql: ${TABLE}.EXTERNALTAKEID ;;
  }

  dimension: gradeoverride {
    type: number
    sql: ${TABLE}.GRADEOVERRIDE ;;
  }

  dimension: gradesource {
    type: number
    sql: ${TABLE}.GRADESOURCE ;;
  }

  dimension: instructorevallastmodified {
    type: string
    sql: ${TABLE}.INSTRUCTOREVALLASTMODIFIED ;;
  }

  dimension: instructorevalstatus {
    type: number
    sql: ${TABLE}.INSTRUCTOREVALSTATUS ;;
  }

  dimension: lastmodified {
    type: string
    sql: ${TABLE}.LASTMODIFIED ;;
  }

  dimension: manualpenalty {
    type: number
    sql: ${TABLE}.MANUALPENALTY ;;
  }

  dimension: other {
    type: string
    sql: ${TABLE}.OTHER ;;
  }

  dimension: pagevisitdetails {
    type: string
    sql: ${TABLE}.PAGEVISITDETAILS ;;
  }

  dimension: possiblescore {
    type: number
    sql: ${TABLE}.POSSIBLESCORE ;;
  }

  dimension: progresssaved {
    type: number
    sql: ${TABLE}.PROGRESSSAVED ;;
  }

  dimension: progresssaveddate {
    type: string
    sql: ${TABLE}.PROGRESSSAVEDDATE ;;
  }

  dimension: progresssavedtime {
    type: number
    sql: ${TABLE}.PROGRESSSAVEDTIME ;;
  }

  dimension: randseed {
    type: number
    sql: ${TABLE}.RANDSEED ;;
  }

  dimension: rawscore {
    type: number
    sql: ${TABLE}.RAWSCORE ;;
  }

  dimension: rootassignmentid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ROOTASSIGNMENTID ;;
  }

  dimension: score {
    type: number
    sql: ${TABLE}.SCORE ;;
  }

  dimension: scoreupdateversion {
    type: number
    sql: ${TABLE}.SCOREUPDATEVERSION ;;
  }

  dimension: selecteditemwhenprogresssaved {
    type: number
    sql: ${TABLE}.SELECTEDITEMWHENPROGRESSSAVED ;;
  }

  dimension: startedat {
    type: string
    sql: ${TABLE}.STARTEDAT ;;
  }

  dimension: takeresulttype {
    type: number
    sql: ${TABLE}.TAKERESULTTYPE ;;
  }

  dimension: timespent {
    type: number
    sql: ${TABLE}.TIMESPENT ;;
  }

  dimension: timestaken {
    type: number
    sql: ${TABLE}.TIMESTAKEN ;;
  }

  dimension: unanswereditemcount {
    type: number
    sql: ${TABLE}.UNANSWEREDITEMCOUNT ;;
  }

  dimension: ungradeditemcount {
    type: number
    sql: ${TABLE}.UNGRADEDITEMCOUNT ;;
  }

  dimension: ungradedpossiblescore {
    type: number
    sql: ${TABLE}.UNGRADEDPOSSIBLESCORE ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.USERID ;;
  }

  dimension: uuid {
    type: string
    sql: ${TABLE}.UUID ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, assignments.id, assignments.name]
  }
}
