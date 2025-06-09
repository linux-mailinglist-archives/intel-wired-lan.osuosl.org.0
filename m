Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5C8C7AD23CE
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jun 2025 18:25:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 33C4240C2E;
	Mon,  9 Jun 2025 16:25:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mZ7ZuhVMRDrZ; Mon,  9 Jun 2025 16:25:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7726840C49
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749486350;
	bh=a7EpK0zw2/veQxMvxmxEv0B+FifXXBoF9kaDm9Vzf5w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=unhk/7M2URb4qirsu1eVYGW7kDF338faxl5QEbxf+uJsQ0v4ycUnwrbT/JCtErb31
	 A7N1Rqgxd+Hf05Vj5J2SAC4Uh+D4xhpi0cf+/8tfvGKevMFJwnzHw4pkhR/IhVAWxQ
	 WRd8/3weEqDnsBG8Hb5pNZ/l8I8P/X3zCX1fRK6oiLMV65mkNSo4MtHkTX6izU4Xxg
	 JwmLvJyM8Ubv5LmTVmBHCYDOVvT0ZiZkwAtS4ude2vpffslgY8umLficWjob48/9fI
	 vnbPmEYdbFSyOYaCsre1zIFRcFJZDIVbx1sREm6x1m+FnRE8rN9/Ah/MChCK/F2Ja2
	 wIpcwPEFaBVpQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7726840C49;
	Mon,  9 Jun 2025 16:25:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 54683CD
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 3B55640C26
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id aInB_2Yr-1GU for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jun 2025 16:25:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::634; helo=mail-pl1-x634.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8423940958
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8423940958
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com
 [IPv6:2607:f8b0:4864:20::634])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8423940958
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jun 2025 16:25:48 +0000 (UTC)
Received: by mail-pl1-x634.google.com with SMTP id
 d9443c01a7336-231e98e46c0so41712215ad.3
 for <intel-wired-lan@lists.osuosl.org>; Mon, 09 Jun 2025 09:25:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749486348; x=1750091148;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=a7EpK0zw2/veQxMvxmxEv0B+FifXXBoF9kaDm9Vzf5w=;
 b=MCARWIEHZAD0OfjXlvtmvjN4XKnewhrJ6vRbSHBsYkB4dXyO9l8ZIcVG9Pb/V46kyu
 B0lJFEvoFbgFbQ72NN2sBCFPh5lnOtVw0PWaI/TmP7uhmTuYZ0QHaMbbkdFgE9xUwCH/
 f2rEb9yKIRhJSKquVd/wI3K01NLEsSOc1MZ6/Jub/FvG+CY9CDB6mBXlHiK3lqqxewhR
 YnZVmSjkqI9LNhpZvQEuMCKjG23+COgcghYJANShGGQWNX7xZSkLjBO7MIe4l4Ifdgul
 SEh1Kg4ooPhXTXGHwcZhrqhpJT9aUiYs9LmU3eiFoC0RoImFaOYwSH6iF2j2s5n48MBA
 tOzw==
X-Forwarded-Encrypted: i=1;
 AJvYcCX+jDz+qaRlUbRPk7LwfQzg/jGuIAI6Sceg6669D0WAX6m7npzv7nSgf4o3jEQ4d43hCjYo9cyVjfocH51VG8E=@lists.osuosl.org
X-Gm-Message-State: AOJu0YwbmM/X8WJc3fRTzO9+x1UvLs00Dx7W3eqWdnBjpaSa4VUqV+12
 6t8B2ttTNo7iNXU9p4aS3vlw8FekyTx8YtiYrJ2h2L0wr9mPh76EEmM=
X-Gm-Gg: ASbGncuoF44++l54otvCAVnBOaNomXbykHMsd364pVTcZaajmnWRZYPjecL8ugwYpU1
 yqVMvHbMI8dA+qOz4ZchQHw8p5ILodaNkjCcLkgRjnleflEjIr0dudTjvAIfGLVFHl97hY8tbYg
 tZ0/Fzi8z6uq8sn0MASjIC9fvi4FO1Y8iejbO1bpb3X/MeUWdP+Tf/COTbUa5j7SfMNwYQXY1M5
 x5gYz19GKTb6Q82/ulGE90Hx4NodSfDKr1YDDMiGhd+0zI5CvlNrXQYRxo9gnL/yYK97TEp36S+
 +YOo2ADnuD/u67VVYXIlfagw5uo++jahkb8kvVkncrqg3EIhFKAq0CutrnSFHT8lLj2oQJIM65q
 p3zGl3CUGZ4GV
X-Google-Smtp-Source: AGHT+IGapDPv1cHR0dWqimNSNGAmR6AOYZGplgx4b+X7CrIfkEPxGuAl3kbxQrojEm2Tk0pvayZItw==
X-Received: by 2002:a17:902:f688:b0:234:b41e:378f with SMTP id
 d9443c01a7336-23601cfdb18mr199068395ad.15.1749486347764; 
 Mon, 09 Jun 2025 09:25:47 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d9443c01a7336-236032fcfccsm56699935ad.101.2025.06.09.09.25.46
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 09 Jun 2025 09:25:47 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org, mheib@redhat.com,
 ruanjinjie@huawei.com, stfomichev@gmail.com, linux-kernel@vger.kernel.org,
 intel-wired-lan@lists.osuosl.org, linux-rdma@vger.kernel.org,
 oss-drivers@corigine.com, linux-net-drivers@amd.com,
 linux-kselftest@vger.kernel.org, leon@kernel.org
Date: Mon,  9 Jun 2025 09:25:40 -0700
Message-ID: <20250609162541.1230022-4-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250609162541.1230022-1-stfomichev@gmail.com>
References: <20250609162541.1230022-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749486348; x=1750091148; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=a7EpK0zw2/veQxMvxmxEv0B+FifXXBoF9kaDm9Vzf5w=;
 b=bTSvrd15LtIjAGRO16oZe3mSZ6PrscHIUZ8O33l3WQsgyQPBn+oIZ5PiJuRlb6y7ww
 0JTLaJen6/gp8ofm0Jb5Ll9TIyS+sVGRUAQt0v2siCKLhJwSdGkEsYDYELEvOICK8yyc
 TUNM0xyw2csojux9hL+giapPMiOQ9nTA1ceL47XBHaffqmGKQH+zGPd062R0rD/PFXVx
 6i6gUbE5KWfiekGluapQ2KAEmbgcCGeaE9IH25XbAYRDGNBvbRfu7a5L5pOTAe6EiUCo
 qxA0qWMgfFf9Z7YqB3BFymJPk2tMd8KNDMwNfKU/7L8SQVrUa34Jyj5TchFhZufJmMTP
 meTA==
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=bTSvrd15
Subject: [Intel-wired-lan] [PATCH net-next v2 3/4] netdevsim: remove
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
Signed-off-by: Stanislav Fomichev <stfomichev@gmail.com>
---
 drivers/net/netdevsim/netdevsim.h                      |  2 --
 drivers/net/netdevsim/udp_tunnels.c                    |  8 --------
 .../selftests/drivers/net/netdevsim/udp_tunnel_nic.sh  | 10 ----------
 3 files changed, 20 deletions(-)

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
index 92c2f0376c08..8c5fe7bdf1ce 100755
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
@@ -350,7 +349,6 @@ old_netdevs=$(ls /sys/class/net)
 port=0
 echo $NSIM_ID > /sys/bus/netdevsim/new_device
 echo 0 > $NSIM_DEV_SYS/del_port
-echo 1000 > $NSIM_DEV_DFS/udp_ports_sleep
 echo 0 > $NSIM_DEV_SYS/new_port
 NSIM_NETDEV=`get_netdev_name old_netdevs`
 
@@ -428,7 +426,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -486,7 +483,6 @@ echo 1 > $NSIM_DEV_DFS/udp_ports_sync_all
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -543,7 +539,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -573,7 +568,6 @@ echo 1 > $NSIM_DEV_DFS/udp_ports_ipv4_only
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -634,7 +628,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -690,7 +683,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -750,7 +742,6 @@ echo 0 > $NSIM_DEV_SYS/del_port
 for port in 0 1; do
     if [ $port -ne 0 ]; then
 	echo 1 > $NSIM_DEV_DFS/udp_ports_open_only
-	echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
     fi
 
     echo $port > $NSIM_DEV_SYS/new_port
@@ -809,7 +800,6 @@ echo $NSIM_ID > /sys/bus/netdevsim/new_device
 echo 0 > $NSIM_DEV_SYS/del_port
 
 echo 0 > $NSIM_DEV_DFS/udp_ports_open_only
-echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
 echo 1 > $NSIM_DEV_DFS/udp_ports_shared
 
 old_netdevs=$(ls /sys/class/net)
-- 
2.49.0

