#ifndef DATABASEMANAGER_H
#define DATABASEMANAGER_H

#include <QSqlDatabase>
#include <QSqlQuery>
#include <QSqlError>
#include <QDebug>

class databasemanager
{
public:
    databasemanager();
    bool connectAndInit();


private:
    QSqlDatabase db;
    bool createTables();
};

#endif // DATABASEMANAGER_H
