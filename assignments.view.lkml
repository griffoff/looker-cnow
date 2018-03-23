view: assignments {
  sql_table_name: CNOW_QA02_USERS.ASSIGNMENTS ;;

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

  dimension: allowpracticemodeafterallattempts {
    type: number
    sql: ${TABLE}.ALLOWPRACTICEMODEAFTERALLATTEMPTS ;;
  }

  dimension: allowpracticemodeaftertake {
    type: number
    sql: ${TABLE}.ALLOWPRACTICEMODEAFTERTAKE ;;
  }

  dimension: archived {
    type: string
    sql: ${TABLE}.ARCHIVED ;;
  }

  dimension: assignmentdata {
    type: string
    sql: ${TABLE}.ASSIGNMENTDATA ;;
  }

  dimension: assignmentrandseed {
    type: number
    sql: ${TABLE}.ASSIGNMENTRANDSEED ;;
  }

  dimension: assignmenttestid {
    type: number
    value_format_name: id
    sql: ${TABLE}.ASSIGNMENTTESTID ;;
  }

  dimension: assignmenttype {
    type: number
    sql: ${TABLE}.ASSIGNMENTTYPE ;;
  }

  dimension: autoadvance {
    type: number
    sql: ${TABLE}.AUTOADVANCE ;;
  }

  dimension: category {
    type: number
    sql: ${TABLE}.CATEGORY ;;
  }

  dimension: chapterid {
    type: number
    value_format_name: id
    sql: ${TABLE}.CHAPTERID ;;
  }

  dimension: comment {
    type: string
    sql: ${TABLE}.COMMENT ;;
  }

  dimension: condition {
    type: string
    sql: ${TABLE}.CONDITION ;;
  }

  dimension: conditionmode {
    type: number
    sql: ${TABLE}.CONDITIONMODE ;;
  }

  dimension: correctanswersviewableafter {
    type: string
    sql: ${TABLE}.CORRECTANSWERSVIEWABLEAFTER ;;
  }

  dimension: customfeedbackmode {
    type: number
    sql: ${TABLE}.CUSTOMFEEDBACKMODE ;;
  }

  dimension: customsort {
    type: number
    sql: ${TABLE}.CUSTOMSORT ;;
  }

  dimension: dateassigned {
    type: string
    sql: ${TABLE}.DATEASSIGNED ;;
  }

  dimension: datecantake {
    type: string
    sql: ${TABLE}.DATECANTAKE ;;
  }

  dimension: datedue {
    type: string
    sql: ${TABLE}.DATEDUE ;;
  }

  dimension: externaltakeidmigrated {
    type: number
    sql: ${TABLE}.EXTERNALTAKEIDMIGRATED ;;
  }

  dimension: feedbacktype {
    type: number
    sql: ${TABLE}.FEEDBACKTYPE ;;
  }

  dimension: gradesviewableafter {
    type: string
    sql: ${TABLE}.GRADESVIEWABLEAFTER ;;
  }

  dimension: gradingmode {
    type: string
    sql: ${TABLE}.GRADINGMODE ;;
  }

  dimension: gradingtolerance {
    type: number
    sql: ${TABLE}.GRADINGTOLERANCE ;;
  }

  dimension: hidecoursewarepolicy {
    type: number
    sql: ${TABLE}.HIDECOURSEWAREPOLICY ;;
  }

  dimension: hidequestionlabels {
    type: number
    sql: ${TABLE}.HIDEQUESTIONLABELS ;;
  }

  dimension: instructorcomment {
    type: string
    sql: ${TABLE}.INSTRUCTORCOMMENT ;;
  }

  dimension: integrationdata {
    type: string
    sql: ${TABLE}.INTEGRATIONDATA ;;
  }

  dimension: isextracredit {
    type: number
    sql: ${TABLE}.ISEXTRACREDIT ;;
  }

  dimension: isremote {
    type: number
    sql: ${TABLE}.ISREMOTE ;;
  }

  dimension: itemmaxtakes {
    type: number
    sql: ${TABLE}.ITEMMAXTAKES ;;
  }

  dimension: itemtakesbeforehint {
    type: number
    sql: ${TABLE}.ITEMTAKESBEFOREHINT ;;
  }

  dimension: itemtakesbeforerejoinder {
    type: number
    sql: ${TABLE}.ITEMTAKESBEFOREREJOINDER ;;
  }

  dimension: lastloadedoptionset {
    type: string
    sql: ${TABLE}.LASTLOADEDOPTIONSET ;;
  }

  dimension: lastmodified {
    type: string
    sql: ${TABLE}.LASTMODIFIED ;;
  }

  dimension: maxfeedbackattempts {
    type: number
    sql: ${TABLE}.MAXFEEDBACKATTEMPTS ;;
  }

  dimension: maxsavedresults {
    type: number
    sql: ${TABLE}.MAXSAVEDRESULTS ;;
  }

  dimension: multipleresultgrading {
    type: number
    sql: ${TABLE}.MULTIPLERESULTGRADING ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}.NAME ;;
  }

  dimension: numretakes {
    type: number
    sql: ${TABLE}.NUMRETAKES ;;
  }

  dimension: overallgradeviewableafter {
    type: number
    sql: ${TABLE}.OVERALLGRADEVIEWABLEAFTER ;;
  }

  dimension: ownerid {
    type: number
    value_format_name: id
    sql: ${TABLE}.OWNERID ;;
  }

  dimension: passfailscore {
    type: number
    sql: ${TABLE}.PASSFAILSCORE ;;
  }

  dimension: password {
    type: string
    sql: ${TABLE}.PASSWORD ;;
  }

  dimension: pastduefactor {
    type: number
    sql: ${TABLE}.PASTDUEFACTOR ;;
  }

  dimension: pastduefunction {
    type: string
    sql: ${TABLE}.PASTDUEFUNCTION ;;
  }

  dimension: possiblescore {
    type: number
    sql: ${TABLE}.POSSIBLESCORE ;;
  }

  dimension: preferableversion {
    type: string
    sql: ${TABLE}.PREFERABLEVERSION ;;
  }

  dimension: presentationmode {
    type: string
    sql: ${TABLE}.PRESENTATIONMODE ;;
  }

  dimension: printablebeforetaken {
    type: number
    sql: ${TABLE}.PRINTABLEBEFORETAKEN ;;
  }

  dimension: printablewhenmoretakes {
    type: number
    sql: ${TABLE}.PRINTABLEWHENMORETAKES ;;
  }

  dimension: regenerateitemsinsections {
    type: string
    sql: ${TABLE}.REGENERATEITEMSINSECTIONS ;;
  }

  dimension: resumableassignment {
    type: number
    sql: ${TABLE}.RESUMABLEASSIGNMENT ;;
  }

  dimension: reviewrecommended {
    type: number
    sql: ${TABLE}.REVIEWRECOMMENDED ;;
  }

  dimension: scrambleitemsinsections {
    type: string
    sql: ${TABLE}.SCRAMBLEITEMSINSECTIONS ;;
  }

  dimension: scramblesections {
    type: string
    sql: ${TABLE}.SCRAMBLESECTIONS ;;
  }

  dimension: sectionid {
    type: number
    value_format_name: id
    sql: ${TABLE}.SECTIONID ;;
  }

  dimension: showactiveexamples {
    type: number
    sql: ${TABLE}.SHOWACTIVEEXAMPLES ;;
  }

  dimension: showindetails {
    type: number
    sql: ${TABLE}.SHOWINDETAILS ;;
  }

  dimension: showpopuprejoinders {
    type: number
    sql: ${TABLE}.SHOWPOPUPREJOINDERS ;;
  }

  dimension: status {
    type: number
    sql: ${TABLE}.STATUS ;;
  }

  dimension: studentoptionsignored {
    type: number
    sql: ${TABLE}.STUDENTOPTIONSIGNORED ;;
  }

  dimension: studentstatusdefault {
    type: number
    sql: ${TABLE}.STUDENTSTATUSDEFAULT ;;
  }

  dimension: studentstatusignored {
    type: number
    sql: ${TABLE}.STUDENTSTATUSIGNORED ;;
  }

  dimension: timeallowed {
    type: number
    sql: ${TABLE}.TIMEALLOWED ;;
  }

  dimension: timeallowedwarning {
    type: number
    sql: ${TABLE}.TIMEALLOWEDWARNING ;;
  }

  dimension: untakabledate {
    type: string
    sql: ${TABLE}.UNTAKABLEDATE ;;
  }

  dimension: untakabledatemethod {
    type: number
    sql: ${TABLE}.UNTAKABLEDATEMETHOD ;;
  }

  dimension: userid {
    type: number
    value_format_name: id
    sql: ${TABLE}.USERID ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}.WEIGHT ;;
  }

  measure: count {
    type: count
    drill_fields: [id, name, assignmentresults.count]
  }
}
