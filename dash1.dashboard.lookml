- dashboard: dash1
  title: Dash1
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
