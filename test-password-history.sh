#!/bin/bash

# テスト顧客のメールアドレス
TEST_EMAIL="itaboo.1014+plan1-1765727989074@gmail.com"

# テスト顧客IDを取得
CUSTOMER_ID=$(docker exec docker-for-eccube4-db-1 mysql -u db_user -pdb_password eccube -e "SELECT id FROM dtb_customer WHERE email = '${TEST_EMAIL}' ORDER BY id DESC LIMIT 1;" 2>/dev/null | tail -1)

echo "=== パスワード履歴テスト ==="
echo "テストメール: ${TEST_EMAIL}"
echo "顧客ID: ${CUSTOMER_ID}"
echo ""

if [ -z "$CUSTOMER_ID" ]; then
  echo "エラー: 顧客が見つかりません"
  exit 1
fi

# 現在のパスワード履歴レコード数
echo "--- テスト前: パスワード履歴レコード数 ---"
BEFORE_COUNT=$(docker exec docker-for-eccube4-db-1 mysql -u db_user -pdb_password eccube -e "SELECT COUNT(*) FROM plg_customer_password_history WHERE customer_id = ${CUSTOMER_ID};" 2>/dev/null | tail -1)
echo "レコード数: ${BEFORE_COUNT}"
echo ""

# データベースで直接パスワードを変更（PasswordHistorySubscriber の postUpdate イベントをトリガー）
echo "--- パスワード変更（DB直接更新） ---"
NEW_HASH=$(php -r "echo password_hash('NewPassword@123456', PASSWORD_DEFAULT);")
docker exec docker-for-eccube4-db-1 mysql -u db_user -pdb_password eccube -e "UPDATE dtb_customer SET password = '${NEW_HASH}' WHERE id = ${CUSTOMER_ID};" 2>/dev/null
echo "✓ DB更新完了"
echo ""

# 更新後のパスワード履歴レコード数
echo "--- テスト後: パスワード履歴レコード数 ---"
AFTER_COUNT=$(docker exec docker-for-eccube4-db-1 mysql -u db_user -pdb_password eccube -e "SELECT COUNT(*) FROM plg_customer_password_history WHERE customer_id = ${CUSTOMER_ID};" 2>/dev/null | tail -1)
echo "レコード数: ${AFTER_COUNT}"
echo ""

# 結果判定
DIFF=$((AFTER_COUNT - BEFORE_COUNT))
echo "--- 結果 ---"
if [ "$DIFF" -eq 1 ]; then
  echo "✅ 成功: パスワード変更時に1レコードのみ追加されました"
  echo "   追加前: ${BEFORE_COUNT}"
  echo "   追加後: ${AFTER_COUNT}"
else
  echo "❌ 失敗: パスワード変更時に${DIFF}レコード追加されました"
  echo "   追加前: ${BEFORE_COUNT}"
  echo "   追加後: ${AFTER_COUNT}"
fi
