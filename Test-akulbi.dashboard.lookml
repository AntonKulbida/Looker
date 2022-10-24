- dashboard: test
  title: Test
  layout: newspaper
  preferred_viewer: dashboards-next
  refresh: 1 hour
  tile_size: 100

  filters:

  elements:
    - name: hello_world
      type: looker_column
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
        Date Val Year: d_dates.date_val_year
        S Name: d_supplier.s_name
      row: 0
      col: 0
      width: 6
      height: 2
