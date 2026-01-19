<?php
// パスワード履歴確認スクリプト

require_once __DIR__ . '/vendor/autoload.php';

$_SERVER['APP_ENV'] = 'dev';
$_SERVER['APP_DEBUG'] = '1';

$kernel = new Eccube\Kernel('dev', false);
$kernel->boot();

$container = $kernel->getContainer();
$em = $container->get('doctrine.orm.entity_manager');

$testEmail = 'test-customer-1766074348093@example.com';

// 顧客情報を取得
$customer = $em->getRepository(Eccube\Entity\Customer::class)->findOneBy(['email' => $testEmail]);

if (!$customer) {
    echo "顧客が見つかりません: {$testEmail}\n";
    exit(1);
}

echo "顧客情報:\n";
echo "  ID: " . $customer->getId() . "\n";
echo "  Email: " . $customer->getEmail() . "\n\n";

// パスワード履歴を取得
$histories = $em->getRepository('Plugin\BootechPasswordPolicy43\Entity\CustomerPasswordHistory')->findBy(['customerId' => $customer->getId()]);

echo "パスワード履歴レコード数: " . count($histories) . "\n";

if (count($histories) > 0) {
    echo "\n履歴詳細:\n";
    foreach ($histories as $history) {
        echo "  - ID: " . $history->getId() . ", Created: " . $history->getCreatedAt()->format('Y-m-d H:i:s') . "\n";
    }
} else {
    echo "パスワード履歴が記録されていません。\n";
}
