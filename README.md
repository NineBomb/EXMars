<h1 align="center">:package:魔改火星表盘 for 小米手环9</h1>
<p align="center">
<img src="https://github.com/NineBomb/EXMars/blob/main/preview/market-preview.png" width=192px>
<img src="https://github.com/NineBomb/EXMars/blob/main/preview/aod-preview.png" width=192px>
</p>

## :ledger: 基于AGPL3.0协议开源
**如果不知道这意味着什么请不要随意使用项目内任何资源**<br>
请严格遵守AGPL3.0协议进行二次开发

## :heart: 超级火星表盘！
超级火星表盘成功移植到小米手环9啦！在小米手环7的时代由于芯片算力等很多因素，超级火星表盘的体验并不良好，即使经过四次魔改也依然差强人意，如今的小米手环9算力更强，在经过精心魔改后超级火星表盘终于令人满意，在拥有高帧率动画的同时，体积也控制的合适，正真满足日用需求！

## :rocket: 表盘特点：
1.优化lua程序内部变量定义规则，简化字符串拼接，删除无关控件，提升整体解析效率，减小开销

2.使用RLE格式图片，极大减小图片体积，相比正常控件表盘大小减小约3MB，解析更加流畅

3.使用底层文字控件代替图片控件，减小控件渲染综合压力，提升渲染速度，提高稳定性

4.使用lua代码重写官方动画控件，提高动画运算效率，减小系统转译开销

5.使用非固定大小图片进一步减小图片大小（虽然只减小了几k）

6.开启二次表盘压缩，进一步减小表盘体积

