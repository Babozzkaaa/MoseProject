<?php

return [
    'serverKey' => env('MIDTRANS_SERVER_KEY', 'SB-Mid-server-9QZQZQX9Q8QZQZQZQZQZQZQZ'),
    'clientKey' => env('MIDTRANS_CLIENT_KEY', 'SB-Mid-client-9QZQZQZQZQZQZQZQZQZQZQZ'),
    'isProduction' => env('MIDTRANS_IS_PRODUCTION', false),
    'isSanitized' => env('MIDTRANS_IS_SANITIZED', true),
    'is3ds' => env('MIDTRANS_IS_3DS', true),
];
