function loadStep2Form(accountId) {
  var xhr = new XMLHttpRequest();
  xhr.open('GET', '/step2?account_id=' + accountId, true);
  xhr.onload = function () {
    if (xhr.status === 200) {
      var step1Form = document.getElementById('step1-form');
      var step2FormContainer = document.getElementById('step2-form-container');
      step1Form.style.display = 'none'; // ステップ1のフォームを非表示にする
      step2FormContainer.innerHTML = xhr.responseText;
    }
  };
  xhr.send();
}

function submitStep1Form() {
  const next = document.querySelector(".next");
  next.addEventListener('click', function (event) {
    event.preventDefault();
    var formData = new FormData(document.getElementById('step1-form'));
    var accountId = formData.get('post[account_id]');
    loadStep2Form(accountId);
  });

}
window.addEventListener('load', submitStep1Form);