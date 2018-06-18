connection: "snowflake_cnow"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

include: "/core/common.lkml"

explore: fivetran_audit {}

explore: assignmentitemresults {
  join: assignmentresults {
    sql_on: ${assignmentitemresults.assignmentresultsid} = ${assignmentresults.id} ;;
    relationship: many_to_one
  }
  join: assignments {
    sql_on: ${assignmentresults.assignmentid} = ${assignments.id} ;;
    relationship: many_to_one
  }
  join: tests  {
    sql_on: ${assignments.assignmenttestid} = ${tests.id} ;;
    relationship: many_to_one
  }
}

#explore: hub_book {}

explore: sat_book {}

explore: hub_book {
  join: sat_book {
    sql_on: ${hub_book.bookhash} = ${sat_book.bookhash} ;;
    relationship: one_to_many
  }
}
