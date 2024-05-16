# 配置
使用三个frr容器t0, t1, t2。拓扑如下：
```
+----+
| t0 |
+-++-+
  ||     eth01
  || fec0:0000::11
  ||
  ||     eth10
  || fec0:1000::10
+-++-+
| t1 |
+-++-+
  ||     eth11
  || fec0:1000::11
  ||
  ||     eth20
  || fec0:2000::10
+-++-+
| t2 |
+----+
```

# 启动！
```bash
./test.sh run
```

# 测试
```bash
ip netns exec t0 ping -6 fec0:2000::10
```
发现从t0可以ping通t2的eth20口。

# 清理
```bash
./test.sh rm
```