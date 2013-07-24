$(document).ready(function() {
  $("#new_comment").bind("ajax:success", function(e, data, status, xhr) {
    $(".comments-list").append(data.comment);
  });

  $("#new_comment").bind("ajax:error", function(e, xhr, status, error) {
    alert("Sorry, unable to save your comment.");
  });
});
