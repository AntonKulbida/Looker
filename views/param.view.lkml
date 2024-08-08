# view: dynamic_resolution {
#   derived_table: {
#     # datagroup_trigger:
#     sql:

#     -- LIQUID SCRIPT TAKES USER INPUT FROM A FILTER ON WHICH COUNTERS TO INCLUDE IN THE QUERY
#         {% assign selected_counters = _filters['dynamic_resolution.select_counters'] | split: "," %}

#       {% assign selected_scope = _filters['dynamic_resolution.select_scope'] %}

#       -- FOR EACH COUNTER SELECTED, SQL SUMS THAT COUNTER AND CREATES A "NAME" COLUMN WITH THE NAME OF THE COUNTER.
#       {% for counter_name in selected_counters %}

#       SELECT
#       /*{% parameter p_scope %} as scope,
#       {% parameter p_detailed %} as detailed,
#       {% parameter p_scope %} as sql_detailed,*/
#       /* case {% parameter p_scope %}
#       when 'OAK' then OAK
#       when 'PerformanceMarket' then PerformanceMarket
#       when 'PerformanceRegion' then PerformanceRegion
#       when 'Coverage_SiteID' then Coverage_SiteID
#       when 'Host_SiteID' then Host_SiteID
#       when 'NodeName' then NodeName
#       when 'CoverageType' then CoverageType
#       when 'QCI' then QCI
#       end as object,*/
#       '{{ selected_scope | remove: '"' }}' AS `SCOPE`,
#       {{ selected_scope | remove: '"' }} AS `OBJECTS`,
#       time,
#       OAK,
#       PerformanceMarket,
#       PerformanceRegion,
#       Sector,
#       source_file,
#       VERSION,
#       FAMILY,
#       EstabCause,
#       CellId,
#       BandID,
#       Coverage_SiteID,
#       Host_SiteID,
#       NodeName,
#       SiteLatitude,
#       SiteLongitude,
#       CoverageType,
#       QCI,
#       GRAN_PERIOD,
#       {{ counter_name | remove: '"' }} AS `COUNTER_VALUE`,
#       '{{ counter_name | remove: '"' }}' AS `COUNTER_NAME`
#       FROM `tu-nfv-cte-wddt-01-np.pm_samsung_test_v5.LTE_v`
#       {% unless forloop.last %}
#       UNION ALL
#       {% endunless %}
#       {% endfor %} ;;
#   }



#   filter: select_counters {
#     # suggest_explore: information_schema
#     # suggest_dimension: column_name
#     suggestions: ["EstabInitSuccNbr_count","EstabInitAttNbr_count","ErabInfo_EstabInitAttNbr_count","ErabInfo_EstabAddAttNbr_count"]
#   }

#   filter: select_scope {
#     # suggest_explore: information_schema
#     # suggest_dimension: column_name
#     # sql: ${TABLE}.OAK ;;
#     suggestions: ["OAK", "PerformanceMarket", "PerformanceRegion", "Sector", "CellId", "BandID", "Coverage_SiteID", "Host_SiteID", "NodeName"]
#   }

#   measure: counter_value {
#     type: sum
#     sql: ${TABLE}.COUNTER_VALUE ;;
#   }

#   dimension: counter_name {
#     sql: ${TABLE}.COUNTER_NAME ;;
#   }

#   dimension: counter_value_raw {
#     type: number
#     sql: ${TABLE}.COUNTER_VALUE ;;
#   }

#   dimension: f_SCOPE {
#     sql: ${TABLE}.SCOPE ;;
#   }

#   dimension: f_OBJECTS {
#     sql: ${TABLE}.OBJECTS ;;
#   }

#   dimension_group: time {
#     type: time
#     timeframes: [
#       raw,
#       time,
#       date,
#       week,
#       month,
#       # quarter,
#       year,
#       hour,
#       minute15,
#       minute30
#     ]
#     sql: ${TABLE}.time ;;
#     hidden: no
#   }
#   dimension: period {
#     type: string
#     sql: ${TABLE}.period ;;
#     hidden: yes
#   }

#   dimension: oak {
#     # hidden: yes
#     type: string
#     sql: ${TABLE}.OAK ;;
#   }

#   dimension: performance_market {
#     # hidden: yes
#     type: string
#     sql: ${TABLE}.PerformanceMarket ;;
#   }

#   dimension: source_file {
#     # hidden: yes
#     type: string
#     sql: ${TABLE}.source_file ;;
#   }

#   dimension: VERSION {
#     # hidden: yes
#     type: string
#     sql: ${TABLE}.VERSION ;;
#   }

#   dimension: FAMILY {
#     # hidden: yes
#     type: string
#     sql: ${TABLE}.FAMILY ;;
#   }

#   dimension: EstabCause {
#     # hidden: yes
#     type: string
#     sql: ${TABLE}.EstabCause ;;
#   }

#   dimension: Sector {
#     type: string
#     sql: ${TABLE}.Sector ;;
#     hidden: yes
#   }

#   dimension: CellId {
#     hidden: yes
#     type: string
#     sql: ${TABLE}.CellId ;;
#   }

#   dimension: BandID {
#     hidden: yes
#     type: string
#     sql: ${TABLE}.BandID ;;
#   }

#   dimension: performance_region {
#     hidden: yes
#     type: string
#     sql: ${TABLE}.PerformanceRegion ;;
#   }

#   dimension: coverage_site_id {
#     hidden: no
#     type: string
#     sql: ${TABLE}.Coverage_SiteID ;;
#   }

#   dimension: host_site_id {
#     hidden: yes
#     type: string
#     sql: ${TABLE}.Host_SiteID ;;
#   }

#   dimension: node_name {
#     hidden: yes
#     type: string
#     sql: ${TABLE}.NodeName ;;
#   }

#   dimension: site_latitude {
#     hidden: no
#     type: number
#     sql: ${TABLE}.SiteLatitude ;;
#   }

#   dimension: site_longitude {
#     hidden: no
#     type: number
#     sql: ${TABLE}.SiteLongitude ;;
#   }

#   dimension: map {
#     type: location
#     sql_latitude:${TABLE}.SiteLatitude ;;
#     sql_longitude:${TABLE}.SiteLongitude ;;
#   }

#   dimension: coverage_type {
#     hidden: no
#     type: string
#     sql: ${TABLE}.CoverageType ;;
#   }

#   dimension: qci {
#     hidden: no
#     type: string
#     sql: ${TABLE}.QCI ;;
#   }

#   dimension: gran_period {
#     hidden: yes
#     type: number
#     sql: ${TABLE}.GRAN_PERIOD ;;
#   }
#   dimension: scope {
#     type: string
#     sql: ${TABLE}.scope ;;
#     # hidden: yes
#   }
#   dimension: object {
#     type: string
#     sql: ${TABLE}.object ;;
#     # hidden: yes
#   }

#   parameter: p_scope {
#     hidden: no
#     type: string
#     allowed_value: {
#       label: "OAK"
#       value: "OAK"
#     }
#     allowed_value: {
#       label: "Performance Market"
#       value: "performance_market"
#     }
#     allowed_value: {
#       label: "Coverage Site ID"
#       value: "coverage_site_id"
#     }
#     allowed_value: {
#       label: "Sector"
#       value: "sector"
#     }
#     allowed_value: {
#       label: "CellId"
#       value: "cellId"
#     }
#     allowed_value: {
#       label: "BandID"
#       value: "bandID"
#     }
#     allowed_value: {
#       label: "Host Site ID"
#       value: "host_site_id"
#     }
#     allowed_value: {
#       label: "Node Name"
#       value: "node_name"
#     }
#     allowed_value: {
#       label: "Performance Region"
#       value: "performance_region"
#     }
#   }

#   dimension: scope_objects {
#     label: "Scope Objects"
#     type: string
#     label_from_parameter: p_scope
#     sql:
#     CASE
#       when {% parameter p_scope %} = 'OAK' then ${oak}
#       when {% parameter p_scope %} = 'performance_market' then ${performance_market}
#       when {% parameter p_scope %} = 'coverage_site_id' then ${coverage_site_id}
#       when {% parameter p_scope %} = 'host_site_id' then ${host_site_id}
#       when {% parameter p_scope %} = 'cellId' then ${CellId}
#       when {% parameter p_scope %} = 'bandID' then ${BandID}
#       when {% parameter p_scope %} = 'sector' then ${Sector}
#       when {% parameter p_scope %} = 'performance_region' then ${performance_region}
#       when {% parameter p_scope %} = 'node_name' then ${node_name}
#       else 'scope_objects_type_your_input'
#     END ;;
#     hidden: no
#   }

#   parameter: p_detailed {
#     hidden: no
#     type: string
#     allowed_value: {
#       label: "Combined"
#       value: "combined"
#     }
#     allowed_value: {
#       label: "OAK"
#       value: "OAK"
#     }
#     allowed_value: {
#       label: "Performance Market"
#       value: "performance_market"
#     }
#     allowed_value: {
#       label: "Coverage Site ID"
#       value: "coverage_site_id"
#     }
#     allowed_value: {
#       label: "Sector"
#       value: "sector"
#     }
#     allowed_value: {
#       label: "CellId"
#       value: "cellId"
#     }
#     allowed_value: {
#       label: "BandID"
#       value: "bandID"
#     }
#     allowed_value: {
#       label: "Host Site ID"
#       value: "host_site_id"
#     }
#     allowed_value: {
#       label: "Node Name"
#       value: "node_name"
#     }
#     allowed_value: {
#       label: "Performance Region"
#       value: "performance_region"
#     }
#   }

#   dimension: scope_objects_detail {
#     type: string
#     label_from_parameter: p_detailed
#     sql:
#     CASE
#       when {% parameter p_detailed %} = 'combined' then "combined"
#       when {% parameter p_detailed %} = 'OAK' then ${oak}
#       when {% parameter p_detailed %} = 'performance_market' then ${performance_market}
#       when {% parameter p_detailed %} = 'coverage_site_id' then ${coverage_site_id}
#       when {% parameter p_detailed %} = 'cellId' then ${CellId}
#       when {% parameter p_detailed %} = 'bandID' then ${BandID}
#       when {% parameter p_detailed %} = 'sector' then ${Sector}
#       when {% parameter p_detailed %} = 'host_site_id' then ${host_site_id}
#       when {% parameter p_detailed %} = 'performance_region' then ${performance_region}
#       when {% parameter p_detailed %} = 'node_name' then ${node_name}
#       else 'scope_objects_detail_type_your_input'
#     END ;;
#     hidden: no
#   }

#   ##------------DL_CA_THPT---------------------

#   measure: DL_CA_THPT_DEN {
#     type: sum
#     sql: ${TABLE}.PdcpTimeDLCa_ms;;
#   }

#   measure: DL_CA_THPT_NUM {
#     type: sum
#     sql: ${TABLE}.PdcpVolDLByteCa_Kbytes * 8000;;
#   }

#   measure: DL_CA_THPT { ##DL_CA_THPT
#     type: number
#     sql: (${DL_CA_THPT_NUM} / NULLIF(${DL_CA_THPT_DEN}, 0)) / 1000;;
#   }

#   ##-----END------DL_CA_THPT----------------------






# }
