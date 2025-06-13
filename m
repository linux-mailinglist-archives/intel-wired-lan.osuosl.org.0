Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 53AF6AD9656
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jun 2025 22:33:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 7496960F2C;
	Fri, 13 Jun 2025 20:33:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kWJz7BrSqmCy; Fri, 13 Jun 2025 20:33:36 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C2BE060BF1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749846816;
	bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=AMRG2rxHiMJavoZqPoP9pgihy5hdT89SAkhY17LN3CFNRrema/QxamdB4aYQidsek
	 DYcQyCKDpFoe/jEthAH0zoit/5n62KcA/StzwY43gqDEUWd+bK1FbX6PhJKOZ/xDiY
	 Lvb5Bzc/XcGWUbvBjsnZaH9yC5oeh0/qlP94a789CAOAc3dAYKzMIHG5o5HLXJxh4S
	 vljfyI9czCZH74DwjhV6mc1aE6VN5k1fB3TsT0djV/kv+FZcJOr4avwRdhYqLnW88I
	 ZYRTu6X6xqWr2MNd9HA9JilODAqt1Ii+4WdxGB3X4XObDHBWILMOwJFcNNXp3Penjv
	 mbNYRUKGIGeAA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id C2BE060BF1;
	Fri, 13 Jun 2025 20:33:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 26D73183
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:35 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 18F3E405B1
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:35 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id s2jlWhRjLk2j for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jun 2025 20:33:34 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::62e; helo=mail-pl1-x62e.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5B84E40521
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5B84E40521
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com
 [IPv6:2607:f8b0:4864:20::62e])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5B84E40521
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 20:33:34 +0000 (UTC)
Received: by mail-pl1-x62e.google.com with SMTP id
 d9443c01a7336-235e1d4cba0so25009225ad.2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jun 2025 13:33:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749846814; x=1750451614;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
 b=tmkfQCRGKkgfwlvdGkdMxAweeoMhyzQndRR0biojFS3mzOnFBboCZD1FNNkvjlYJCM
 J4nQ8hXW6Lnep1JDI6m/DH5yvFHpiaPd6aFoAQHS19/BguT0WRa7D1QnCx71ezConJ7v
 6Fb4UtsSssZ5AvyEkGflxQ2YZOI++s1IMgmosb9HQT2jPZZJNOy9omwpJrCuvlZKMeG3
 Pq4DdlQ44RHEaXow1fVhpEwhlRjgqEmuAqnf2JvFcaCUYMIxXcEELUjxSIG+0YJ32b6G
 WfQA+xDuOjWvlOo4GSDMUqfnNYblTWyTm/SD3s3VjReTBtiA8oFJSk0sSLwiuCl6zJOW
 vPBQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCVIOhwE5w0dWaIGKPaQKERY8j3bS3+sZfXB/HY8gKDkDrLDMgBrGVMkk9qklMr14SQb6pOP40i686Rxofa4YJ4=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yz23B94AFQ6J1IqkR4jvlQSvPVvIdOnf9l+BQji3ysRIFiZWIRi
 LslXtxPAGA4gspEaAdyZu/mLJoaBbCCdZ/uz2vm8nfxCQ1muZoN7HiU=
X-Gm-Gg: ASbGncv4f03Sknk1/h7d8XWHUmckfupKZltXl03Oe8DSwuOOCOgvsoZaEiolerz21w5
 YeOc/5hRq5WDK+FbLJyS9H5fuughfbwcYJlZR1DK5G43y/MCjM56lasdFFDEmm+pm0jfcNchgPg
 fW9xaYVPVa7JlJ8w6Of9yiXrWKce0kVXB4HlyRWnsT3g2C3VirkRBw1t16Y/G+Vu7C69wHAkeW6
 br/yjMuBJzlwDrKpLrbWOdjrJUccgEyeplrMZYMPdiH2g13sasF4hPhJ50wu/JCMyZBP8HVwkZa
 jb+YAaHsFc45WJcqzmUQBIhx3twQJREElJtWhiFhbOgq0tm4W3l4DcIxXe9iMlgOniUff/MmJSf
 rMBQ02LnBq0jCEQrj/nXmuSQ=
X-Google-Smtp-Source: AGHT+IH5KSH74XNPTSPHdCujlQcvG0U2V8ijxMyrMSSqm8nH1nuhDyFXVZRKnCpTPZUKyX4y5fvPiA==
X-Received: by 2002:a17:902:f690:b0:22d:b243:2fee with SMTP id
 d9443c01a7336-2366b005d10mr10990035ad.13.1749846813619; 
 Fri, 13 Jun 2025 13:33:33 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-2365de781b1sm18939625ad.89.2025.06.13.13.33.32
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 13 Jun 2025 13:33:33 -0700 (PDT)
From: Stanislav Fomichev <stfomichev@gmail.com>
To: netdev@vger.kernel.org
Cc: davem@davemloft.net, edumazet@google.com, kuba@kernel.org,
 pabeni@redhat.com, skalluru@marvell.com, manishc@marvell.com,
 andrew+netdev@lunn.ch, michael.chan@broadcom.com,
 pavan.chebbi@broadcom.com, ajit.khaparde@broadcom.com,
 sriharsha.basavapatna@broadcom.com, somnath.kotur@broadcom.com,
 anthony.l.nguyen@intel.com, przemyslaw.kitszel@intel.com,
 tariqt@nvidia.com, saeedm@nvidia.com, louis.peens@corigine.com,
 shshaikh@marvell.com, GR-Linux-NIC-Dev@marvell.com, ecree.xilinx@gmail.com,
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, tglx@linutronix.de,
 mingo@kernel.org, ruanjinjie@huawei.com, idosch@nvidia.com,
 razor@blackwall.org, petrm@nvidia.com, kuniyu@google.com, sdf@fomichev.me,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org,
 leon@kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Fri, 13 Jun 2025 13:33:24 -0700
Message-ID: <20250613203325.1127217-6-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250613203325.1127217-1-stfomichev@gmail.com>
References: <20250613203325.1127217-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749846814; x=1750451614; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
 b=BUzBVKaIPBct7bRx2kzO5vjZaFmnjfuEnSu1YsHuE31obzYI5+W1JWUwjAPSj6n/Sn
 HJ5+44C594YwBT08YuqcFXWrY9ciMrcYiyGdaBaat1SxepwQtjG73uY8TjVrbCzVz51p
 KCEqJrMjsKpalD33pbuSlX4OXJgMYK6UYZr8fnY/jxLv5i1xNMfSBG+SfREfZUUuDSlb
 vgYOkmsiVD0Am84+85drsTjcvAHU6MM+p3DVKeTLlzkCbgM/kov7z1vtSsuQxNNRMMF6
 mEtr/KVC8fRceeooUoop+avgLTfdA7OcbCOpEPdSASSAAQwjca5/TWwc+2pMinyM6pym
 PISA==
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=BUzBVKaI
Subject: [Intel-wired-lan] [PATCH net-next v4 5/6] netdevsim: remove
 udp_ports_sleep
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
Precedence: list
List-Id: Intel Wired Ethernet Linux Kernel Driver Development
 <intel-wired-lan.osuosl.org>
List-Unsubscribe: <https://lists.osuosl.org/mailman/options/intel-wired-lan>, 
 <mailto:intel-wired-lan-request@osuosl.org?subject=unsubscribe>
List-Archive: <http://lists.osuosl.org/pipermail/intel-wired-lan/>
List-Post: <mailto:intel-wired-lan@osuosl.org>
List-Help: <mailto:intel-wired-lan-request@osuosl.org?subject=help>
List-Subscribe: <https://lists.osuosl.org/mailman/listinfo/intel-wired-lan>,
 <mailto:intel-wired-lan-request@osuosl.org?subject=subscribe>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now that there is only one path in udp_tunnel, there is no need to
have udp_ports_sleep knob. Remove it and adjust the test.

Cc: Michael Chan <michael.chan@broadcom.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 drivers/net/netdevsim/netdevsim.h             |  2 --
 drivers/net/netdevsim/udp_tunnels.c           |  8 -------
 .../drivers/net/netdevsim/udp_tunnel_nic.sh   | 23 +------------------
 3 files changed, 1 insertion(+), 32 deletions(-)

diff --git a/drivers/net/netdevsim/netdevsim.h b/drivers/net/netdevsim/netdevsim.h
index d04401f0bdf7..511ed72a93ce 100644
--- a/drivers/net/netdevsim/netdevsim.h
+++ b/drivers/net/netdevsim/netdevsim.h
@@ -131,7 +131,6 @@ struct netdevsim {
 	struct nsim_macsec macsec;
 	struct {
 		u32 inject_error;
-		u32 sleep;
 		u32 __ports[2][NSIM_UDP_TUNNEL_N_PORTS];
 		u32 (*ports)[NSIM_UDP_TUNNEL_N_PORTS];
 		struct dentry *ddir;
@@ -342,7 +341,6 @@ struct nsim_dev {
 		bool ipv4_only;
 		bool shared;
 		bool static_iana_vxlan;
-		u32 sleep;
 	} udp_ports;
 	struct nsim_dev_psample *psample;
 	u16 esw_mode;
diff --git a/drivers/net/netdevsim/udp_tunnels.c b/drivers/net/netdevsim/udp_tunnels.c
index 10cbbf1c584b..89fff76e51cf 100644
--- a/drivers/net/netdevsim/udp_tunnels.c
+++ b/drivers/net/netdevsim/udp_tunnels.c
@@ -18,9 +18,6 @@ nsim_udp_tunnel_set_port(struct net_device *dev, unsigned int table,
 	ret = -ns->udp_ports.inject_error;
 	ns->udp_ports.inject_error = 0;
 
-	if (ns->udp_ports.sleep)
-		msleep(ns->udp_ports.sleep);
-
 	if (!ret) {
 		if (ns->udp_ports.ports[table][entry]) {
 			WARN(1, "entry already in use\n");
@@ -47,8 +44,6 @@ nsim_udp_tunnel_unset_port(struct net_device *dev, unsigned int table,
 	ret = -ns->udp_ports.inject_error;
 	ns->udp_ports.inject_error = 0;
 
-	if (ns->udp_ports.sleep)
-		msleep(ns->udp_ports.sleep);
 	if (!ret) {
 		u32 val = be16_to_cpu(ti->port) << 16 | ti->type;
 
@@ -170,7 +165,6 @@ int nsim_udp_tunnels_info_create(struct nsim_dev *nsim_dev,
 		       GFP_KERNEL);
 	if (!info)
 		return -ENOMEM;
-	ns->udp_ports.sleep = nsim_dev->udp_ports.sleep;
 
 	if (nsim_dev->udp_ports.sync_all) {
 		info->set_port = NULL;
@@ -213,6 +207,4 @@ void nsim_udp_tunnels_debugfs_create(struct nsim_dev *nsim_dev)
 			    &nsim_dev->udp_ports.shared);
 	debugfs_create_bool("udp_ports_static_iana_vxlan", 0600, nsim_dev->ddir,
 			    &nsim_dev->udp_ports.static_iana_vxlan);
-	debugfs_create_u32("udp_ports_sleep", 0600, nsim_dev->ddir,
-			   &nsim_dev->udp_ports.sleep);
 }
diff --git a/tools/testing/selftests/drivers/net/netdevsim/udp_tunnel_nic.sh b/tools/testing/selftests/drivers/net/netdevsim/udp_tunnel_nic.sh
index 92c2f0376c08..4c859ecdad94 100755
--- a/tools/testing/selftests/drivers/net/netdevsim/udp_tunnel_nic.sh
+++ b/tools/testing/selftests/drivers/net/netdevsim/udp_tunnel_nic.sh
@@ -266,7 +266,6 @@ for port in 0 1; do
 	echo $NSIM_ID > /sys/bus/netdevsim/new_device
     else
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
 	echo 1 > $NSIM_DEV_SYS/new_port
     fi
     NSIM_NETDEV=`get_netdev_name old_netdevs`
@@ -350,23 +349,11 @@ old_netdevs=$(ls /sys/class/net)
 port=0
 echo $NSIM_ID > /sys/bus/netdevsim/new_device
 echo 0 > $NSIM_DEV_SYS/del_port
-echo 1000 > $NSIM_DEV_DFS/udp_ports_sleep
 echo 0 > $NSIM_DEV_SYS/new_port
 NSIM_NETDEV=`get_netdev_name old_netdevs`
 
 msg="create VxLANs"
-exp0=( 0 0 0 0 ) # sleep is longer than out wait
-new_vxlan vxlan0 10000 $NSIM_NETDEV
-
-modprobe -r vxlan
-modprobe -r udp_tunnel
-
-msg="remove tunnels"
-exp0=( 0 0 0 0 )
-check_tables
-
-msg="create VxLANs"
-exp0=( 0 0 0 0 ) # sleep is longer than out wait
+exp0=( `mke 10000 1` 0 0 0 )
 new_vxlan vxlan0 10000 $NSIM_NETDEV
 
 exp0=( 0 0 0 0 )
@@ -428,7 +415,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -486,7 +472,6 @@ echo 1 > $NSIM_DEV_DFS/udp_ports_sync_all
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -543,7 +528,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -573,7 +557,6 @@ echo 1 > $NSIM_DEV_DFS/udp_ports_ipv4_only
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -634,7 +617,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -690,7 +672,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -750,7 +731,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -809,7 +789,6 @@ echo $NSIM_ID > /sys/bus/netdevsim/new_device
 echo 0 > $NSIM_DEV_SYS/del_port
 
 echo 0 > $NSIM_DEV_DFS/udp_ports_open_only
-echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
 echo 1 > $NSIM_DEV_DFS/udp_ports_shared
 
 old_netdevs=$(ls /sys/class/net)
-- 
2.49.0

