# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
$ = jQuery

$ ->
  week_width = $("td.hours").width();
  day_width = week_width / 7;
  hour_width = day_width / 24;
  half_hour_width = hour_width / 2;

  setTimeBar = (target,start,end,tooltip) ->
    target.append('<div data-tooltip="'+tooltip+'" class="scheduled-time" style="left:'+(half_hour_width * start)+'px;width:'+(half_hour_width*end)+'px"></div>');


  for element in $(".schedule")
    e = $(element);
    setTimeBar(e,e.data("start-time"),e.data("end-time"), e.data("tooltip"));
