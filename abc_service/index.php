<?php

/**
 * Just 4 debug
 */

require __DIR__.'/vendor/autoload.php';

use PhpAmqpLib\Connection\AMQPStreamConnection;
use PhpAmqpLib\Message\AMQPMessage;
use Predis\Client;

/**
 * REDIS
 */

$redisClient = new Client([
    'scheme' => 'tcp',
    'host'   => 'redis',
    'port'   => 6379,
]);

$redisClient->set('key', 'working');

$redisTest = $redisClient->get('key');

var_dump('Redis test:');
echo '<br>';
var_dump($redisTest);

/**
 * RABBITMQ
 */

$now = date('c');

$exchange = 'exchange_test';
$queue = 'queue_test';
$connection = new AMQPStreamConnection('rabbit', 5672, 'guest', 'guest', '/');
$channel = $connection->channel();
$channel->queue_declare($queue, false, true, false, false);
$channel->exchange_declare($exchange, 'direct', false, true, false);
$channel->queue_bind($queue, $exchange);

$jsonData = '{"data":[{"foo": "bar"}],"message": "content","timestamp": "' . $now . '"}';

$message = new AMQPMessage($jsonData, array('content_type' => 'text/plain', 'delivery_mode' => AMQPMessage::DELIVERY_MODE_PERSISTENT));
$channel->basic_publish($message, $exchange);

$channel->close();
$connection->close();

var_dump('RabbitMQ message published!');
echo '<br>';

/**
 * ELK
 */

$redisClient->rpush('key_name_test', $jsonData);

var_dump('published into redis to elk');
echo '<br>';

var_dump('redis elk length:');
echo '<br>';
var_dump($redisClient->llen('key_name_test'));

var_dump('redis elk content:');
echo '<br>';
var_dump($redisClient->lrange('key_name_test', 0, -1));

echo phpinfo();
echo '<br>';

echo 'Done...';
