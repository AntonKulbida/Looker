view: d_supplier {
  sql_table_name: "DATA_MART"."D_SUPPLIER"
    ;;

  dimension: s_acctbal {
    type: number
    sql: ${TABLE}."S_ACCTBAL" ;;
  }

  dimension: s_address {
    type: string
    sql: ${TABLE}."S_ADDRESS" ;;
  }

  dimension: s_name {
    type: string
    sql: ${TABLE}."S_NAME" ;;
  }

  dimension: s_nation {
    type: string
    sql: ${TABLE}."S_NATION" ;;
  }

  dimension: s_phone {
    type: string
    sql: ${TABLE}."S_PHONE" ;;
  }

  dimension: Region {
    type: string
    sql: ${TABLE}."S_REGION" ;;
    link: {
      label: "Target"
      # url: "https://www.google.com"
      # url: "https://epam.cloud.looker.com/dashboards/243?fields=d_supplier.s_region"
      url: "https://epam.cloud.looker.com/dashboards/245?Region={{ value }}"
    }
    link: {
      label: "Google"
      # url: "https://www.google.com"
      # url: "https://epam.cloud.looker.com/dashboards/243?fields=d_supplier.s_region"
      url: "http://www.google.com/search?q={{ value }}"
    }
  }

  dimension: s_suppkey {
    type: number
    sql: ${TABLE}."S_SUPPKEY" ;;
  }

  dimension: AccountBalance {
    label: "Account Balance"
    description: "According Account Balance"
    type: tier
    style: integer
    tiers: [1, 3001, 5001, 7001]
    sql: ${s_acctbal} ;;
  }

  measure: count {
    type: count
    drill_fields: [s_name]
  }
}
