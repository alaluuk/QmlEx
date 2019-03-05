#include "cat.h"

Cat::Cat(QObject *parent):
    QObject(parent)
{

}

QString Cat::getName() const
{
    return name;
}

void Cat::setName(const QString &value)
{
    name = value;
}

QString Cat::getColor() const
{
    return color;
}

void Cat::setColor(const QString &value)
{
    color = value;
}
