#include "latencytester.h"

LatencyTester::LatencyTester(QNetworkProxy proxy, QUrl url, QObject *parent): QObject(parent), url(url), proxy(proxy), net(this) {
    net.setProxy(proxy);
    connect(&net, &QNetworkAccessManager::finished, [this] {
        auto n = timer.elapsed();
        statistics.append(n);
        if (count)
            QTimer::singleShot(300, this, &LatencyTester::start);
        else {
            statistics.pop_front();
            double avg = 0;
            for (auto i : statistics)
                avg += i;
            avg /= statistics.size();
            emit testFinished(avg);
            deleteLater();
        }
    });
}

void LatencyTester::start() {
    count--;
    timer.restart();
    net.get(QNetworkRequest(url));
}
