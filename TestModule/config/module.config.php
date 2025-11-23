<?php
return [
    'navigation' => [
        'AdminModule' => [
            [
                'label' => 'Test Module',
                'route' => 'admin/test-module',
                'controller' => 'TestModule\Controller\Index',
                'action' => 'index',
                'resource' => 'TestModule\Controller\Index',
                'privilege' => 'view',
            ],
        ],
    ],

    'controllers' => [
        'factories' => [
            TestModule\Controller\IndexController::class => function ($container) {
                return new TestModule\Controller\IndexController();
            },
        ],
    ],

    'router' => [
        'routes' => [
            'admin/test-module' => [
                'type' => \Laminas\Router\Http\Literal::class,
                'options' => [
                    'route' => '/admin/test-module',
                    'defaults' => [
                        '__NAMESPACE__' => 'TestModule\Controller',
                        'controller' => 'Index',
                        'action' => 'index',
                    ],
                ],
            ],
        ],
    ],

    'view_manager' => [
        'template_path_stack' => [
            __DIR__ . '/../view',
        ],
    ],
];
