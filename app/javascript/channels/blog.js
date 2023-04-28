import consumer from "./consumer";

$(document).on("turbolinks:load", () => {
  const comments = $("#comments");
  if (comments.length > 0) {
    const blogId = comments.data("blog-id");
    App.global_chat = consumer.subscriptions.create(
      { channel: "BlogsChannel", blog_id: blogId },
      {
        connected() {},
        disconnected() {},
        received(data) {
          comments.append(data["comment"]);
        },
        send_comment(comment, blog_id) {
          this.perform("send_comment", { comment, blog_id });
        },
      }
    );
  }

  $("#new_comment").on("submit", (e) => {
    const $this = $(e.target);
    const textarea = $this.find("#comment_content");
    if (textarea.val().trim().length > 1) {
      App.global_chat.send_comment(textarea.val(), comments.data("blog-id"));
      textarea.val("");
    }
    e.preventDefault();
    return false;
  });
});
