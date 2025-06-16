Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 50EA0ADB68F
	for <lists+intel-wired-lan@lfdr.de>; Mon, 16 Jun 2025 18:21:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 60EDA60808;
	Mon, 16 Jun 2025 16:21:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id EcYfB5B0NUoQ; Mon, 16 Jun 2025 16:21:28 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9EA97607EC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1750090888;
	bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=FvY7aJCyDFK7rzs+49OwaClToFgdNLUyZDWgHnq8yyCCzcgYJzcytz2R3DVvmkmFG
	 egQHALJFY8Pwxw/LLOCzpyb8068o0pCtWMXKruVS8HQu5Ji18LwEWlNIks+SQkuXMS
	 LuVqF7MsMZXLK6fxphDpEDOMvvHqy8nQ0RVJuX5roNhMlYscSrUr8m/hnlRODL0qLI
	 3GKJAu5g1Nmu7uHgVFDHBAyWZD+NGJfKgjIweWF0WsaTyntvivXP4we5WMnD3y4b6F
	 aU3pidQ3FWlGC9xMtDWybsMs5Ck2Cs0Lkt0y4RK1MGQQpm7ze52jY4QaEM9J+n+xfg
	 p9xQwp/JQ4SQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9EA97607EC;
	Mon, 16 Jun 2025 16:21:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id CCD3916B
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B37EC408D8
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZOpkb4y5X13v for <intel-wired-lan@lists.osuosl.org>;
 Mon, 16 Jun 2025 16:21:26 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 146C040879
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 146C040879
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 146C040879
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 16:21:25 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-739b3fe7ce8so3612618b3a.0
 for <intel-wired-lan@lists.osuosl.org>; Mon, 16 Jun 2025 09:21:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1750090885; x=1750695685;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
 b=jtDVTPAM6WxgIkFeo43UNaSCPasgKZBMUuphHVw6thCgSkFPpw+zJ8JBgJgFChnu+y
 2wxq8Ei2543I4gnbCfRnuVwMhlseM7bMwmwxlN8Mg4Xn5w/8QgeUavxnWniKLihQAoQu
 Fn3btcH216KGOCHeix2/LQlwU2b1ESS8KY9+Afx/Aw0jZT9660NgMXO17ZJVlyg48go0
 lhD1eCYny28g1llvapFeg75h78V6sa2BlA1mzrid1oWbcFoiAZRdGbBU20VoA9IPDLjx
 2d1dbcqHgsVFuFQ6ywuXV47dO6Hf+TzQBucsdscJIBrcml/ODeuE0VMK5d1v6IxX5nNc
 /jfw==
X-Forwarded-Encrypted: i=1;
 AJvYcCWjZz3BMDhAOopnrX1HVZOltBUsKR+f29HMxil+8ObMEC1yoNFX/DvdcCYAFmqfJOsBb1o8UnA8DCr9GBacnL0=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx9JoySenwEf4ARmmKjUcbLMrH0SFjlZcRRs9WENTxz90loKsmJ
 pB4gVsZ4XyPI0QhMjXzg32TgSBDM0Sz6EbZzamp2Hs5XER1dlVVT5Oo=
X-Gm-Gg: ASbGnct9HV4Pj+U/TnjXijZQxtCKvO0IF3/Z1BcANhILNsdyER4tQ8XKcJ7THscjz1k
 36m/yGc0e4bKcNm+IJol4dUxtx9ql61/x9JLTsMgi3dL1OchnT4iEg+mFEIr0YrDMqrDHO7FbOZ
 XOhy1cS1tn0kTFT7/+y12EN4s9+uVJb4R4F9Q/OwCoZ5POgWyIVM347lMmYdmhZN4IezIIAF/+t
 lYPVI64e8djewXE5vG00lcwCl0cw6tvVsP3bJDIBjhyRoavfT3OkNdaTJf/iSnt//p8V8IKBnEG
 iq48Xb0EflAbjXTtS3VGM4ikgaqS2hCMT6LBzj54zNjVoFn7i+3rfnWj7OoafsEFoqBiecLMQel
 FIIrRjEIVAmbzEetChsZcQhc=
X-Google-Smtp-Source: AGHT+IEOIXk6H1jA9Q65lqOc49Vxlq3eijftqFKHC9WFXfMVrfJD9h7cj/ckYq+gS695PQbgjakP3Q==
X-Received: by 2002:a05:6a00:ad6:b0:740:a85b:7554 with SMTP id
 d2e1a72fcca58-7489cdebe1emr12838444b3a.2.1750090885308; 
 Mon, 16 Jun 2025 09:21:25 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-748900ad2absm7002127b3a.110.2025.06.16.09.21.24
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 16 Jun 2025 09:21:24 -0700 (PDT)
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
Date: Mon, 16 Jun 2025 09:21:16 -0700
Message-ID: <20250616162117.287806-6-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250616162117.287806-1-stfomichev@gmail.com>
References: <20250616162117.287806-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1750090885; x=1750695685; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
 b=ihayvHTSICZffctGoD+Kvh1JsdaKTh3vp9hbIUMQiCVSf+wApRhMir8jAjGlWqK7gy
 VxU0vY9xjMvtlgXd1fusvr6gGzvkmIn8k9QxEBPcqXpMvW1WRB2CgadnhiJPu/6fg6Gb
 GLrbkUz/6pLPfZJG3K+BBEQBlRdik8ff4s22qq7K0BFFRM+npoj91mtWU9reVQemcy+U
 UppgChDy9dRc0WysjZC8BWrMNAYpL6lmWecDAeNSkll2Eqi36VqYVf3fLVtKOs7xFHtb
 f0gHkeWqUhu7uhcTOvGzRsXqXiRr8O6fWO1NGsF8vUdoOnhJ37XAgB8XkFmKQsMXtmym
 T82w==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=ihayvHTS
Subject: [Intel-wired-lan] [PATCH net-next v5 5/6] netdevsim: remove
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

