#ifndef LATENCYTESTER_H
#define LATENCYTESTER_H

#include "pch.hpp"

class LatencyTester : public QObject {
    Q_OBJECT

public:
    explicit LatencyTester(QNetworkProxy proxy, QUrl url, QObject *parent = nullptr);

public slots:
    void start();

signals:
    void testFinished(int latencyMs);

private:
    QUrl url;
    QNetworkProxy proxy;
    QNetworkAccessManager net;
    QElapsedTimer timer;
    int count = 5;
    QList<int> statistics;
};

#endif // LATENCYTESTER_H
