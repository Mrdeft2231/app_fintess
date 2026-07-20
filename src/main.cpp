#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDir>
#include <QUrl>
#include "database/databasemanager.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);
     QQmlApplicationEngine engine;
    QObject::connect(
        &engine,
        &QQmlApplicationEngine::objectCreationFailed,
        &app,
        []() { QCoreApplication::exit(-1); },
        Qt::QueuedConnection);
      engine.loadFromModule("app_fitness", "Main");

    databasemanager dbManager;
      if (!dbManager.connectAndInit()) {
        return -1;
      }

     return QCoreApplication::exec();
}