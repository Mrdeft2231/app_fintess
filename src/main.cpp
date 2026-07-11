#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QDir>
#include <QUrl>

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

    // Определяем, откуда загружать главный файл
#ifdef NDEBUG
    // Релизная сборка: берём из модулей/ресурсов
    engine.loadFromModule("app_fitness", "Main");
#else
    // Отладочная сборка (Debug): принудительно берём прямо с диска
    // ВНИМАНИЕ: Проверь, лежит ли Main.qml в корне проекта.
    // Если он лежит в папке, например, "qml/Main.qml", то допиши её ниже.
    QString qmlPath = QDir(PROJECT_SOURCE_DIR).filePath("qml/Main.qml");

    // Заставляем движок очищать кэш при каждом чихе
    engine.clearComponentCache();

    engine.load(QUrl::fromLocalFile(qmlPath));
#endif

    return QCoreApplication::exec();
}