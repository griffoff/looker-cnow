include: "/core/fivetran.view.lkml"
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

      persist_for: "1 hour"
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
