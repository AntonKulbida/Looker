- dashboard: summary_dashboard_source
  title: Summary Dashboard (source)
  layout: newspaper
  preferred_viewer: dashboards-next
  description: ''
  refresh: 1 hour
  preferred_slug: TaMIgjfIT1BobrvUX83BYL
  elements:
  - name: add_a_unique_name_1666960266
    title: Untitled Visualization
    model: epam_kosintsev_os_hw01
    explore: d_customer
    type: looker_bar
    fields: [d_customer.c_nation, d_customer.count]
    sorts: [d_customer.count desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: b8e44ce6-d0e6-4bd4-b72c-ab0f595726a6
      options:
        steps: 5
        reverse: false
    x_axis_label: NATIONS
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '12'
    series_types: {}
    series_colors:
      d_customer.count: "#12B5CB"
    series_labels:
      d_customer.count: CUSTOMERS
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    isStepped: false
    orientation: automatic
    labelPosition: left
    labelOverlap: true
    percentType: total
    percentPosition: left
    valuePosition: Hidden
    labelColorEnabled: true
    labelColor: "#5aa9ff"
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    defaults_version: 1
    transpose: false
    truncate_text: true
    size_to_fit: true
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    show_null_points: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    interpolation: linear
    hidden_fields: []
    value_labels: legend
    label_type: labPer
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
  - title: TOTAL REVENUE
    name: TOTAL REVENUE
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.Gross_revenue]
    sorts: [f_lineitems.Gross_revenue]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: 5d189dfc-4f46-46f3-822b-bfb0b61777b1
    custom_color: "#d6af81"
    single_value_title: TOTAL REVENUE
    value_format: "$ #,###"
    conditional_formatting: []
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 0
    col: 0
    width: 6
    height: 2
  - title: TOTAL NUMBERS
    name: TOTAL NUMBERS
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.TotalNumberofOrders]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: true
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#B1399E"
    single_value_title: TOTAL NUMBERS OF ORDERS
    value_format: "#,###"
    conditional_formatting: [{type: equal to, value: !!null '', background_color: "#3EB0D5",
        font_color: !!null '', color_application: {collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7,
          palette_id: 85de97da-2ded-4dec-9dbd-e6a7d36d5825}, bold: false, italic: false,
        strikethrough: false, fields: !!null ''}]
    series_types: {}
    defaults_version: 1
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 0
    col: 6
    width: 6
    height: 2
  - title: New Tile
    name: New Tile
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.MarginPercentage]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#72D16D"
    single_value_title: GROSS MARGIN PERCENTAGE
    series_types: {}
    defaults_version: 1
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 0
    col: 18
    width: 6
    height: 2
  - title: RETURNS NUMBER
    name: RETURNS NUMBER
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: single_value
    fields: [f_lineitems.ItemReturned]
    limit: 500
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    custom_color: "#3EB0D5"
    single_value_title: RETURNS NUMBER
    value_format: "#,###"
    defaults_version: 1
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 0
    col: 12
    width: 6
    height: 2
  - title: YEARLY TREANDS
    name: YEARLY TREANDS
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: looker_line
    fields: [d_dates.date_val_year, f_lineitems.Gross_Margin]
    fill_fields: [d_dates.date_val_year]
    sorts: [d_dates.date_val_year desc]
    limit: 500
    analysis_config:
      forecasting:
      - field_name: f_lineitems.Gross_Margin
        forecast_n: 1
        forecast_interval: year
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: circle_outline
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: false
    interpolation: monotone
    color_application:
      collection_id: aed851c8-b22d-4b01-8fff-4b02b91fe78d
      palette_id: c36094e3-d04d-4aa4-8ec7-bc9af9f851f4
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: f_lineitems.Gross_Margin,
            id: f_lineitems.Gross_Margin, name: TOTAL GROS MARGIN}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    size_by_field: f_lineitems.Gross_Margin
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    hide_legend: true
    font_size: '12'
    label_value_format: ''
    series_types:
      f_lineitems.Gross_Margin: area
    series_colors: {}
    series_labels:
      f_lineitems.Gross_Margin: TOTAL GROS MARGIN
    series_point_styles:
      f_lineitems.Gross_Margin: auto
    reference_lines: [{reference_type: line, line_value: mean, range_start: max, range_end: min,
        margin_top: deviation, margin_value: mean, margin_bottom: deviation, label_position: right,
        color: "#404040", label: ''}]
    ordering: asc
    show_null_labels: false
    show_dropoff: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 2
    col: 0
    width: 12
    height: 6
  - title: REVENUE vs PROFIT
    name: REVENUE vs PROFIT
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: looker_column
    fields: [f_lineitems.Gross_revenue, f_lineitems.TotalSalePrice, d_dates.year]
    sorts: [f_lineitems.Gross_revenue desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: percent
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: b43731d5-dc87-4a8e-b807-635bef3948e7
      palette_id: fb7bb53e-b77b-4ab6-8274-9d420d3d73f3
      options:
        steps: 5
        reverse: true
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '15'
    series_types: {}
    series_colors: {}
    series_labels:
      f_lineitems.Gross_revenue: TOTAL REVENUE
      f_lineitems.TotalSalePrice: TOTAL SALES PRICE
    column_group_spacing_ratio:
    show_dropoff: false
    charts_across: 4
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    defaults_version: 1
    value_labels: legend
    label_type: labPer
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    map: usa
    map_projection: ''
    show_row_numbers: true
    truncate_column_names: false
    hide_totals: false
    hide_row_totals: false
    table_theme: editable
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    up_color: false
    down_color: false
    total_color: false
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 8
    col: 0
    width: 12
    height: 6
  - title: ACCOUNT BALANCE ANALYSIS
    name: ACCOUNT BALANCE ANALYSIS
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: looker_column
    fields: [d_supplier.AccountBalance, f_lineitems.Gross_revenue]
    fill_fields: [d_supplier.AccountBalance]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: REVENUE, orientation: left, series: [{axisId: f_lineitems.Gross_revenue,
            id: f_lineitems.Gross_revenue, name: Total Gross Revenue}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    x_axis_label: ''
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hide_legend: false
    font_size: '12'
    series_types: {}
    series_labels: {}
    show_dropoff: true
    defaults_version: 1
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    hidden_fields: []
    hidden_points_if_no: []
    show_null_points: true
    interpolation: linear
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 2
    col: 12
    width: 12
    height: 6
  - title: REVENUE SOURCE COMPARISON
    name: REVENUE SOURCE COMPARISON
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: looker_funnel
    fields: [f_lineitems.l_shipmode, f_lineitems.Gross_Margin]
    sorts: [f_lineitems.Gross_Margin desc 0]
    limit: 500
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: inline
    percentType: total
    percentPosition: hidden
    valuePosition: left
    labelColorEnabled: false
    labelColor: "#FFF"
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: editable
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    value_labels: legend
    label_type: labPer
    start_angle:
    color_application:
      collection_id: 7c56cc21-66e4-41c9-81ce-a60e1c3967b2
      palette_id: f0077e50-e03c-4a7e-930c-7321b2267283
      options:
        steps: 5
        reverse: true
    series_colors:
      SHIP: "#12B5CB"
      FOB: "#76e85e"
      AIR: "#FF8168"
      RAIL: "#fffc5f"
      REG AIR: "#8c95f5"
    series_labels: {}
    up_color: "#7CB342"
    down_color: "#EA4335"
    total_color: "#FF8168"
    show_value_labels: false
    show_x_axis_ticks: true
    show_x_axis_label: true
    x_axis_scale: auto
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_gridlines: true
    isStepped: false
    labelOverlap: false
    x_axis_gridlines: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    label_density: 25
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    truncate_column_names: false
    font_size: 14
    charts_across:
    hide_legend: false
    arm_length: 25
    arm_weight: 50
    spinner_length: 100
    spinner_weight: 50
    angle: 90
    cutout: 50
    range_x: 1
    range_y: 1
    defaults_version: 1
    series_types: {}
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    custom_color_enabled: true
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    groupBars: true
    labelSize: 10pt
    showLegend: true
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 8
    col: 12
    width: 12
    height: 6
  - title: REGION COMPARISON
    name: REGION COMPARISON
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: looker_pie
    fields: [d_customer.c_region, f_lineitems.TotalNumberofOrders]
    filters:
      f_lineitems.l_orderstatus: F
    sorts: [f_lineitems.TotalNumberofOrders desc]
    limit: 500
    value_labels: labels
    label_type: labVal
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
        reverse: false
    series_labels: {}
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: true
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    hidden_series: []
    font_size: '10'
    series_types: {}
    show_dropoff: false
    defaults_version: 1
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_null_points: true
    interpolation: linear
    hidden_fields: []
    hidden_points_if_no: []
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 14
    col: 0
    width: 9
    height: 7
  - title: TOP 10 SUPPLIERS
    name: TOP 10 SUPPLIERS
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: looker_grid
    fields: [d_supplier.s_name, f_lineitems.Gross_revenue, f_lineitems.MarginPercentage]
    sorts: [f_lineitems.Gross_revenue desc]
    limit: 10
    show_view_names: false
    show_row_numbers: true
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: 12
    rows_font_size: 12
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    color_application:
      collection_id: 1297ec12-86a5-4ae0-9dfc-82de70b3806a
      palette_id: 93f8aeb4-3f4a-4cd7-8fee-88c3417516a1
      options:
        steps: 5
    y_axes: [{label: '', orientation: left, series: [{axisId: f_lineitems.Gross_Margin,
            id: f_lineitems.Gross_Margin, name: Total Gross Margin Amount}, {axisId: f_lineitems.Gross_revenue,
            id: f_lineitems.Gross_revenue, name: Total Gross Revenue}], showLabels: true,
        showValues: true, unpinAxis: false, tickDensity: default, tickDensityCustom: 5,
        type: linear}]
    limit_displayed_rows_values:
      show_hide: hide
      first_last: first
      num_rows: 0
    series_types: {}
    series_colors: {}
    series_labels: {}
    label_rotation: 0
    reference_lines: [{reference_type: line, line_value: mean, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: center, color: "#5e5e5e",
        range_start: mean}]
    trend_lines: []
    column_group_spacing_ratio: 0
    show_dropoff: false
    defaults_version: 1
    hidden_fields: []
    hidden_points_if_no: []
    leftAxisLabelVisible: false
    leftAxisLabel: ''
    rightAxisLabelVisible: false
    rightAxisLabel: ''
    smoothedBars: false
    orientation: automatic
    labelPosition: left
    percentType: total
    percentPosition: inline
    valuePosition: right
    labelColorEnabled: false
    labelColor: "#FFF"
    map_plot_mode: points
    heatmap_gridlines: false
    heatmap_gridlines_empty: false
    heatmap_opacity: 0.5
    show_region_field: true
    draw_map_labels_above_data: true
    map_tile_provider: light
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: fixed
    show_legend: true
    quantize_map_value_colors: false
    reverse_map_value_colors: false
    groupBars: true
    labelSize: 10pt
    showLegend: true
    up_color: false
    down_color: false
    total_color: false
    value_labels: legend
    label_type: labPer
    show_null_points: true
    interpolation: linear
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 14
    col: 9
    width: 15
    height: 7
  - title: DAILY SALES
    name: DAILY SALES
    model: myfirstproject-akulbi
    explore: f_lineitems
    type: looker_line
    fields: [f_lineitems.count, d_dates.date_val_month, d_dates.date_val_day_of_month]
    pivots: [d_dates.date_val_month]
    fill_fields: [d_dates.date_val_month, d_dates.date_val_day_of_month]
    filters:
      d_dates.date_val_date: 1994/12/01 to 1995/02/01
    sorts: [d_dates.date_val_month, f_lineitems.count desc 0]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    show_null_points: true
    interpolation: monotone
    series_types: {}
    defaults_version: 1
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Date: d_dates.current_date_year
      Region: d_supplier.region
      Nation: d_supplier.nation
    row: 21
    col: 0
    width: 24
    height: 6
  filters:
  - name: Date
    title: Date
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: myfirstproject-akulbi
    explore: f_lineitems
    listens_to_filters: []
    field: d_dates.current_date_year
  - name: Region
    title: Region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: checkboxes
      display: popover
    model: myfirstproject-akulbi
    explore: f_lineitems
    listens_to_filters: []
    field: d_supplier.region
  - name: Nation
    title: Nation
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: tag_list
      display: popover
    model: myfirstproject-akulbi
    explore: f_lineitems
    listens_to_filters: []
    field: d_supplier.nation
