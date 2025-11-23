<?php
namespace TestModule;

use Omeka\Module\AbstractModule;
use Omeka\Stdlib\Message;

class Module extends AbstractModule
{
    public function install($serviceLocator)
    {
        // Message visible dans Omeka S après installation
        $messenger = $serviceLocator->get('ControllerPluginManager')->get('messenger');
        $messenger->addSuccess('Le module TestModule a été installé avec succès !');

        // Exemple : créer un log dans les fichiers Omeka
        $logger = $serviceLocator->get('Omeka\Logger');
        $logger->info('Installation du module TestModule effectuée.');
    }

    public function getConfig()
    {
        return include __DIR__ . '/config/module.config.php';
    }
}
