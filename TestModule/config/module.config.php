<?php
namespace TestModule;

use Laminas\Router\Http\Literal;
use Laminas\ServiceManager\Factory\InvokableFactory;

return [
    'navigation' => [
        'Admin' => [
            [
                'label' => 'Test Module',
                'route' => 'admin/test-module',
                'controller' => Controller\IndexController::class,
                'action' => 'index',
                'resource' => Controller\IndexController::class,
                'privilege' => 'view',
            ],
        ],
    ],

    'controllers' => [
        'factories' => [
            Controller\IndexController::class => InvokableFactory::class,
        ],
    ],

    'router' => [
        'routes' => [
            'admin/test-module' => [
                'type' => Literal::class,
                'options' => [
                    'route' => '/admin/test-module',
                    'defaults' => [
                        '__NAMESPACE__' => 'TestModule\Controller',
                        'controller' => Controller\IndexController::class,
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
