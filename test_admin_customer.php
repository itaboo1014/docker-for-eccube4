<?php

// Docker内で実行するスクリプト
// 管理画面の会員登録フォーム処理をシミュレート

echo "Symfony コンテナを初期化中...\n";

require_once __DIR__ . '/vendor/autoload.php';

// Symfony の環境を初期化
$_SERVER['APP_ENV'] = 'dev';
$_SERVER['APP_DEBUG'] = '1';
$_SERVER['REQUEST_METHOD'] = 'POST';
$_SERVER['HTTP_HOST'] = 'localhost';
$_SERVER['SCRIPT_NAME'] = '/administrator/customer/new';
$_SERVER['REQUEST_URI'] = '/administrator/customer/new';

// Symfony Kernel を取得
$kernel = new Eccube\Kernel('dev', true);
$kernel->boot();

echo "Kernel booted\n";

$container = $kernel->getContainer();
echo "Container obtained\n";

// FormFactory を取得
$formFactory = $container->get('form.factory');
echo "FormFactory obtained\n";

// Admin\CustomerType を取得
$customerTypeClass = 'Eccube\Form\Type\Admin\CustomerType';
echo "Creating form with type: {$customerTypeClass}\n";

// フォームを作成
$form = $formFactory->create($customerTypeClass);

echo "Form name: " . $form->getName() . "\n";
echo "Form type: " . $form->getConfig()->getType()->getBlockPrefix() . "\n";
echo "Form has password field: " . ($form->has('plain_password') ? 'YES' : 'NO') . "\n";

// ビルドプロセスがログを出力するはずです

echo "完了\n";
