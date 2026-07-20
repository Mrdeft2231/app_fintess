#include "databasemanager.h"
#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlError>

databasemanager::databasemanager() {
    db = QSqlDatabase::addDatabase("QPSQL");

    db.setHostName("localhost");
    db.setPort(5432);
    db.setUserName("user");
    db.setPassword("example");
    db.setDatabaseName("app_fitness");
}


bool databasemanager::connectAndInit() {
    if (!db.open()) {
        qCritical() << "Не удалось подключиться к Docker: "
                    << db.lastError().text();
        return false;
    };

    qDebug() << "Успешное подключение к PostgreSQL";

    return createTables();
}

bool databasemanager::createTables() {
    QSqlQuery query;

    QStringList schema;

    schema << "CREATE TABLE IF NOT EXISTS users ("
              "id_user SERIAL PRIMARY KEY,"
              "username VARCHAR(50) NOT NULL,"
              "email VARCHAR(100) UNIQUE,"
              "password VARCHAR(100) NOT NULL,"
              "created_at TIMESTAMP DEFAULT NOW()"
              ");";

    schema << "CREATE TABLE IF NOT EXISTS pesonal_information ("
              "id_personal SERIAL PRIMARY KEY,"
              "height INT,"
              "weight INT,"
              "gender INT,"
              "user_id INT REFERENCES users(id_user) ON DELETE CASCADE"
              ");";

    schema << "CREATE TABLE IF NOT EXISTS training ("
              "id_training SERIAL PRIMARY KEY,"
              "name_training VARCHAR(100) NOT NULL,"
              "date_training DATE DEFAULT CURRENT_DATE,"
              "day_of_week INT GENERATED ALWAYS AS (EXTRACT(ISODOW FROM date_training)) STORED"
              ");";

    schema << "CREATE TABLE IF NOT EXISTS training_groups ("
              "id_training_groups SERIAL PRIMARY KEY,"
              "name_training_groups VARCHAR(100) NOT NULL,"
              "name_muscle VARCHAR(100) NOT NULL,"
              "current INT,"
              "id_training INT REFERENCES training(id_training) ON DELETE CASCADE"
              ");";


    for (const QString &sql : schema) {
        if (!query.exec(sql)) {
            qCritical() << "Ошибка при создании схемы БД: "
                        << query.lastError().text();
                           return false;
        }
    }

    qDebug() << "Схема базы данных создана!";
    return true;
};