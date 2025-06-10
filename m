Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7BD8AAD4031
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Jun 2025 19:15:37 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 55F4861455;
	Tue, 10 Jun 2025 17:15:33 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sUTYt-41OXOK; Tue, 10 Jun 2025 17:15:32 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8EB136146C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1749575732;
	bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=jZUcK//jkAUgqQSwszaH1ZYvYVUwGl4qLxG5lPL4IcfYQVGcm2UvFF6dsyEMS9rhh
	 HuzIFxa8MKoopQQTXTR52WAEY58ymYtjJOfZOwoZN+14ZIm342mA7BUeJcAeczvJVU
	 Kvq5yaxR/LEgavDQtuZMPTn1lZp/fsAMlhOCtoEOLOPibIxzHUkeqS3XVnCTYY7egT
	 tCHbW+4w0G3AKkN3aO7qpo91fa7wOgIIn49O9udPPApnsek029XvhE+GhWbQzHYD7i
	 69Gb/9JFL7bBcMqczD9VYyZzN4dnowEgMJYca1WjO5XjfKp9GImskOgEZVVg87B8H1
	 HRZwIOwORmocA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8EB136146C;
	Tue, 10 Jun 2025 17:15:32 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 06B3F183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:31 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E1B206130E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:30 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id rvKFfhJ7Z2qb for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Jun 2025 17:15:29 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom;
 client-ip=2607:f8b0:4864:20::431; helo=mail-pf1-x431.google.com;
 envelope-from=stfomichev@gmail.com; receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 2CEE6613C2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 2CEE6613C2
Received: from mail-pf1-x431.google.com (mail-pf1-x431.google.com
 [IPv6:2607:f8b0:4864:20::431])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2CEE6613C2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 17:15:29 +0000 (UTC)
Received: by mail-pf1-x431.google.com with SMTP id
 d2e1a72fcca58-7399a2dc13fso6301717b3a.2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Jun 2025 10:15:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20230601; t=1749575728; x=1750180528;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
 :subject:date:message-id:reply-to;
 bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
 b=BN/2OSubs3r2JRvBM82IXcXBZFAFS3Aio5qd5TRPheCAZKpTXg7v9RtuuYjLKqsgzd
 i2O3eYxM1FmDKxyP6F01bv1MD1sCEI8tyqvEoavT3r2CDzHkN+1m2Xu6ASFbF3trHQbA
 N+yP19WIdUHV9LnKU9ap8BJO7g6lnE9mteclbPq+0NFiiEsjcJ/wQfT9jBtvxCpCHW6w
 X0o4rzcpFs/aAK1QJlrhXTQ2gEjA3HAk4msgd6CjNxNYAd9Rz3DgcMveLmiehI/+6bRd
 AhfTEbpR0ZXjf7cEDMI96g45wUaaW1wsfv/cqmjDohYophhdDfwyKFIEynk6P8FxNlDm
 m4CQ==
X-Forwarded-Encrypted: i=1;
 AJvYcCUFydaUeMIh6kZwY+vH8aLqv2INncWtppb7EOyBdgFJnVvRWLj+klFtnkIfXBREmd+fNGFeo89BUNKJobpztAg=@lists.osuosl.org
X-Gm-Message-State: AOJu0Yx0rwuJW5j/7eoDKNj1aGIYfiKq26tMKTh1aH9WuA12hKuo7QJY
 2rN4r2onfuTKG59Swi6jUDQErmMPGgY0Izv1jKPJnSPB265tIQOp+0M=
X-Gm-Gg: ASbGncu7DO8vgYOCJzi4HzmRzyWjs6Dn/I3kmTmrXeJFdfVSvypxEgk/NR/7PHWX+Qb
 1kARfq8aMG0pceiHviVmEWcP+A1HP3kbKgQMPvGBiNEUiesV9hDjPdws8ot1AViwfPCi8RWbw+o
 VcsEft743NvANYUVWwghmPztgJ4sUUsTRC58+K+ZrGSN/shC37J0eTx6fP+O7oiJ79ntMLEVW52
 HUt0ssCWq//JN00hs1A18Tkuzqzj7jB7Jiz6Hq8PTXGLoklwlRFzNr6lhIDUjZP7IHCiNMrlAaY
 ygK4Ey+KKYNz30CcFBJVMHIl3ZbjiO5BgE64QacJq8EQO1XYjCO+CqVmhW+mrP5IcHrf57GiC6E
 gz9bDCFsE3t8ZwgKdPOe2tz0=
X-Google-Smtp-Source: AGHT+IHQwD6S166ldxXHEAmMKaFIErFHVt3BndZz352NvZiGIWSykeBPCm21SoRRvyVBIk1bASc9ZA==
X-Received: by 2002:a05:6a21:3289:b0:21f:4459:c032 with SMTP id
 adf61e73a8af0-21f86618eccmr614511637.18.1749575728142; 
 Tue, 10 Jun 2025 10:15:28 -0700 (PDT)
Received: from localhost (c-73-158-218-242.hsd1.ca.comcast.net.
 [73.158.218.242]) by smtp.gmail.com with UTF8SMTPSA id
 d2e1a72fcca58-7482b0c212fsm7901253b3a.135.2025.06.10.10.15.27
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 10 Jun 2025 10:15:27 -0700 (PDT)
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
 horms@kernel.org, dsahern@kernel.org, shuah@kernel.org,
 ruanjinjie@huawei.com, mheib@redhat.com, stfomichev@gmail.com,
 linux-kernel@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 linux-rdma@vger.kernel.org, oss-drivers@corigine.com,
 linux-net-drivers@amd.com, linux-kselftest@vger.kernel.org,
 leon@kernel.org, Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Tue, 10 Jun 2025 10:15:21 -0700
Message-ID: <20250610171522.2119030-4-stfomichev@gmail.com>
X-Mailer: git-send-email 2.49.0
In-Reply-To: <20250610171522.2119030-1-stfomichev@gmail.com>
References: <20250610171522.2119030-1-stfomichev@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=gmail.com; s=20230601; t=1749575728; x=1750180528; darn=lists.osuosl.org;
 h=content-transfer-encoding:mime-version:references:in-reply-to
 :message-id:date:subject:cc:to:from:from:to:cc:subject:date
 :message-id:reply-to;
 bh=sO4neuwpUVoDLsDzSFLxxvkPcabDlga25iey737Q9/w=;
 b=LCtQMa9by8ukveH8MbaO7yTgwHRazU/5ot0STkqST0DuI+Oee/3m/93VF2Cxwms+tA
 M2I98Yy0VmnPDM5zLGOsXVr3wHzI8CT8SPV+3ktJrTaPjQtUFC7jtvxKjiXPjCDYG/cy
 w1sPq2K+0IrNjczJmC0YCACj2Masu+VpfjF2clMgjfGo8RLaG5ktccesP7S+ZvAIFOdJ
 cNv/B3a8y1MftjOz5Wi4I4BIHaNMaPAXAZk/ySWG6SGoUjD8ugFCE11y9ZX2HHnWw5MP
 iDwv6CSvTr+DGwfn6DBEg9TkE+dOQyYP0HFv/FhoHOeAMG+6r7buu8o+Z1oXhd8mC4HV
 ePPg==
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=gmail.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=gmail.com header.i=@gmail.com
 header.a=rsa-sha256 header.s=20230601 header.b=LCtQMa9b
Subject: [Intel-wired-lan] [PATCH net-next v3 3/4] netdevsim: remove
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

