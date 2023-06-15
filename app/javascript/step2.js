function submitStep2Form() {
  console.log(window.globalVariable);
  // 指定されたアカウントに紐づくアイテムを取得する
  const items = Item.where('account_id', accountId).all();

  // アイテムをフォームに追加する
  items.forEach(item => {
    const checkbox = document.createElement('input');
    checkbox.type = 'checkbox';
    checkbox.name = 'post[item_ids][]';
    checkbox.value = item.id;
    checkbox.label = item.name;
    document.getElementById('item_list').appendChild(checkbox);
  });
};
window.addEventListener("load", submitStep2Form);