include: "//core/fivetran.view.lkml"
include: "//core/datagroups.lkml"
view: fivetran_audit {
  extends: [fivetran_audit_base]

    derived_table: {
    sql:
        select *
        from CNOWSQLCOV3_BOOK_GAIT01H.FIVETRAN_AUDIT
        union all
        select *
        from CNOWSQLCOV3_BOOK_GAIT01T.FIVETRAN_AUDIT
        union all
        select *
        from CNOWSQLCOV3_BOOK_MTRGAIGINT01H.FIVETRAN_AUDIT
        union all
        select *
        from CNOWSQLCOV3_ILRNMINDTAP.FIVETRAN_AUDIT
      ;;

      datagroup_trigger: hourly_refresh
    }
dimension: database_name {
    sql:'CNOW' ;;
  }

  measure: db_rows_updated_or_inserted {
    label: "CNow"
    type: number
    sql: ${rows_updated_or_inserted} ;;
  }

}
