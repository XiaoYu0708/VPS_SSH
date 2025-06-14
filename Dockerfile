FROM ubuntu:22.04

# 安裝 OpenSSH 與其他依賴
RUN apt-get update && \
    apt-get install -y openssh-server && \
    rm -rf /var/lib/apt/lists/*

# 建立必要目錄
RUN mkdir -p /run/sshd && \
    chmod 0755 /run/sshd  # 確保權限正確

# 設定 root 密碼（僅供測試）
RUN echo 'root:root' | chpasswd

# 允許 root 登入
RUN sed -i 's/^#PermitRootLogin.*/PermitRootLogin yes/' /etc/ssh/sshd_config

# 暴露 SSH 端口
EXPOSE 22

# 啟動 SSH 服務
CMD ["/usr/sbin/sshd", "-D"]
