document.addEventListener('DOMContentLoaded', function () {
  const addButton = document.querySelector('.btn.btn-light');

  // ＋ボタンを押すとフィールド追加
  addButton.addEventListener('click', function addForm() {
    const inputContainer = document.querySelector('.add-form');
    const lastInput = document.getElementById('post_item_id');

    const newInput = lastInput.cloneNode(true);

    newInput.option
    inputContainer.after(newInput);

    // ＋ボタンを押すとボタンが消える
    addButton.remove();

    // ＋ボタンが追加フィールドの横に表示される

  });

});