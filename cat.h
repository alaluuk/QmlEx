#ifndef CAT_H
#define CAT_H
#include<QString>
#include<QObject>


class Cat: public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString getName READ getName WRITE setName)
    Q_PROPERTY(QString getColor READ getColor WRITE setColor)

public:
    explicit Cat(QObject *parent =nullptr);

    QString getName() const;


    QString getColor() const;


public slots:
    void setName(const QString &value);
    void setColor(const QString &value);
private:
    QString name;
    QString color;

};


#endif // CAT_H
