#include "dialog.h"
#include <QApplication>

int main(int argc, char *argv[]) {

  // qSetMessagePattern("%{file}(%{line}): %{message}");     //!< 自定义qDebug的输出pattern
  const QString msgPattern{"[%{file}(%{line})] %{message}"};
  // const QString msgPattern{"[%{file}(%{line})] %{function} - %{message}"};
  // const QString msgPattern{"[%{time hh:mm:ss.zzz} %{file}(%{line})] %{function} - %{message}"};
  qSetMessagePattern(msgPattern);
  QApplication a(argc, argv);
  Dialog w;
  w.show();

  return a.exec();
}
