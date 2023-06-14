function submitStep1Form() {
  const next = document.querySelector(".next");
  next.addEventListener('click', function (event) {
    event.preventDefault();
    // ステップ1のフォームデータを取得
    var formData = new FormData(document.getElementById('step1-form'));

    // 非同期リクエストを送信
    var xhr = new XMLHttpRequest();
    xhr.open('POST', '/posts', true);
    xhr.onload = function () {
      if (xhr.status === 200) {
        // レスポンスを受け取り、ステップ2の内容を取得
        var xhr2 = new XMLHttpRequest();
        xhr2.open('GET', '/step2', true);
        xhr2.onload = function () {
          if (xhr2.status === 200) {
            // ステップ2の内容を表示
            console.log(xhr2.responseText);
            document.getElementById('content').innerHTML = xhr2.responseText;
          }
        };
        xhr2.send();
      }
    };
    xhr.send(formData);
  });
}
window.addEventListener("load", submitStep1Form);