$(document).ready(function() {
  $("#new_comment").submit(function(e) {
    e.preventDefault();
    var form = $(this);

    $.ajax({
        url: form.attr("action"),
        type: "POST",
        data: form.serialize(),
        dataType: "JSON",
    }).done(function(data, textStatus, jqXHR) {
      $(".comments-list").append(data.comment);
    }).fail(function(jqXHR, textStatus, errorThrown) {
      alert("Sorry, unable to save your comment.");
    });
  });
});
