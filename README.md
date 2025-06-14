# VPS SSH Docker 容器

本儲存庫包含一個用於執行 SSH 伺服器的 Docker 設定。

## 建立 Docker 映像檔

請執行以下指令來建立 Docker 映像檔：

```bash
docker build -t xiaoyu0708/vps_ssh .
```

## 執行 Docker 容器

若要執行容器並將 SSH 伺服器對外開放於 2222 埠，請使用：

```bash
docker run --rm -p 2222:22 xiaoyu0708/vps_ssh
```

## 連線方式

可以使用以下指令連線至 SSH 伺服器：

```bash
ssh root@<IP位址> -p 2222
```

- 使用者名稱：`root`
- 密碼：`root`

## 注意事項

- 如有需要，請將 `xiaoyu0708/vps_ssh` 替換為你想要的映像檔名稱。
- 請確保主機上的 `2222` 埠未被佔用。