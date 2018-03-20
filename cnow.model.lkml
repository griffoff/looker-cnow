connection: "snowflake_cnow"

include: "*.view.lkml"         # include all views in this project
include: "*.dashboard.lookml"  # include all dashboards in this project

include: "/core/common.lkml"

explore: fivetran_audit {}
