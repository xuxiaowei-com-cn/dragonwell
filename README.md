# 阿里巴巴 dragonwell JDK 镜像

## 说明

1. `multiple`：代表多版本，包含 JDK `8`/`11`/`17`/`21`，默认 JDK `21`，***该镜像过大，仅推荐在测试时使用***

   | 环境变量名称             | 环境变量值                 |
   |--------------------|-----------------------|
   | `JAVA8_HOME`       | `/opt/java/openjdk8`  |
   | `JAVA11_HOME`      | `/opt/java/openjdk11` |
   | `JAVA17_HOME`      | `/opt/java/openjdk17` |
   | `JAVA21_HOME`      | `/opt/java/openjdk21` |
   | `JAVA_HOME`        | `/opt/java/openjdk21` |
   | `DRAGONWELL8_URL`  | JDK `8` 下载 URL        |
   | `DRAGONWELL11_URL` | JDK `11` 下载 URL       |
   | `DRAGONWELL17_URL` | JDK `17` 下载 URL       |
   | `DRAGONWELL21_URL` | JDK `21` 下载 URL       |
   | `CI_PIPELINE_URL`  | 流水线 URL               |

2. `anolis`：代表使用龙蜥操作系统，其中 `23` 代表龙蜥 `23`

3. 镜像标签名称后缀 `-xxxxxxxxxx` 是流水线 ID，自增，代表历史标签

4. 下表中未出现的镜像请勿使用，可能仅仅是作者用于测试，可能会被删除

5. 构建流水线：https://gitlab.com/xuxiaowei-com-cn/dragonwell/-/pipelines

6. 同步到国内流水线：https://gitlab.xuxiaowei.com.cn/hub.docker.com/gitlab.com/xuxiaowei-com-cn/dragonwell/-/pipelines

| 分支                     | 镜像                                             | 国内镜像                                                                 |
|------------------------|------------------------------------------------|----------------------------------------------------------------------|
| `multiple/anolisos/23` | `xuxiaoweicomcn/dragonwell:multiple-anolis-23` | `registry.cn-qingdao.aliyuncs.com/xuxiaoweicomcn:multiple-anolis-23` |
