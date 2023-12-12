代码都在src文件夹中，算法依赖JPBC库运行，需要安装JDK8及以上的版本和Java的IDE工具。lib文件夹是依赖的库和椭圆曲线参数，需要在IDE工具中导入lib文件夹内的文件。
JPBC官方文档请参考：http://gas.dia.unisa.it/projects/jpbc/download.html
我们主要依赖a.properties内的参数生成群和域。
BPIDS类是实现第一篇论文的算法，
com_Q1_Li类是复现<Blockchain-Based Privacy-Preserving and Rewarding Private Data Sharing for IoT>(2022 IoTJ)这篇论文的算法。
Wang_bigdata类是复现<A Privacy and Efficiency-Oriented Data Sharing Mechanism for IoTs>(2023 trans on big data)论文。
Machine_li类是复现<Machine learning based privacy-preserving fair data trading in big data market> (2019 Information Sciences)论文。
其他类是我做测试使用的小组件。

