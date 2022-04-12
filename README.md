# C-C-log-
在C的世界里面没有特别好的日志函数库（就像Java里面的的log4j，或者C++的log4cxx）。C程序员都喜欢用自己的轮子。printf就是个挺好的轮子，但没办法通过配置改变日志的格式或者输出文件。syslog是个系统级别的轮子，不过速度慢，而且功能比较单调。
1 log4j的衍生品
日志是应用软件中不可缺少的部分,Apache的开源项目Log4j是一个功能强大的日志组件,提供方便的日志记录，他有很多移植版（包括官方的和非官方的版本）

1.1 log4cxx
地址 http://logging.apache.org/log4cxx/

Log4cxx是开放源代码项目Apache Logging Service的子项目之一，是Java社区著名的log4j的c++移植版，用于为C++程序提供日志功能，以便开发者对目标程序进行调试和审计。

1.2Log4cpp
log4cpp是个基于LGPL的开源项目，移植自Java的日志处理跟踪项目log4j，并保持了API上的一致。其类似的支持库还包括Java(log4j)，C++(log4cpp、log4cplus)，C(log4c)，Python(log4p)等。 
而log4c ,

1.3log4c
log4c现已不再有人维护了。不是面向对象的，不支持流式log输入。有配置文件。最新版本（log4c-1.2.4.tar.gz）存在内存泄露。不建议使用。

1.4 log4cplus
地址 http://sourceforge.net/projects/log4cplus/

log4cplus是C++编写的开源的日志系统，前身是java编写的log4j系统.受Apache Software License保护。

作者是Tad E. Smith。log4cplus具有线程安全、灵活、以及多粒度控制的特点，通过将信息划分优先级使其可以面向程序调试、运行、测试、和维护等全生命周期； 你可以选择将信息输出到屏幕、文件、 
NT event log、甚至是远程服务器；通过指定策略对日志进行定期备份等等。

2 google glog
Google glog是一个基于程序级记录日志信息的c++库，编程使用方式与c++的stream操作类似，例：

LOG(INFO) << “Found ” << num_cookies << ” cookies”;

LOG”宏为日志输出关键字，“INFO”为严重性程度。 
主要支持功能：

1， 参数设置，以命令行参数的方式设置标志参数来控制日志记录行为； 
2， 严重性分级，根据日志严重性分级记录日志； 
3， 可有条件地记录日志信息； 
4， 条件中止程序。丰富的条件判定宏，可预设程序终止条件； 
5， 异常信号处理。程序异常情况，可自定义异常处理过程； 
6， 支持debug功能。可只用于debug模式； 
7， 自定义日志信息； 
8， 线程安全日志记录方式； 
9， 系统级日志记录； 
10， google perror风格日志信息； 
11， 精简日志字符串信息。

3 z-log
地址 https://github.com/HardySimpson/zlog

z-log是一个高性能、线程安全、灵活、概念清晰的纯C日志函数库。 
由难易编写

这里写图片描述

zlog有这些特性：

syslog分类模型，基于规则路由过滤，比log4j模型要正确高效，详见为什么log4j的概念模型是错误的。

日志格式定制，类似于log4j的pattern layout

多种输出，包括动态文件、静态文件、stdout、stderr、syslog、用户自定义输出函数

运行时手动或自动刷新配置（同时保证安全）

高性能，在我的笔记本上达到338’638条日志每秒, 大概是syslog(3)配合rsyslogd的1000倍速度

高可靠性和速度之间的平衡，用户自定义多少条日志后fsync数据到硬盘

用户自定义等级

多线程和多进程环境下保证安全转档

精确到微秒

简单调用包装dzlog（一个程序默认只用一个分类）

MDC，线程键-值对的表，可以扩展用户自定义的字段

自诊断，可以在运行时输出zlog自己的日志和配置状态

不依赖其他库，只要是个POSIX系统就成(当然还要一个C99兼容的vsnprintf)

网友提供的其他版本，方便其他平台安装

auto tools版本: https://github.com/bmanojlovic/zlog 
cmake版本:https://github.com/lisongmin/zlog 
windows版本: https://github.com/lopsd07/WinZlog

4 spdlog
spdlog 是一个快速的 C++ 日志库，只包含头文件，兼容 C++11。

特性：

非常快
只包含头文件
无需依赖第三方库
支持跨平台 - Linux / Windows on 32/64 bits
支持多线程
可对日志文件进行循环输出
可每日生成日志文件
支持控制台日志输出
可选的异步日志
支持日志输出级别
可自定义日志格式
5 c-log
c-log是一个稳定，高效，多线程安全，易用，简单的C/C++ 日志库，在github主页上有丰富的测试case，后续将会推迟直接输出到scribe等集中式日志收集中间件上，帮助用户更好的收集，分析日志

6 syslog-ng
syslog-ng作为syslog的替代工具，可以完全替代syslog的服务，并且通过定义规则，实现更好的过滤功能 
的一个设计原则就是建立更好的消息过滤粒度。syslog-ng能够进行基于内容和优先权/facility的过滤。另一个设计原则是更容易进行不同防火墙网段的信息转发，它支持主机链，即使日志消息经过了许多计算机的转发，也可以找出原发主机地址和整个转发链。最后的一个设计原则就是尽量使配置文件强大和简洁。

7 轻量级日志EasyLogger
地址 ：https://github.com/armink/EasyLogger

7.1 介绍
EasyLogger 是一款超轻量级(ROM<1.6K, RAM<0.3K)、高性能的 C/C++ 日志库，非常适合对资源敏感的软件项目，例如： IoT 产品、可穿戴设备、智能家居等等。相比 log4c、zlog 这些知名的 C/C++ 日志库， EasyLogger 的功能更加简单，提供给用户的接口更少，但上手会很快，更多实用功能支持以插件形式进行动态扩展。

7.2 主要特性
支持用户自定义输出方式（例如：终端、文件、数据库、串口、485、Flash…）； 
日志内容可包含级别、时间戳、线程信息、进程信息等； 
日志输出被设计为线程安全的方式，并支持 异步输出 及 缓冲输出 模式； 
支持多种操作系统（RT-Thread、UCOS、Linux、Windows…），也支持裸机平台； 
日志支持 RAW格式 ； 
支持按 标签 、 级别 、 关键词 进行动态过滤； 
各级别日志支持不同颜色显示 
扩展性强，支持以插件形式扩展新功能。 
名词解释： 1、RAW格式：未经过格式化的原始日志。 2、标签：在软件中可以按照文件、模块、功能等方面，对需要打印的日志设定标签，实现日志分类。

Log4cplus使用指南

1.  Log4cplus简介
log4cplus是C++编写的开源的日志系统，前身是java编写的log4j系统，受Apache Software License保护，作者是Tad E. Smith。

log4cplus具有线程安全、灵活、以及多粒度控制的特点，通过将日志划分优先级使其可以面向程序调试、运行、测试、和维护等全生命周期。你可以选择将日志输出到屏幕、文件、NT event log、甚至是远程服务器；通过指定策略对日志进行定期备份等等。

2.  安装方法
2.1.          linux
1- 解压: gzip -cd log4cplus-x.x.x.tar.gz | tar -xf -

2- 进入log4cplus根目录: cd log4cplus-x.x.x

3- 产生Makefile: ./configure --prefix=/where/to/install -enable-threads=no

如果需要指定安装路径可使用--prefix参数, 否则将缺省安装到/usr/local目录下。另外，如果需要单线程版本可通过参数-enable-threads=no指定, 否则默认将安装多线程版本。

对于HP-UNIX平台用户, 由于aCC编译器选项兼容性问题，请另外加入参数CXXFLAGS=”-AA -w”(单线程版本)或CXXFLAGS=”-AA –mt -w”(多线程版本)。

4- 创建: make

对于HP-UNIX用户，由于aCC编译器不包含-Wall选项来显示所有警告，创建时将导致无效的-W参数错误，请修改/log4cplus-x.x.x/src目录下的Makefile，将AM_CPPFLAGS = -Wall 行的-Wall选项删除或注释掉。

此外，某些HP-UNIX平台的套接字连接接受函数accept()第三个参数要求为int*，而在socket-unix.cxx源文件153行实现中实际传入的是socklen_t*类型，平台并不支持，也将导致编译错误。解决方法是将源代码该行中的传入参数强制转换为int*类型即可。 

注意AIX和Linux平台目前并没有上述两处创建错误。

对于AIX平台用户请保证创建时使用的编译器是xlC而不是g++，否则将导致log4cplus脚本配置功能运行时产生段异常，生成core文件。有鉴于此，也请保证HP-UNIX用户尽量使用aCC编译器进行创建。

5- 创建/log4cplus/tests目录下的测试用例: make check

6- 安装: make install

安装成功后将在/usr/local目录或指定的目录下创建include和lib两个子目录及相应文件。其中include目录包含头文件，lib目录包含最终打包生成的静态和动态库。在动态连接log4cplus库时请使用-llog4cplus选项。

2.2.          win
 

3.  主要类说明
类名

说明

Filter

过滤器，过滤输出消息。过滤器，解决哪些信息需要输出的问题，比如DEBUG，WARR,INFO等的输出控制

Layout

布局器，控制输出消息的格式。格式化输出信息,解决了如何输出的问题。

Appender

挂接器，与布局器和过滤器紧密配合，将特定格式的消息过滤后输出到所挂接的设备终端如屏幕，文件等等)。接收日志的各个设备,如控制台、文件、网络等。解决了输出到哪里去的问题

Logger

记录器，保存并跟踪对象日志信息变更的实体，当你需要对一个对象进行记录时，就需要生成一个logger。日志模块,程序中唯一一个必须得使用的模块，解决了在哪里使用日志的问题。

Hierarchy

分类器，层次化的树型结构，用于对被记录信息的分类，层次中每一个节点维护一个logger的所有信息。

LogLevel

优先权，包括TRACE,  DEBUG, INFO, WARNING, ERROR, FATAL。


4.  基本使用
4.1.          基本步骤
使用log4cplus有六个基本步骤：

l  实例化一个封装了输出介质的appender对象；

l  实例化一个封装了输出格式的layout对象；

l  将layout对象绑定(attach)到appender对象；如省略此步骤，简单布局器SimpleLayout(参见5.1小节)对象会绑定到logger。

l  实例化一个封装了日志输出logger对象,并调用其静态函数getInstance()获得实例，log4cplus::Logger::getInstance("logger_name")；

l  将appender对象绑定(attach)到logger对象；

l  设置logger的优先级，如省略此步骤，各种有限级的日志都将被输出。

4.2.          使用示例
下面通过一些例子来了解log4cplus的基本使用。

4.2.1.   例1-标准使用
/*

*标准使用，严格实现步骤1-6。

　*/

#include <log4cplus/logger.h>

#include <log4cplus/consoleappender.h>

#include <log4cplus/layout.h>

 

using namespace log4cplus;

using namespace log4cplus::helpers;

 

int main()

{

    /* step 1: Instantiate an appender object */

    SharedObjectPtr<Appender> _append (new ConsoleAppender());

    _append->setName("append for  test");

    　　　

    /* step 2: Instantiate a layout object */

    std::string pattern = "%d{%m/%d/%y  %H:%M:%S}  - %m [%l]%n";

    std::auto_ptr<Layout> _layout(new PatternLayout(pattern));

    　　　

    /* step 3: Attach the layout object to the appender */

    _append->setLayout( _layout );

    　　　

    /* step 4:  Instantiate a logger object */

    Logger _logger = Logger::getInstance("test");

    　　　

    /* step 5: Attach the appender object to the  logger  */

    _logger.addAppender(_append);

    　　　

    /* step 6: Set a priority for the logger  */

    _logger.setLogLevel(ALL_LOG_LEVEL);

    　　　

    /* log activity */

    LOG4CPLUS_DEBUG(_logger, "This is the  FIRST log message...")

    sleep(1);

    LOG4CPLUS_WARN(_logger, "This is the  SECOND log message...")

    return 0;

}

输出结果：

10/14/04  09:06:24  - This is the FIRST log  message... [main.cpp:31]

10/14/04  09:06:25  - This is the SECOND log  message... [main.cpp:33]

4.2.2.   例2-简洁使用
/*

　*简洁使用，仅实现步骤1、4、5。

 　*/

#include <log4cplus/logger.h>

#include <log4cplus/consoleappender.h>

 

using namespace log4cplus;

using namespace log4cplus::helpers;

 

int main()

{

    /* step 1: Instantiate an appender object */

    SharedAppenderPtr _append(new ConsoleAppender());

    _append->setName("append  test");

    　　　

    /* step 4: Instantiate a logger object */

    Logger _logger = Logger::getInstance("test");

    　　　

    /* step 5: Attach the appender object to the  logger  */

    _logger.addAppender(_append);

    　　　

    /* log activity */

    LOG4CPLUS_DEBUG(_logger, "This is the  FIRST log message...")

    sleep(1);

    LOG4CPLUS_WARN(_logger, "This is the  SECOND log message...")

    　　　

    return 0;

}

输出结果：

DEBUG - This is  the FIRST log message...

WARN - This is the  SECOND log message...

4.2.3.   例3-输出日志到控制台
/*

　*iostream模式，appender输出到控制台。

　*/

#include<log4cplus/logger.h>

#include<log4cplus/consoleappender.h>

#include<iomanip>

usingnamespacelog4cplus;

 

int main()

{

    /*step1:Instantiateanappenderobject*/

    SharedAppenderPtr_append(new  ConsoleAppender());

    _append->setName("appendtest");

    　　　

    /*step4:Instantiatealoggerobject*/

    Logger_logger = Logger::getInstance("test");

    　　　

    /*step5:Attachtheappenderobjecttothelogger*/

    _logger.addAppender(_append);

    　　　

    /*logactivity*/

    LOG4CPLUS_TRACE(_logger, "Thisis" << "justat" << "est." <<  std::endl)

    LOG4CPLUS_DEBUG(_logger, "Thisisabool:" << true)

    LOG4CPLUS_INFO(_logger, "Thisisachar:" << 'x')

    LOG4CPLUS_WARN(_logger, "Thisisaint:" << 1000)

    LOG4CPLUS_ERROR(_logger, "Thisisalong(hex):" << std::hex  << 100000000)

    LOG4CPLUS_FATAL(_logger, "Thisisadouble:" <<  std::setprecision(15) << 1.2345234234)

    　　　

    return0;

}

输出结果：

DEBUG-Thisisabool:1

INFO-Thisisachar:x

WARN-Thisisaint:1000

ERROR-Thisisalong(hex):5f5e100

FATAL-Thisisadouble:1.2345234234

4.2.4.   例4-输出日志到文件
/*

*文件模式，appender输出到文件。

　*/

#include<log4cplus/logger.h>

#include<log4cplus/fileappender.h>

usingnamespacelog4cplus;

 

int main()

{

    /*step1:Instantiateanappenderobject*/

    SharedAppenderPtr_append(new FileAppender("Test.log"));

    _append->setName("filelogtest");

    　　　

    /*step4:Instantiatealoggerobject*/

    Logger_logger = Logger::getInstance("test.subtestof_filelog");

    　　　

    /*step5:Attachtheappenderobjecttothelogger*/

    _logger.addAppender(_append);

    　　　

    /*logactivity*/

    for (int i = 0; i < 5; ++i) {

        LOG4CPLUS_DEBUG(_logger, "Enteringloop#" << i  << "Endline#")

    }

 

    return0;

}

输出结果（Test.log文件）：

DEBUG-Enteringloop#0Endline#

DEBUG-Enteringloop#1Endline#

DEBUG-Enteringloop#2Endline#

DEBUG-Enteringloop#3Endline#

DEBUG-Enteringloop#4Endline#

4.2.5.   例5-使用loglog输出日志
LogLog类实现了debug, warn, error 函数用于logcplus运行时显示log4cplus自身的调试、警告或错误信息，是对标准输出的简单封装，它也可以用来进行简单的日志输出。LogLog 同时提供了两个方法来进一步控制所输出的信息，其中setInternalDebugging()方法用来控制是否屏蔽输出信息中的调试信息，当输入参数为false则屏蔽，缺省设置为false。 setQuietMode()方法用来控制是否屏蔽所有输出信息，当输入参数为true则屏蔽，缺省设置为false。

/*

通过loglog来控制输出调试、警告或错误信息，appender输出到屏幕。

*/

#include <iostream>

#include <log4cplus/helpers/loglog.h>

using namespace log4cplus::helpers;

 

void printMsgs(void)

{

    std::cout << "Entering  printMsgs()..." << std::endl;

    LogLog::getLogLog()->debug("This is a  Debug statement...");

    LogLog::getLogLog()->warn("This is a  Warning...");

    LogLog::getLogLog()->error("This is a  Error...");

    std::cout << "Exiting  printMsgs()..." << std::endl << std::endl;

}

 

int main()

{

    printMsgs();

    std::cout << "Turning on  debug..." << std::endl;

    LogLog::getLogLog()->setInternalDebugging(true);

    printMsgs();

    std::cout << "Turning on  quiet mode..." << std::endl;

    LogLog::getLogLog()->setQuietMode(true);

    printMsgs();

    return 0;

}

输出结果：

EnteringprintMsgs()...

log4cplus:WARNThisisaWarning...

log4cplus:ERRORThisisaError...

ExitingprintMsgs()...

Turningondebug...

EnteringprintMsgs()...

log4cplus:ThisisaDebugstatement...

log4cplus:WARNThisisaWarning...

log4cplus:ERRORThisisaError...

ExitingprintMsgs()...

Turningonquietmode...

EnteringprintMsgs()...

ExitingprintMsgs()...

注意输出信息中总是包含"log4cplus:"前缀，如果需要定制使其使用其他的前缀请参见9.2小节。

4.3.          日志输出宏
log4cplus在头文件loggingmacros.h中提供了以下的日志输出宏：

LOG4CPLUS_TRACE_METHOD(logger,logEvent)

 

LOG4CPLUS_TRACE(logger,logEvent)

LOG4CPLUS_TRACE_STR(logger,logEvent)

 

LOG4CPLUS_DEBUG(logger,logEvent)

LOG4CPLUS_DEBUG_STR(logger,logEvent)

 

LOG4CPLUS_INFO(logger,logEvent)

LOG4CPLUS_INFO_STR(logger,logEvent)

 

LOG4CPLUS_WARN(logger,logEvent)

LOG4CPLUS_WARN_STR(logger,logEvent)

 

LOG4CPLUS_ERROR(logger,logEvent)

LOG4CPLUS_ERROR_STR(logger,logEvent)

 

LOG4CPLUS_FATAL(logger,logEvent)

LOG4CPLUS_FATAL_STR(logger,logEvent)

其中logger 为Logger实例名称，logEvent为日志内容。由于log4cplus选用C++的流机制进行日志输出，因此为了区分包含<<运算符和不包含<<运算符的日志内容，分别提供了LOG4CPLUS_XXXX和LOG4CPLUS_XXXX_STR两种日志输出宏。 另外，日志输出宏LOG4CPLUS_TRACE_METHOD主要用来跟踪方法的调用轨迹。

5.  输出格式控制(layout)
log4cplus通过布局器（Layouts）来控制输出的格式，log4cplus提供了三种类型的Layouts，分别是SimpleLayout、PatternLayout、和TTCCLayout。

5.1.          SimpleLayout
一种简单格式的布局器，在输出的原始信息之前加上LogLevel和一个"-"，如果初始化时没有将布局器附加到挂接器，则默认使用SimpleLayout。

以下代码片段演示了如何使用SimpleLayout。

... ...

/* step 1:  Instantiate an appender object */

SharedObjectPtr  _append (new ConsoleAppender());

_append->setName("append for  test");

/* step 2:  Instantiate a layout object */

std::auto_ptr<Layout>  _layout(new  log4cplus::SimpleLayout());

/* step 3: Attach  the layout object to the appender */

_append->setLayout(_layout);

/* step 4:  Instantiate a logger object */

Logger _logger =  Logger::getInstance("test");

/* step 5: Attach  the appender object to the logger  */

_logger.addAppender(_append);

/* log activity */

LOG4CPLUS_DEBUG(_logger,  "This  is the simple formatted log message...")

... ...

输出结果：

DEBUG - This is  the simple formatted log message...

5.2.          PatternLayout
一种有词法分析功能的模式布局器，类似于C语言的printf()函数，能够对预定义的转换标识符（conversion specifiers）进行解析，转换成特定格式输出。

以下代码片段演示了如何使用PatternLayout。

... ...

/* step 1:  Instantiate an appender object */

SharedObjectPtr _append  (new  ConsoleAppender());

_append->setName("append for  test");

 

/* step 2:  Instantiate a layout object */

std::string  pattern = "%d{%m/%d/%y  %H:%M:%S}  - %m [%l]%n";

std::auto_ptr<Layout>  _layout(new  PatternLayout(pattern));

 

/* step 3: Attach  the layout object to the appender */

_append->setLayout(_layout);

     　　　

/* step 4:  Instantiate a logger object */

Logger _logger =  Logger::getInstance("test_logger.subtest");

        　　　

/* step 5: Attach  the appender object to the logger  */

_logger.addAppender(_append);

 

/* log activity */

LOG4CPLUS_DEBUG(_logger,  "teststr")

... ...

输出结果：

10/16/04 18:51:25  - teststr  [main.cpp:51]

5.2.1.   转换标识符
PatterLayout支持的转换标识符主要包括：

（1）"%%"，转义为%, 即，std::string pattern = "%%" 时输出"%"。

（2）"%c"，输出logger名称，比如std::string pattern ="%c" 时输出: "test_logger.subtest"，     也可以控制logger名称的显示层次，比如"%c{1}"时输出"test_logger"，其中数字表示层次。

（3）"%D"，显示本地时间，当std::string pattern ="%D" 时输出:"2004-10-16 18:55:45"，%d显示标准时间，所以当std::string pattern ="%d" 时输出"2004-10-16 10:55:45" （因为北京时间位于东8区，差8个小时）。

可以通过%d{...}定义更详细的显示格式，比如%d{%H:%M:%s}表示要显示小时:分钟：秒。大括号中可显示的预定义标识符如下：

%a -- 表示礼拜几，英文缩写形式，比如"Fri"

%A -- 表示礼拜几，比如"Friday"

%b -- 表示几月份，英文缩写形式，比如"Oct"

%B -- 表示几月份，"October"

%c -- 标准的日期＋时间格式，如 "Sat Oct 16 18:56:19 2004"

%d -- 表示今天是这个月的几号(1-31)"16"

%H -- 表示当前时刻是几时(0-23)，如 "18"

%I -- 表示当前时刻是几时(1-12)，如 "6"

%j -- 表示今天是哪一天(1-366)，如 "290"

%m -- 表示本月是哪一月(1-12)，如 "10"

%M -- 表示当前时刻是哪一分钟(0-59)，如 "59"

%p -- 表示现在是上午还是下午， AM or PM

%q -- 表示当前时刻中毫秒部分(0-999)，如 "237"

%Q -- 表示当前时刻中带小数的毫秒部分(0-999.999)，如 "430.732"

%S -- 表示当前时刻的多少秒(0-59)，如 "32"

%U -- 表示本周是今年的第几个礼拜，以周日为第一天开始计算(0-53)，如 "41"

%w -- 表示礼拜几，(0-6, 礼拜天为0)，如 "6"

%W -- 表示本周是今年的第几个礼拜，以周一为第一天开始计算(0-53)，如 "41"

%x -- 标准的日期格式，如 "10/16/04"

%X -- 标准的时间格式，如 "19:02:34"

%y -- 两位数的年份(0-99)，如 "04"

%Y -- 四位数的年份，如 "2004"

%Z -- 时区名，比如 "GMT"

（4）"%F"，输出当前记录器所在的文件名称，比如std::string pattern ="%F" 时输出: "main.cpp"。

（5）"%L"，输出当前记录器所在的文件行号，比如std::string pattern ="%L" 时输出: "51"

（6）"%l"，输出当前记录器所在的文件名称和行号，比如std::string pattern ="%l" 时输出"main.cpp:51"。

（7）"%m"，输出原始信息，比如std::string pattern ="%m" 时输出: "teststr"，即上述代码中LOG4CPLUS_DEBUG的第二个参数，这种实现机制可以确保原始信息被嵌入到带格式的信息中。

（8）"%n"，换行符，没什么好解释的。

（9）"%p"，输出LogLevel，比如std::string pattern ="%p" 时输出: "DEBUG"。

（10）"%t"，输出记录器所在的线程ID，比如std::string pattern ="%t" 时输出: "1075298944"。

（11）"%x"，嵌套诊断上下文NDC (nested diagnostic context) 输出，从堆栈中弹出上下文信息，NDC可以用对不同源的log信息（同时地）交叉输出进行区分，关于NDC方面的详细介绍会在下文中提到。

（12）格式对齐，比如std::string pattern ="%-10m"时表示左对齐，宽度是10，此时会输出"teststr   "，当然其它的控制字符也可以相同的方式来使用，比如"%-12d"，"%-5p"等等。

5.3.          TTCCLayout
是在PatternLayout基础上发展的一种缺省的带格式输出的布局器，其格式由时间，线程ID，Logger和NDC 组成（consists of time, thread, Logger and nested diagnostic context information, hence the name），因而得名, 关于NDC请参见6.4小节。

以下代码片段演示了如何使用TTCCLayout。

　......

/*step1:Instantiateanappenderobject*/

SharedObjectPtr_append(new  ConsoleAppender());

_append->setName("appendfortest");

　　　

/*step2:Instantiatealayoutobject*/

std::auto_ptr_layout(new  TTCCLayout());

　　　

/*step3:Attachthelayoutobjecttotheappender*/

_append->setLayout(_layout);

　　　

/*step4:Instantiatealoggerobject*/

Logger_logger=Logger::getInstance("test_logger");

　　　

/*step5:Attachtheappenderobjecttothelogger*/

_logger.addAppender(_append);

　　　

/*logactivity*/

LOG4CPLUS_DEBUG(_logger,"teststr")

......

输出结果：

10-16-04 19:08:27,501 [1075298944] DEBUG test_logger <> -  teststr

TTCCLayout在构造时，有机会选择显示本地时间或GMT时间，缺省是按照本地时间显示：TTCCLayout::TTCCLayout(bool use_gmtime  = false)。

如果需要构造TTCCLayout对象时选择GMT时间格式，则使用方式如下代码片断所示。

... ...

/* step 2:  Instantiate a layout object */

std::auto_ptr  _layout(new TTCCLayout(true));

... ...

输出结果：

10-16-04 11:12:47,678 [1075298944] DEBUG test_logger <> -  teststr

6.  输出重定向(appender)
6.1.          重定向到控制台
log4cplus默认将输出到控制台，提供ConsoleAppender用于操作。示例代码请参见4.2.1、4.2.2或4.2.3小节，这里不再赘述。

6.2.          重定向到文件
log4cplus提供了三个类用于文件操作，它们是FileAppender类、RollingFileAppender类、DailyRollingFileAppender类。

6.2.1.   FileAppender
实现了基本的文件操作功能，构造函数如下：

FileAppender ::FileAppender(const log4cplus::tstring& filename,

                         LOG4CPLUS_OPEN_MODE_TYPE mode =

LOG4CPLUS_FSTREAM_NAMESPACE::ios::trunc,

                         bool immediateFlush = true);

filename       : 文件名

mode          : 文件类型，可选择的文件类型包括app、ate、binary、in、out、trunc，因为实际上只是对stl的一个简单包装，这里就不多讲了。缺省是trunc，表示将先前文件删除。

immediateFlush  : 缓冲刷新标志，如果为true表示每向文件写一条记录就刷新一次缓存，否则直到FileAppender被关闭或文件缓存已满才更新文件，一般是要设置true的，比如你往文件写的过程中出现了错误（如程序非正常退出），即使文件没有正常关闭也可以保证程序终止时刻之前的所有记录都会被正常保存。

　　FileAppender类的使用情况请参考4.2.5小节，这里不再赘述。

6.2.2.   RollingFileAppender
实现可以滚动转储的文件操作功能，构造函数如下：

RollingFileAppender::RollingFileAppender(const log4cplus::tstring& filename,

                                    long maxFileSize,

                                    int maxBackupIndex,

                                    bool immediateFlush)

filename        : 文件名

maxFileSize     : 文件的最大尺寸

maxBackupIndex : 最大记录文件数

immediateFlush  : 缓冲刷新标志                                                   

RollingFileAppender类可以根据你预先设定的大小来决定是否转储，当超过该大小，后续log信息会另存到新文件中，除了定义每个记录文件的大小之外，你还要确定在RollingFileAppender类对象构造时最多需要多少个这样的记录文件(maxBackupIndex+1)，当存储的文件数目超过maxBackupIndex+1时，会删除最早生成的文件，保证整个文件数目等于maxBackupIndex+1。然后继续记录，比如以下代码片段：

... ...

#define LOOP_COUNT 200000

SharedAppenderPtr  _append(new  RollingFileAppender("Test.log", 5*1024, 5));

_append->setName("file  test");

_append->setLayout(  std::auto_ptr(new  TTCCLayout()) );

Logger::getRoot().addAppender(_append);

Logger root =  Logger::getRoot();

Logger test =  Logger::getInstance("test");

Logger subTest =  Logger::getInstance("test.subtest");

for(int i=0; i < LOOP_COUNT; ++i)  {

    NDCContextCreator _context("loop");

    LOG4CPLUS_DEBUG(subTest, "Entering  loop #"  << i)

}

... ...

输出结果：

运行后会产生6个输出文件，Test.log、Test.log.1、Test.log.2、Test.log.3、Test.log.4、Test.log.5其中Test.log存放着最新写入的信息，而最后一个文件中并不包含第一个写入信息，说明已经被不断更新了。

　　　需要指出的是，这里除了Test.log之外，每个文件的大小都是200K，而不是我们想像中的5K，这是因为log4cplus中隐含定义了文件的最小尺寸是200K，只有大于200K的设置才生效，<= 200k的设置都会被认为是200K。

6.2.3.   DailyRollingFileAppender
实现根据频度来决定是否转储的文件转储功能，构造函数如下：

DailyRollingFileAppender::DailyRollingFileAppender(const log4cplus::tstring& filename,

                                             DailyRollingFileSchedule schedule,

                                             bool immediateFlush,

                                             int maxBackupIndex)

filename        : 文件名

schedule        : 存储频度

immediateFlush  : 缓冲刷新标志

maxBackupIndex : 最大记录文件数

DailyRollingFileAppender类可以根据你预先设定的频度来决定是否转储，当超过该频度，后续log信息会另存到新文件中，这里的频度包括：MONTHLY（每月）、WEEKLY（每周）、DAILY（每日）、TWICE_DAILY（每两天）、HOURLY（每时）、MINUTELY（每分）。maxBackupIndex的含义同上所述，比如以下代码片段：

... ...

SharedAppenderPtr  _append(new  DailyRollingFileAppender("Test.log", MINUTELY, true, 5));

_append->setName("file  test");

_append->setLayout(  std::auto_ptr(new  TTCCLayout()) );

Logger::getRoot().addAppender(_append);

Logger root =  Logger::getRoot();

Logger test =  Logger::getInstance("test");

Logger subTest =  Logger::getInstance("test.subtest");

for(int i=0; i < LOOP_COUNT; ++i) {

    NDCContextCreator _context("loop");

    LOG4CPLUS_DEBUG(subTest, "Entering  loop #"  << i)

}

... ...

输出结果：

运行后会以分钟为单位，分别生成名为Test.log.2004-10-17-03-03、Test.log.2004-10-17-03-04和Test.log.2004-10-17-03-05这样的文件。

需要指出的是这里的"频度"并不是你写入文件的速度，其实是否转储的标准并不依赖你写入文件的速度，而是依赖于写入的那一时刻是否满足了频度条件，即是否超过了以分钟、小时、周、月为单位的时间刻度，如果超过了就另存。

6.3.          重定向到远程服务器
log4cplus提供了SocketAppender，实现了C/S方式的日志记录，用于支持重定向到远程服务器。

6.3.1.   客户端程序需要做的工作
(1) 定义一个SocketAppender类型的挂接器

SharedAppenderPtr _append(new SocketAppender(host, 8888, "ServerName"));

(2) 把该挂接器加入到logger中

Logger::getRoot().addAppender(_append);

(3) SocketAppender类型不需要Layout, 直接调用宏就可以将信息发往loggerServer了LOG4CPLUS_INFO(Logger::getRoot(), "This is a test: ")

注意这里对宏的调用其实是调用了SocketAppender::append()，里面有一个数据传输约定，即先发送一个后续数据的总长度，然后再发送实际的数据：

... ...

SocketBuffer  buffer = convertToBuffer(event, serverName);

SocketBuffer  msgBuffer(LOG4CPLUS_MAX_MESSAGE_SIZE);

msgBuffer.appendSize_t(buffer.getSize());

msgBuffer.appendBuffer(buffer);

... ...

6.3.2.   服务器端程序需要做的工作
(1) 定义一个ServerSocket

ServerSocket serverSocket(port);

(2) 调用accept函数创建一个新的socket与客户端连接

Socket sock = serverSocket.accept();

(3) 此后即可用该sock进行数据read/write了,形如(完整代码见6.3.3小节)：

　　SocketBuffer msgSizeBuffer(sizeof(unsigned int));

　　if(!clientsock.read(msgSizeBuffer)){

　　    return;

　　}

　　unsigned int msgSize = msgSizeBuffer.readInt();

　　SocketBuffer buffer(msgSize);

　　if(!clientsock.read(buffer)){

　　    return;

}

(4) 为了将读到的数据正常显示出来，需要将SocketBuffer存放的内容转换成InternalLoggingEvent格式：

　　log4cplus::spi::InternalLoggingEvent event = readFromBuffer(buffer);

　然后输出：

　　Logger logger = Logger::getInstance(event.getLoggerName());

　　logger.callAppenders(event);

注意read/write是按照阻塞方式实现的，意味着对其调用直到满足了所接收或发送的个数才返回。

6.3.3.   例6-重定向到远程服务器
　　　以下是服务器端代码。

#include <log4cplus/config.h>

#include <log4cplus/configurator.h>

#include <log4cplus/consoleappender.h>

#include <log4cplus/socketappender.h>

#include <log4cplus/helpers/loglog.h>

#include <log4cplus/helpers/socket.h>

#include <log4cplus/helpers/threads.h>

#include <log4cplus/spi/loggerimpl.h>

#include <log4cplus/spi/loggingevent.h>

#include <iostream>

using namespace std;

using namespace log4cplus;

using namespace log4cplus::helpers;

using namespace log4cplus::thread;

 

namespace loggingserver

{

    class ClientThread : public AbstractThread

    {

    public:

        ClientThread(Socket clientsock) : clientsock(clientsock) {

            cout << "Received a  client connection!!!!" << endl;

        }

 

        ~ClientThread() {

            cout << "Client  connection closed." << endl;

        }

 

        virtual void run();

 

    private:

        Socket clientsock;

    };

 

}

 

int main(int argc, char** argv)

{

    if (argc < 3) {

        cout << "Usage: port  config_file" << endl;

        return 1;

    }

    int port = atoi(argv[1]);

    tstring configFile =  LOG4CPLUS_C_STR_TO_TSTRING(argv[2]);

 

    PropertyConfigurator config(configFile);

    config.configure();

 

    ServerSocket serverSocket(port);

    while (1) {

        loggingserver::ClientThread* thr = new loggingserver::ClientThread(serverSocket.accept());

        thr->start();

    }

 

    return 0;

}

 

//////////////////////////////////////////////////////////////////////////////

//  loggingserver::ClientThread implementation

//////////////////////////////////////////////////////////////////////////////

void loggingserver::ClientThread::run()

{

    while (1) {

        if (!clientsock.isOpen()) {

            return;

        }

        SocketBuffer msgSizeBuffer(sizeof(unsigned int));

        if (!clientsock.read(msgSizeBuffer))  {

            return;

        }

        unsigned int msgSize = msgSizeBuffer.readInt();

        SocketBuffer buffer(msgSize);

        if (!clientsock.read(buffer)) {

            return;

        }

        spi::InternalLoggingEvent event = readFromBuffer(buffer);

        Logger logger = Logger::getInstance(event.getLoggerName());

        logger.callAppenders(event);

    }

}

以下是客户端代码。

#include <log4cplus/logger.h>

#include <log4cplus/socketappender.h>

#include <log4cplus/loglevel.h>

#include <log4cplus/tstring.h>

#include <log4cplus/helpers/threads.h>

#include <iomanip>

 

using namespace std;

using namespace log4cplus;

 

int main(int argc, char **argv)

{

    log4cplus::helpers::sleep(1);

    tstring serverName = (argc > 1 ?  LOG4CPLUS_C_STR_TO_TSTRING(argv[1]) : tstring());

    //tstring host =  LOG4CPLUS_TEXT("192.168.2.10");

    tstring host = LOG4CPLUS_TEXT("127.0.0.1");

    SharedAppenderPtr append_1(new SocketAppender(host, 9998,  serverName));

    append_1->setName( LOG4CPLUS_TEXT("First") );

    Logger::getRoot().addAppender(append_1);

 

    Logger root = Logger::getRoot();

    Logger test = Logger::getInstance(  LOG4CPLUS_TEXT("socket.test") );

 

    LOG4CPLUS_DEBUG(root,    "This is"

        << " a reall"

        << "y long message." << endl

        << "Just testing it out" << endl

        << "What do you think?")

        test.setLogLevel(NOT_SET_LOG_LEVEL);

    LOG4CPLUS_DEBUG(test, "This is a  bool: "  << true)

        LOG4CPLUS_INFO(test, "This is a  char: "  << 'x')

        LOG4CPLUS_INFO(test, "This is a  short: "  << (short)-100)

        LOG4CPLUS_INFO(test, "This is a  unsigned short: " << (unsigned short)100)

        log4cplus::helpers::sleep(0, 500000);

    LOG4CPLUS_INFO(test, "This is a  int: "  << (int)1000)

        LOG4CPLUS_INFO(test, "This is a  unsigned int: " << (unsigned int)1000)

        LOG4CPLUS_INFO(test, "This is a  long(hex): " << hex << (long)100000000)

        LOG4CPLUS_INFO(test, "This is a  unsigned long: " << (unsigned long)100000000)

        LOG4CPLUS_WARN(test, "This is a  float: "  << (float)1.2345)

        LOG4CPLUS_ERROR(test, "This is a  double: "

        << setprecision(15)

        << (double)1.2345234234)

        LOG4CPLUS_FATAL(test, "This is a  long double: "

        << setprecision(15)

        << (long double)123452342342.342)

 

        return 0;

}

6.4.          嵌入诊断上下文NDC
log4cplus中的嵌入诊断上下文（Nested Diagnostic Context），即NDC。对log系统而言，当输入源可能不止一个，而只有一个输出时，往往需要分辩所要输出消息的来源，比如服务器处理来自不同客户端的消息时就需要作此判断，NDC可以为交错显示的信息打上一个标记(stamp)，使得辨认工作看起来比较容易些。这个标记是线程特有的，利用了线程局部存储机制，称为线程私有数据（Thread-Specific Data，或TSD）。相关定义如下，包括定义、初始化、获取、设置和清除操作：

linux pthread

#define LOG4CPLUS_THREAD_LOCAL_TYPE pthread_key_t*

#define LOG4CPLUS_THREAD_LOCAL_INIT ::log4cplus::thread::createPthreadKey()

#define LOG4CPLUS_GET_THREAD_LOCAL_VALUE( key )  pthread_getspecific(*key)

#defineLOG4CPLUS_SET_THREAD_LOCAL_VALUE(key,value)  \

    　　pthread_setspecific(*key, value)

#define LOG4CPLUS_THREAD_LOCAL_CLEANUP( key ) pthread_key_delete(*key)

 

win32

#define LOG4CPLUS_THREAD_LOCAL_TYPE DWORD

#define LOG4CPLUS_THREAD_LOCAL_INIT TlsAlloc()

#define LOG4CPLUS_GET_THREAD_LOCAL_VALUE( key )  TlsGetValue(key)

#define LOG4CPLUS_SET_THREAD_LOCAL_VALUE( key, value ) \

    TlsSetValue(key, static_cast(value))

#define LOG4CPLUS_THREAD_LOCAL_CLEANUP( key )  TlsFree(key)

使用起来比较简单，在某个线程中：

NDC& ndc =  log4cplus::getNDC();

ndc.push("ur ndc  string");

LOG4CPLUS_DEBUG(logger,  "this  is a NDC test");

... ...

ndc.pop();

... ...

LOG4CPLUS_DEBUG(logger,  "There  should be no NDC...");

ndc.remove();

输出结果(当设定输出格式为TTCCLayout时)：

10-21-04 21:32:58, [3392] DEBUG test  - this is a NDC test

10-21-04 21:32:58, [3392] DEBUG test <> - There should be no  NDC...

也可以在自定义的输出格式中使用NDC(用%x) ，比如：

... ...

std::string  pattern = "NDC:[%x]  - %m %n";

std::auto_ptr  _layout(new  PatternLayout(pattern));

... ...

LOG4CPLUS_DEBUG(_logger,  "This  is the FIRST log message...")

NDC& ndc =  log4cplus::getNDC();

ndc.push("ur ndc  string");

LOG4CPLUS_WARN(_logger,  "This  is the SECOND log message...")

ndc.pop();

ndc.remove();

... ...

输出结果：

NDC:[]  - This is the FIRST  log message...

NDC:[ur ndc string]  - This  is the SECOND log message...

另外一种更简单的使用方法是在线程中直接用NDCContextCreator：

NDCContextCreator _first_ndc("ur ndc string");

G4CPLUS_DEBUG(logger, "this is a NDC test")

不必显式地调用push/pop了，而且当出现异常时，能够确保push与pop的调用是匹配的。

7.  输出过滤(filter)
7.1.          利用日志级别进行输出过滤
7.1.1.   日志级别管理
log4cplus将输出的log信息按照LogLevel（从低到高）分为：

级别

说明

NOT_SET_LOG_LEVEL ( -1)

接受缺省的LogLevel，如果有父logger则继承它的LogLevel

ALL_LOG_LEVEL (0)

开放所有log信息输出

TRACE_LOG_LEVEL (0)

开放trace信息输出(即ALL_LOG_LEVEL)

DEBUG_LOG_LEVEL(10000)

开放debug信息输出

INFO_LOG_LEVEL (20000)

开放info信息输出

WARN_LOG_LEVEL (30000)

开放warning信息输出

ERROR_LOG_LEVEL(40000)

开放error信息输出

FATAL_LOG_LEVEL (50000)

开放fatal信息输出

OFF_LOG_LEVEL (60000)

关闭所有log信息输出

在log4cplus中，所有logger都通过一个层次化的结构（其实内部是hash表）来组织的，有一个Root级别的logger，可以通过以下方法获取：Logger root = Logger::getRoot();

用户定义的logger都有一个名字与之对应，比如：Logger test = Logger::getInstance("test");

可以定义该logger的子logger: Logger subTest = Logger::getInstance("test.subtest");   

注意Root级别的logger只有通过getRoot方法获取，Logger::getInstance("root")获得的是它的子对象而已。有了这些具有父子关系的logger之后可分别设置其LogLevel,比如：

root.setLogLevel( ... );

Test.setLogLevel( ... );

subTest.setLogLevel( ... );

各个logger可以通过setLogLevel设置自己的优先级，当某个logger的LogLevel设置成NOT_SET_LOG_LEVEL时，该logger会继承父logger的优先级，另外，如果定义了重名的多个logger, 对其中任何一个的修改都会同时改变其它logger。

7.1.2.   利用日志级别进行输出过滤
log4cplus支持编译时候和运行时刻利用日志级别进行输出过滤。编译时刻通过如下的预定义变量进行过滤：　　　

#define LOG4CPLUS_DISABLE_FATAL

#define  LOG4CPLUS_DISABLE_WARN

#define  LOG4CPLUS_DISABLE_ERROR

#define  LOG4CPLUS_DISABLE_INFO

#define  LOG4CPLUS_DISABLE_DEBUG

#define  LOG4CPLUS_DISABLE_TRACE

运行时刻的过滤则通过使用Logger的setLogLevel设置日志级别进行过滤。

7.1.3.   例7-日志的优先级
#include "log4cplus/logger.h"

#include "log4cplus/consoleappender.h"

#include "log4cplus/loglevel.h"

#include <iostream>

using namespace std;

using namespace log4cplus;

 

int main()

{

    SharedAppenderPtr _append(new ConsoleAppender());

    _append->setName("test");

    Logger::getRoot().addAppender(_append);

    Logger root = Logger::getRoot();

 

    Logger test = Logger::getInstance("test");

    Logger subTest = Logger::getInstance("test.subtest");

    LogLevelManager& llm =  getLogLevelManager();

 

    cout << endl << "Before  Setting, Default LogLevel" << endl;

    LOG4CPLUS_FATAL(root, "root: " <<  llm.toString(root.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root, "test: " <<  llm.toString(test.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root,"test.subtest:" <<  llm.toString(subTest.getChainedLogLevel()));

 

    cout << endl << "Setting  test.subtest to WARN" << endl;

    subTest.setLogLevel(WARN_LOG_LEVEL);

    LOG4CPLUS_FATAL(root, "root: " <<  llm.toString(root.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root, "test: " <<  llm.toString(test.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root, "test.subtest:  "  << llm.toString(subTest.getChainedLogLevel()));

 

    cout << endl << "Setting test  to TRACE" << endl;

    test.setLogLevel(TRACE_LOG_LEVEL);

    LOG4CPLUS_FATAL(root, "root: " <<  llm.toString(root.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root, "test: " <<  llm.toString(test.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root, "test.subtest:  "  << llm.toString(subTest.getChainedLogLevel()));

 

    cout << endl << "Setting  test.subtest to NO_LEVEL" << endl;

    subTest.setLogLevel(NOT_SET_LOG_LEVEL);

    LOG4CPLUS_FATAL(root, "root: " <<  llm.toString(root.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root, "test: " << llm.toString(test.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root, "test.subtest:  "  << llm.toString(subTest.getChainedLogLevel()) << '\n');

 

    cout << "create a logger test_bak,  named \"test_\", too. " << endl;

    Logger test_bak = Logger::getInstance("test");

    cout << "Setting test to INFO, so  test_bak also be set to INFO" << endl;

    test.setLogLevel(INFO_LOG_LEVEL);

    LOG4CPLUS_FATAL(root, "test: " <<  llm.toString(test.getChainedLogLevel()));

    LOG4CPLUS_FATAL(root, "test_bak:  "  << llm.toString(test_bak.getChainedLogLevel()));

 

    return 0;

}

输出结果：

Before Setting, Default LogLevel

FATAL - root: DEBUG

FATAL - test: DEBUG

FATAL - test.subtest: DEBUG

 

Setting test.subtest to WARN

FATAL - root: DEBUG

FATAL - test: DEBUG

FATAL - test.subtest: WARN

 

Setting test to TRACE

FATAL - root: DEBUG

FATAL - test: TRACE

FATAL - test.subtest: WARN

 

Setting test.subtest to NO_LEVEL

FATAL - root: DEBUG

FATAL - test: TRACE

FATAL - test.subtest: TRACE

 

create a logger test_bak, named "test_", too.

Setting test to INFO, so test_bak also be set to INFO

FATAL - test: INFO

FATAL - test_bak: INFO

7.1.4.   例8-运行时利用日志级别进行输出过滤
#include "log4cplus/logger.h"

#include "log4cplus/consoleappender.h"

#include "log4cplus/loglevel.h"

#include <iostream>

using namespace std;

using namespace log4cplus;

 

void ShowMsg(void)

{

    LOG4CPLUS_TRACE(Logger::getRoot(),"info");

    LOG4CPLUS_DEBUG(Logger::getRoot(),"info");

    LOG4CPLUS_INFO(Logger::getRoot(),"info");

    LOG4CPLUS_WARN(Logger::getRoot(),"info");

    LOG4CPLUS_ERROR(Logger::getRoot(),"info");

    LOG4CPLUS_FATAL(Logger::getRoot(),"info");

}

 

int main()

{

    SharedAppenderPtr _append(new ConsoleAppender());

    _append->setName("test");

    _append->setLayout(std::auto_ptr(new TTCCLayout()));

    Logger root = Logger::getRoot();

    root.addAppender(_append);

 

    cout << endl << "all-log  allowed"  << endl;

    root.setLogLevel(ALL_LOG_LEVEL);

    ShowMsg();

 

    cout << endl << "trace-log  and above allowed" << endl;

    root.setLogLevel(TRACE_LOG_LEVEL);

    ShowMsg();

 

    cout << endl << "debug-log  and above allowed" << endl;

    root.setLogLevel(DEBUG_LOG_LEVEL);

    ShowMsg();

 

    cout << endl << "info-log and  above allowed" << endl;

    root.setLogLevel(INFO_LOG_LEVEL);

    ShowMsg();

 

    cout << endl << "warn-log and  above allowed" << endl;

    root.setLogLevel(WARN_LOG_LEVEL);

    ShowMsg();

 

    cout << endl << "error-log  and above allowed" << endl;

    root.setLogLevel(ERROR_LOG_LEVEL);

    ShowMsg();

 

    cout << endl << "fatal-log  and above allowed" << endl;

    root.setLogLevel(FATAL_LOG_LEVEL);

    ShowMsg();

 

    cout << endl << "log  disabled" << endl;

    root.setLogLevel(OFF_LOG_LEVEL);

    ShowMsg();

 

    return 0;

}

输出结果：

all-log allowed

10-17-04  10:11:40,587 [1075298944] TRACE root <> - info

10-17-04  10:11:40,590 [1075298944] DEBUG root <> - info

10-17-04  10:11:40,591 [1075298944] INFO root <> - info

10-17-04  10:11:40,591 [1075298944] WARN root <> - info

10-17-04  10:11:40,592 [1075298944] ERROR root <> - info

10-17-04  10:11:40,592 [1075298944] FATAL root <> - info

 

trace-log and  above allowed

10-17-04  10:11:40,593 [1075298944] TRACE root <> - info

10-17-04  10:11:40,593 [1075298944] DEBUG root <> - info

10-17-04  10:11:40,594 [1075298944] INFO root <> - info

10-17-04  10:11:40,594 [1075298944] WARN root <> - info

10-17-04 10:11:40,594  [1075298944] ERROR root <> - info

10-17-04  10:11:40,594 [1075298944] FATAL root <> - info

 

debug-log and  above allowed

10-17-04  10:11:40,595 [1075298944] DEBUG root <> - info

10-17-04  10:11:40,595 [1075298944] INFO root <> - info

10-17-04 10:11:40,596  [1075298944] WARN root <> - info

10-17-04  10:11:40,596 [1075298944] ERROR root <> - info

10-17-04  10:11:40,596 [1075298944] FATAL root <> - info

 

info-log and above  allowed

10-17-04  10:11:40,597 [1075298944] INFO root <> - info

10-17-04  10:11:40,597 [1075298944] WARN root <> - info

10-17-04  10:11:40,597 [1075298944] ERROR root <> - info

10-17-04  10:11:40,598 [1075298944] FATAL root <> - info

 

warn-log and above  allowed

10-17-04  10:11:40,598 [1075298944] WARN root <> - info

10-17-04  10:11:40,598 [1075298944] ERROR root <> - info

10-17-04  10:11:40,599 [1075298944] FATAL root <> - info

 

error-log and  above allowed

10-17-04  10:11:40,599 [1075298944] ERROR root <> - info

10-17-04  10:11:40,600 [1075298944] FATAL root <> - info

 

fatal-log and  above allowed

10-17-04  10:11:40,600 [1075298944] FATAL root <> - info

 

log disabled

7.2.          利用脚本配置进行输出过滤
    由于log4cplus脚本配置中可以设置日志的级别、过滤器Filter，因此它也是进行输出过滤的一种很好的选择。脚本配置的使用具体参见第8节。

7.3.          LogLog的输出过滤
Loglog可以使用setInternalDebugging()方法用来控制是否屏蔽输出信息中的调试信息，当输入参数为false则屏蔽，缺省设置为false。 另外方法setQuietMode()方法用来控制是否屏蔽所有输出信息，当输入参数为true则屏蔽，缺省设置为false。具体用法请参见4.2.5小节。

8.  脚本配置
除了通过程序实现对log环境的配置之外，log4cplus通过PropertyConfigurator类实现了基于脚本配置的功能。通过脚本可以完成对logger、appender和layout的配置，因此可以解决怎样输出，输出到哪里的问题。

下面将简单介绍一下脚本的语法规则，包括基本配置语法和高级配置语法。

8.1.          基本配置
基本配置语法主要针对包括rootLogger和non-root logger。

8.1.1.   根Logger的配置
语法：log4cplus.rootLogger=[LogLevel], appenderName, appenderName, ...

8.1.2.   非根Logger的配置
语法：log4cplus.logger.logger_name=[LogLevel|INHERITED], appenderName, appenderName, ...

说明：INHERITED表示继承父Logger的日志级别。

8.2.          高级配置
8.2.1.   Appender配置
语法：

log4cplus.appender.appenderName=fully.qualified.name.of.appender.class

fully.qualified.name.of.appeneder.class可用值：

log4cplus::ConsoleAppender

终端输出

log4cplus::FileAppender

一般文件输出

log4cplus::RollingFileAppender

日志大小输出

log4cplus::DailyRollingFileAppender

日期输出

log4cplus::SocketAppender

网络端口输出

文件通用选项：

选项

作用

ImmediateFlush

是否立即刷新（默认为true）

log4cplus.appender.ALL_MSGS.ImmediateFlush=true

File

使用的文件名

log4cplus.appender.ALL_MSGS.File=all_msgs.log

Append

是否追加到之前的文件

log4cplus.appender.ALL_MSGS.Append=true

ReopenDelay

先将日志缓存起来，等指定时间之后再往文件中插入

减少文件的保存次数

log4cplus.appender.ALL_MSGS.ReopenDelay=10【单位为秒】

UseLockFile

是否使用加锁的方式去写文件，默认是false

log4cplus.appender.ALL_MSGS.UseLockFile=true

LockFile

使用的加锁文件名

log4cplus.appender.ALL_MSGS.LockFile=fuck_are_you.lock[文件名没有具体要求]

Locale

使用的字符集

log4cplus.appender.ALL_MSGS.Locale=chs【en，其他参数具体见imbue参数】

Threshold

指定日志消息的输出最低层次

log4cplus.appender.ALL_MSGS.Threshold=DEBUG

DailyRollingFileAppender相关配置：

选项

作用

Schedule

文件保存频率 可选值：MONTHLY,  WEEKLY, DAILY,

TWICE_DAILY, HOURLY, MINUTELY

log4cplus.appender.ALL_MSGS.Schedule=MINUTELY

MaxBackupIndex

最多文件个数

log4cplus.appender.ALL_MSGS.  MaxBackupIndex=10

DatePattern

指定文件名的日期格式

1)'.'yyyy-MM: 每月

2)'.'yyyy-ww: 每周 

3)'.'yyyy-MM-dd: 每天 

4)'.'yyyy-MM-dd-a: 每天两次

5)'.'yyyy-MM-dd-HH: 每小时

6)'.'yyyy-MM-dd-HH-mm: 每分钟

log4cplus.appender.ALL_MSGS.DatePattern='.'yyyy-ww

RollingFileAppender相关配置：

选项

作用

MaxFileSize

最大文件大小，当小于200kb的时候，默认为200kb，单位有（MB、KB）

log4cplus.appender.ALL_MSGS.  MaxFileSize=10

MaxBackupIndex

最多文件个数

log4cplus.appender.ALL_MSGS.  MaxBackupIndex=10

 

8.2.2.   Filter配置
Appender可以附加Filter组成的链表，如果Filter链中存在过滤器Filter， log4cplus在输出日志之前将调用链表中Filter的过滤方法decide(),根据该方法的返回值决定是否过滤该输出日志。

语法：

log4cplus.appender.appenderName.Filters.FilterNumber=fully.qualified.name.of.Filter.class

log4cplus.appender.appenderName.Filters.FilterNumber.FilterCondition=value.of.FilterCondition

log4cplus.appender.appenderName.Filters.AcceptOnMatch=true|false

举例：

log4cplus.appender.append_1.filters.1=log4cplus::spi::LogLevelMatchFilter

log4cplus.appender.append_1.filters.1.LogLevelToMatch=TRACE

log4cplus.appender.append_1.filters.1.AcceptOnMatch=true

 

目前log4plus提供的过滤器包括DenyAllFilter 、LogLevelMatchFilter、LogLevelRangeFilter、和StringMatchFilter。

l  LogLevelMatchFilter根据特定的日志级别进行过滤。

过滤条件包括LogLevelToMatch和AcceptOnMatch（true|false）， 只有当日志的LogLevel值与LogLevelToMatch相同，且AcceptOnMatch为true时才会匹配。

l  LogLevelRangeFilter根据根据日志级别的范围进行过滤。

过滤条件包括LogLevelMin、LogLevelMax和AcceptOnMatch，只有当日志的LogLevel在LogLevelMin、LogLevelMax之间同时AcceptOnMatch为true时才会匹配。

l  StringMatchFilter根据日志内容是否包含特定字符串进行过滤。

过滤条件包括StringToMatch和AcceptOnMatch，只有当日志包含StringToMatch字符串 且AcceptOnMatch为true时会匹配。

l  DenyAllFilter则过滤掉所有消息。

 

过滤条件处理机制类似于Linux中IPTABLE的Responsibility chain机制，（即先deny、再allow）不过执行顺序刚好相反，后写的条件会被先执行，比如：

log4cplus.appender.append_1.filters.1=log4cplus::spi::LogLevelMatchFilter

log4cplus.appender.append_1.filters.1.LogLevelToMatch=TRACE

log4cplus.appender.append_1.filters.1.AcceptOnMatch=true

#log4cplus.appender.append_1.filters.2=log4cplus::spi::DenyAllFilter

会首先执行filters.2的过滤条件，关闭所有过滤器，然后执行filters.1，仅匹配TRACE信息。

8.2.3.   Layout配置
可以选择不设置、TTCCLayout、或PatternLayout，如果不设置，会输出SimpleLayout格式的日志。

设置TTCCLayout的语法：log4cplus.appender.ALL_MSGS.layout=log4cplus::TTCCLayout

设置PatternLayout的语法：log4cplus.appender.append_1.layout=log4cplus::PatternLayout

举例：

log4cplus.appender.append_1.layout.ConversionPattern=%d{%m/%d/%y %H:%M:%S,%Q} [%t] %-5p - %m%n

8.2.4.   例9-脚本配置
脚本方式使用起来非常简单，只要首先加载配置即可（urconfig.properties是自行定义的配置文件）：PropertyConfigurator::doConfigure("urconfig.properties");

下面我们通过例子体会一下log4cplus强大的基于脚本过滤log信息的功能。以下是urconfig.properties示例脚本配置内容。

log4cplus.rootLogger=TRACE,  ALL_MSGS, TRACE_MSGS, DEBUG_INFO_MSGS, FATAL_MSGS

log4cplus.appender.ALL_MSGS=log4cplus::RollingFileAppender

log4cplus.appender.ALL_MSGS.File=all_msgs.log

log4cplus.appender.ALL_MSGS.layout=log4cplus::TTCCLayout

 

log4cplus.appender.TRACE_MSGS=log4cplus::RollingFileAppender

log4cplus.appender.TRACE_MSGS.File=trace_msgs.log

log4cplus.appender.TRACE_MSGS.layout=log4cplus::TTCCLayout

log4cplus.appender.TRACE_MSGS.filters.1=log4cplus::spi::LogLevelMatchFilter

log4cplus.appender.TRACE_MSGS.filters.1.LogLevelToMatch=TRACE

log4cplus.appender.TRACE_MSGS.filters.1.AcceptOnMatch=true

log4cplus.appender.TRACE_MSGS.filters.2=log4cplus::spi::DenyAllFilter

 

log4cplus.appender.DEBUG_INFO_MSGS=log4cplus::RollingFileAppender

log4cplus.appender.DEBUG_INFO_MSGS.File=debug_info_msgs.log

log4cplus.appender.DEBUG_INFO_MSGS.layout=log4cplus::TTCCLayout

log4cplus.appender.DEBUG_INFO_MSGS.filters.1=log4cplus::spi::LogLevelRangeFilter

log4cplus.appender.DEBUG_INFO_MSGS.filters.1.LogLevelMin=DEBUG

log4cplus.appender.DEBUG_INFO_MSGS.filters.1.LogLevelMax=INFO

log4cplus.appender.DEBUG_INFO_MSGS.filters.1.AcceptOnMatch=true

log4cplus.appender.DEBUG_INFO_MSGS.filters.2=log4cplus::spi::DenyAllFilter

 

log4cplus.appender.FATAL_MSGS=log4cplus::RollingFileAppender

log4cplus.appender.FATAL_MSGS.File=fatal_msgs.log

log4cplus.appender.FATAL_MSGS.layout=log4cplus::TTCCLayout

log4cplus.appender.FATAL_MSGS.filters.1=log4cplus::spi::StringMatchFilter

log4cplus.appender.FATAL_MSGS.filters.1.StringToMatch=FATAL

log4cplus.appender.FATAL_MSGS.filters.1.AcceptOnMatch=true

log4cplus.appender.FATAL_MSGS.filters.2=log4cplus::spi::DenyAllFilter

以下是示例代码。

#include <log4cplus/logger.h>

#include <log4cplus/configurator.h>

#include <log4cplus/helpers/stringhelper.h>

#include <log4cplus/loggingmacros.h>

#include <iostream>

#include <string>

 

using namespace std;

using namespace log4cplus;

using namespace log4cplus::helpers;

using namespace log4cplus::thread;

 

static Logger logger = Logger::getInstance(LOG4CPLUS_TEXT("log"));

void printDebug()

{

    LOG4CPLUS_TRACE_METHOD(logger, LOG4CPLUS_TEXT("::printDebug()"));

    LOG4CPLUS_DEBUG(logger, "This is a DEBUG message");

    LOG4CPLUS_INFO(logger, "This is a INFO message");

    LOG4CPLUS_WARN(logger, "This is a WARN message");

    LOG4CPLUS_ERROR(logger, "This is a ERROR message");

    LOG4CPLUS_FATAL(logger, "This is a FATAL message");

}

 

int main()

{

    Logger root = Logger::getRoot();

    PropertyConfigurator::doConfigure(LOG4CPLUS_TEXT("urconfig.properties"));

    printDebug();

 

    return 0;

}

输出结果：

1. all_msgs.log

10-17-04  14:55:25,858 [1075298944] TRACE log <> - ENTER: ::printDebug()

10-17-04  14:55:25,871 [1075298944] DEBUG log <> - This is a DEBUG message

10-17-04  14:55:25,873 [1075298944] INFO log <> - This is a INFO message

10-17-04  14:55:25,873 [1075298944] WARN log <> - This is a WARN message

10-17-04 14:55:25,874  [1075298944] ERROR log <> - This is a ERROR message

10-17-04  14:55:25,874 [1075298944] FATAL log <> - This is a FATAL message

10-17-04  14:55:25,875 [1075298944] TRACE log <> - EXIT:::printDebug()

 

2. trace_msgs.log

10-17-04  14:55:25,858 [1075298944] TRACE log <> - ENTER: ::printDebug()

10-17-04  14:55:25,875 [1075298944] TRACE log <> - EXIT:::printDebug()

 

3.  debug_info_msgs.log

10-17-04  14:55:25,871 [1075298944] DEBUG log <> - This is a DEBUG message

10-17-04  14:55:25,873 [1075298944] INFO log <> - This is a INFO message

 

4. fatal_msgs.log

10-17-04  14:55:25,874 [1075298944] FATAL log <> - This is a FATAL message

8.3.          脚本配置的动态加载
多线程版本的log4cplus提供了实用类ConfigureAndWatchThread，该类启动线程对配置脚本进行监控，一旦发现配置脚本被更新则立刻重新加载配置。

类ConfigureAndWatchThread的构造函数定义为：

ConfigureAndWatchThread(const log4cplus::tstring& propertyFile,

                        unsigned int millis = 60 * 1000);

第一个参数propertyFile为配置脚本的路径名，第二个参数为监控时两次更新检查相隔的时间，单位为耗秒ms。

8.3.1.   例10-使用线程监控脚本的更新
#include <log4cplus/logger.h>

#include <log4cplus/configurator.h>

#include <log4cplus/helpers/loglog.h>

#include <log4cplus/helpers/stringhelper.h>

using namespace std;

using namespace log4cplus;

using namespace log4cplus::helpers;

 

Logger log_1  =  Logger::getInstance("test.log_1");

Logger log_2  =  Logger::getInstance("test.log_2");

Logger log_3  =  Logger::getInstance("test.log_3");

 

void printMsgs(Logger& logger)

{

    LOG4CPLUS_TRACE_METHOD(logger, "printMsgs()");

    LOG4CPLUS_DEBUG(logger, "printMsgs()");

    LOG4CPLUS_INFO(logger, "printMsgs()");

    LOG4CPLUS_WARN(logger, "printMsgs()");

    LOG4CPLUS_ERROR(logger, "printMsgs()");

}

 

int main()

{

    cout << "Entering main()..." << endl;

     LogLog::getLogLog()->setInternalDebugging(true);

    Logger root = Logger::getRoot();

    try {

        ConfigureAndWatchThread configureThread("log4cplus.properties", 5 * 1000);

        LOG4CPLUS_WARN(root, "Testing....");

        for(int i=0; i<100; ++i) {

            printMsgs(log_1);

            printMsgs(log_2);

            printMsgs(log_3);

            log4cplus::helpers::sleep(1);

        }

    } catch(...) {

        cout << "Exception..." << endl;

        LOG4CPLUS_FATAL(root, "Exception  occured...")

    }

    cout << "Exiting main()..." << endl;

    return 0;

}

以下是配置脚本log4cplus.properties的内容。

log4cplus.rootLogger=INFO,  STDOUT, R

log4cplus.logger.test=WARN

log4cplus.logger.test.log_1=FATAL

log4cplus.logger.test.log_2=FATAL

log4cplus.logger.test.log_3=WARN

 

log4cplus.appender.STDOUT=log4cplus::ConsoleAppender

log4cplus.appender.STDOUT.layout=log4cplus::PatternLayout

log4cplus.appender.STDOUT.layout.ConversionPattern=%d{%m/%d/%y  %H:%M:%S} [%t] %-5p %c{2} %%%x%% - %m [%l]%n

 

log4cplus.appender.R=log4cplus::RollingFileAppender

log4cplus.appender.R.File=output.log

#log4cplus.appender.R.MaxFileSize=5MB

log4cplus.appender.R.MaxFileSize=500KB

log4cplus.appender.R.MaxBackupIndex=5

log4cplus.appender.R.layout=log4cplus::TTCCLayout

9.  定制Log4cplus
9.1.          定制日志级别
log4cplus支持日志级别的定制。如果需要定义自己的优先级，则可以按以下步骤进行定制。

l  定义新日志级别对应的常量整数和输出宏。

/*

* customloglevel.h

*/

#include <log4cplus/logger.h>

#include <log4cplus/helpers/loglog.h>

 

using namespace log4cplus;

using namespace log4cplus::helpers;

 

const LogLevel CRITICAL_LOG_LEVEL =  45000;

 

#define LOG4CPLUS_CRITICAL(logger, logEvent)  \

    if(logger.isEnabledFor(CRITICAL_LOG_LEVEL)) { \

    log4cplus::tostringstream _log4cplus_buf;  \

    _log4cplus_buf << logEvent; \

    logger.forcedLog(CRITICAL_LOG_LEVEL,  _log4cplus_buf.str(), __FILE__, __LINE__); \

    }

l  定义新日志级别对应的字符串、常量整数与字符串之间的转换函数，定义自己的初始化器将转换函数注册到LogLevelManage。

#include "customloglevel.h"

#define _CRITICAL_STRING "CRITICAL"

 

tstring  criticalToStringMethod(LogLevel ll)

{

    if(ll == CRITICAL_LOG_LEVEL) {

        return _CRITICAL_STRING;

    } else {

        return tstring();

    }

}

 

LogLevel  criticalFromStringMethod(const tstring& s)

{

    if(s == _CRITICAL_STRING) return CRITICAL_LOG_LEVEL;

    return NOT_SET_LOG_LEVEL;

}

 

class CriticalLogLevelInitializer {

public:

    CriticalLogLevelInitializer() {

         getLogLevelManager().pushToStringMethod(criticalToStringMethod);

        getLogLevelManager().pushFromStringMethod(criticalFromStringMethod);

    }

};

 

CriticalLogLevelInitializer  criticalLogLevelInitializer_;

l  使用新定义的日志级别

#include "customloglevel.h"

#include <log4cplus/consoleappender.h>

#include <iomanip>

#include <iostream>

using namespace std;

using namespace log4cplus;

 

int main()

{

    SharedAppenderPtr append_1(new ConsoleAppender());

    append_1->setName("First");

    Logger::getRoot().addAppender(append_1);

 

    Logger root = Logger::getRoot();

    LOG4CPLUS_CRITICAL(root, "This is a  new logginglevel");

    return 0;

}

9.2.          定制LogLog
LogLog输出信息中总是包含"log4cplus:"前缀，这是因为LogLog在实现时候在构造函数中进行了硬编码：

LogLog::LogLog()

    : mutex(LOG4CPLUS_MUTEX_CREATE),

    debugEnabled(false),

    quietMode(false),

    PREFIX( LOG4CPLUS_TEXT("log4cplus:  ") ),

    WARN_PREFIX( LOG4CPLUS_TEXT("log4cplus:WARN  ") ),

    ERR_PREFIX( LOG4CPLUS_TEXT("log4cplus:ERROR  ") )

{

}

  
C++第三方日志库Glog的安装与使用介绍
  
目录
一、glog介绍
二、glog下载
三、环境介绍
三、glog的编译详解
3.1利用CMake进行编译，生成VS解决方案
3.2利用VS对项目进行编译
四、glog的基本使用
4.1创建VS项目
4.2将glog相关文件包含在项目中
4.3编写代码进行测试
4.4测试代码2
五、代码详解
5.1define
5.2include
参考：

一、glog介绍
Google Logging（glog）是一个实现应用程序级日志记录的C++98库。该库提供了基于C++风格流和各种辅助宏的日志API。


二、glog下载
Glog的地址已经从https://code.google.com/p/google-glog/ 变为了https://github.com/google/glog，请从该链接地址下载最新版。

官方文档：http://google-glog.googlecode.com/svn/trunk/doc/glog.html。


三、环境介绍
本文配置所采用的环境为Visual Studio2017。


三、glog的编译详解

3.1 利用CMake进行编译，生成VS解决方案
首先需要下载并安装CMake，下载方法参考文章：Windows下CMake的下载与安装详解。

然后需要从github上下载glog的源码。我们这里将源码下载到文件夹E:\3PartyLibrary下。
然后在glog-master文件夹内新建一个build文件夹，用于存放编译完成的文件。
【注意】：如果建在该文件夹外部，会引发错误！！！



然后使用cmake-gui生成VS解决方案。如下图所示。



这里选择你使用的编译器（我这里使用的是Visual Studio2017），然后在下方输入x64：



点击Finish完成。稍等几分钟CMake进行配置，配置完毕后如下图所示：



这时需要进行如下设置：



①是BUILD_SHARED_LIBS，这个选项我们要勾上，因为我们需要动态库。
②是CMAKE_INSTALL_PREFIX，这个路径是install后生成的头文件和库文件存放的路径，这里我们在源码同级目录下创建一个文件夹，命名为install。

③和④分别是WITH_GFLAGS和WITH_UNWIND，这两个我也不是很清楚是做什么的，但是如果把这两个勾上的话，在cmake的过程中就会报warning，因此都不勾。

之后分别点击Configure和Generate，生成完成后没有红色选项。




3.2 利用VS对项目进行编译
上述步骤生成完毕后，会在build目录下会生成sln解决方案，使用Visual Studio打开glog.sln解决方案，打开后目录如下：



选择Release模式，分别对ALL_BUILD和INSTALL两个项目进行生成，如下图所示。（如果项目在debug模式下开发，就在debug模式下生成glog的DLL文件；如果项目在release模式下开发，就在release模式下生成glog的DLL文件；我这里选择的是Release模式）



生成过程应该不会有错误。



生成成功后就在install目录下生成头文件和库文件。如下图所示。



ok！以上便是glog编译的全部内容了，接下来的小节介绍一下glog的基本使用。


四、glog的基本使用

4.1 创建VS项目
新建一个Visual Studio项目，Release生成。

这里，为了代码目录结构清晰，将上面生成的头文件放在了include文件夹中，将上面生成的.lib文件放在了lib文件夹中，将上面生成的.dll文件放在工程所在文件夹中，如下图所示。






4.2 将glog相关文件包含在项目中
在使用vs新建项目后，需要将我们上面生成的头文件包含在项目的Include Directories中，将上面生成的库文件包含在项目的Library Directories中。如下图所示。



【注意】：一定要选择x64和Release！！！




4.3 编写代码进行测试
最简单的测试代码如下：

#ifndef GLOG_NO_ABBREVIATED_SEVERITIES
#define GLOG_NO_ABBREVIATED_SEVERITIES // 如果不加这个宏定义代码就会报错
#endif
#include <glog/logging.h>
 
#pragma comment(lib, "glog.lib")
 
int main(int argc, char* argv[])
{
    FLAGS_alsologtostderr = true;//是否将日志输出到文件和stderr
    google::InitGoogleLogging("test");//使用glog之前必须先初始化库，仅需执行一次，括号内为程序名
    LOG(INFO) << "Hello,GLOG!";
    google::ShutdownGoogleLogging();//当要结束glog时必须关闭库，否则会内存溢出
 
    return 0;
}
输出为：

I20220220 14:27:55.136509 5080 test.cpp:9] Hello,GLOG!

【注意】：GLog在整个项目周期中只允许生成一个日志文件，也就是说，glog从初始化到注销整个过程，不允许再次调用glog的初始化或者注销，另一种意思可以理解为只允许有一个实例化对象。


4.4 测试代码2
测试代码如下：

#ifndef GLOG_NO_ABBREVIATED_SEVERITIES
#define GLOG_NO_ABBREVIATED_SEVERITIES // 如果不加这个宏定义代码就会报错
#endif
#include <glog\logging.h>
 
#pragma comment(lib, "glog.lib")
int main()
{
    google::InitGoogleLogging("test");//使用glog之前必须先初始化库，仅需执行一次，括号内为程序名
    FLAGS_alsologtostderr = true;//是否将日志输出到文件和stderr
    FLAGS_colorlogtostderr = true;//是否启用不同颜色显示
    google::SetLogDestination(google::GLOG_INFO, "E:\\logs\\INFO_");//INFO级别的日志都存放到logs目录下且前缀为INFO_
    google::SetLogDestination(google::GLOG_WARNING, "E:\\logs\\WARNING_");//WARNING级别的日志都存放到logs目录下且前缀为WARNING_
    google::SetLogDestination(google::GLOG_ERROR, "E:\\logs\\ERROR_");  //ERROR级别的日志都存放到logs目录下且前缀为ERROR_
    google::SetLogDestination(google::GLOG_FATAL, "E:\\logs\\FATAL_");  //FATAL级别的日志都存放到logs目录下且前缀为FATAL_
    LOG(INFO) << "info";
    LOG(WARNING) << "warning";
    LOG(ERROR) << "error";
    /*LOG(FATAL) << "fatal";*/
    google::ShutdownGoogleLogging();//当要结束glog时必须关闭库，否则会内存溢出
    return 0;
}
代码执行后，会在E:\logs文件夹下生成四个log文件，这里我没有将FATAL也打印出来是因为当glog检测到"LOG(FATAL)<<"代码时就会直接结束程序，不继续执行后面的代码。


五、代码详解

5.1 define
除了上述在前三行加入代码外，也可以选择添加预处理项。项目属性 ——> c/c++ ——> 预处理器。 添加GLOG_NO_ABBREVIATED_SEVERITIES。




5.2 include
在需要使用glog打印日志的cpp文件中包含头文件，及加载glog库文件。注意：每个使用glog的cpp文件都要添加，代码如下：

1
2
#include "glog/logging.h"
#pragma comment(lib,"libglog.lib")
5.3 InitGoogleLogging

用glog之前必须先初始化库，要生成日志文件只需在开始log之前调用一次：

1
google::InitGoogleLogging(argv[0]);  //括号内是程序名
5.4 ShutdownGoogleLogging

当要结束glog时必须关闭库，否则会内存溢出：

1
google::ShutdownGoogleLogging();

  

  目录
1.错误类型
2.输出日志
3.条件输出
4.常用函数
5.常用参数（Flags）
6.日志类型
上文（C++第三方日志库Glog的安装与使用超详解（精选））介绍了glog的安装、配置与基本使用案例，本文将详细介绍一下glog的基本语法，结合上文一起食用效果更佳哦~


1.错误类型
glog有四个错误级别，枚举如下：

enum SeverityLevel
{
　　google::INFO = 0,
　　google::WARNING = 1,
　　google::ERROR = 2,
　　google::FATAL = 3,
};

2.输出日志
LOG(INFO) << "info test";  //输出一个Info日志
LOG(WARNING) << "warning test";  //输出一个Warning日志
LOG(ERROR) << "error test";  //输出一个Error日志
LOG(FATAL) << "fatal test";  //输出一个Fatal日志，这是最严重的日志并且输出之后会中止程序

3.条件输出
LOG_IF(INFO, num_cookies > 10) << "Got lots of cookies";  //当条件满足时输出日志
 
LOG_EVERY_N(INFO, 10) << "Got the " << google::COUNTER << "th cookie";  //google::COUNTER 记录该语句被执行次数，从1开始，在第一次运行输出日志之后，每隔 10 次再输出一次日志信息
LOG_IF_EVERY_N(INFO, (size > 1024), 10) << "Got the " << google::COUNTER << "th big cookie";  //上述两者的结合，不过要注意，是先每隔 10 次去判断条件是否满足，如果滞则输出日志；而不是当满足某条件的情况下，每隔 10 次输出一次日志信息
LOG_FIRST_N(INFO, 20) << "Got the " << google::COUNTER << "th cookie";  //当此语句执行的前 20 次都输出日志，然后不再输出

4.常用函数
1
2
3
4
google::SetLogDestination(google::GLOG_INFO, "log/prefix_");  //设置特定严重级别的日志的输出目录和前缀。第一个参数为日志级别，第二个参数表示输出目录及日志文件名前缀
 
google::SetLogFilenameExtension("logExtension");  //在日志文件名中级别后添加一个扩展名。适用于所有严重级别
google::SetStderrLogging(google::GLOG_INFO);  //大于指定级别的日志都输出到标准输出

5.常用参数（Flags）
FLAGS_logtostderr = true;  //设置日志消息是否转到标准输出而不是日志文件
 
FLAGS_alsologtostderr = true;  //设置日志消息除了日志文件之外是否去标准输出
FLAGS_colorlogtostderr = true;  //设置记录到标准输出的颜色消息（如果终端支持）
FLAGS_log_prefix = true;  //设置日志前缀是否应该添加到每行输出
FLAGS_logbufsecs = 0;  //设置可以缓冲日志的最大秒数，0指实时输出
FLAGS_max_log_size = 10;  //设置最大日志文件大小（以MB为单位）
FLAGS_stop_logging_if_full_disk = true;  //设置是否在磁盘已满时避免日志记录到磁盘

6.日志类型
日志有七个类型，其中最常用的是内置日志，枚举如下：

LOG    //内置日志
VLOG    //自定义日志
DLOG    //DEBUG模式可输出的日志
DVLOG    //DEBUG模式可输出的自定义日志
SYSLOG    //系统日志，同时通过 syslog() 函数写入到 /var/log/message 文件
PLOG    //perror风格日志，设置errno状态并输出到日志中
RAW_LOG        //线程安全的日志，需要#include <glog/raw_logging.h>

  
C++第三方日志库log4cplus的安装与使用配置教程
  
目录
一、log4cplus介绍
二、log4cplus下载
三、log4cplus配置
3.1打开解决方案
3.2进行相应设置
3.3目标程序的配置
四、测试Demo

一、log4cplus介绍
log4cplus是C++编写的开源的日志系统，前身是java编写的log4j系统，受Apache Software License保护，作者是Tad E. Smith。

log4cplus具有线程安全、灵活、以及多粒度控制的特点，通过将日志划分优先级使其可以面向程序调试、运行、测试、和维护等全生命周期。你可以选择将日志输出到屏幕、文件、NT event log、甚至是远程服务器；通过指定策略对日志进行定期备份等等。


二、log4cplus下载
下载链接：https://sourceforge.net/projects/log4cplus/files/log4cplus-stable/2.0.7/

最新稳定版2.0.7（2022.2.21）

官方文档：https://sourceforge.net/p/log4cplus/wiki/Home/


三、log4cplus配置

3.1 打开解决方案
打开Visual Studio，进入 log4cplus-2.x\msvc14目录下，运行log4cplus.sln解决方案。

在这里插入图片描述


3.2 进行相应设置
编译log4cplus需要注意三点：
①解决方案的平台与目标程序一致，这里选择的是x64；
②版本也要与目标程序一致，这里选择的是release版本；
③属性里面的字符集和目标程序一致；

在这里插入图片描述

选择log4cplus项目，右键——>属性——>配置属性——>常规——>字符集，选择Unicode字符集，如下图所示。（log4cplus默认使用多字节字符集，而VS新建项目默认使用Unicode字符集，如果不修改此处，则后面新建项目使用生成的dll时需要手动修改新建的项目为多字节字符集，否则会报错，总之两边统一用一种即可）

在这里插入图片描述

编译完成后，会在log4cplus-2.x\msvc14\x64\bin.Release文件夹下生成我们需要的log4cplus.lib和log4cplus.dll两个文件（我编译的是release版），如下图所示。

在这里插入图片描述


3.3 目标程序的配置
将log4cplus-2.0.x目录下的include文件夹拷贝到我们的目标程序文件夹中，这里面是我们需要的头文件；在目标程序的属性里面设置头文件的包含目录。

设置lib文件的库目录以及将lib文件填入附加依赖项，如下图所示。

在这里插入图片描述

将dll文件放到程序的根目录：如果运行的是VS放置到和*.vcxproj一个文件夹下，如果运行的是*.exe，则和*.exe放置到一个文件夹下。

在这里插入图片描述

右键——>属性——>链接器——>输入——>附加依赖项——>加入log4cplus.lib，如下图所示。

在这里插入图片描述

如果不添加上述附加依赖项，则需要在代码开头中添加如下代码：

1
#pragma comment(lib, "log4cplus.lib")

四、测试Demo
简单测试：

#include <log4cplus/log4cplus.h>
 
//#pragma comment(lib, "log4cplus.lib")
int main()
{
    //初始化
    log4cplus::Initializer initializer;
    log4cplus::BasicConfigurator config;
    config.configure();
    log4cplus::Logger logger = log4cplus::Logger::getInstance(
        LOG4CPLUS_TEXT("main"));
    LOG4CPLUS_WARN(logger, LOG4CPLUS_TEXT("Hello, World!"));
    return 0;
}

