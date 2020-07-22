Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 07FFB228D8E
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jul 2020 03:27:32 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 9082588606;
	Wed, 22 Jul 2020 01:27:30 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id p0tGjQfHw+TG; Wed, 22 Jul 2020 01:27:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 384BC88612;
	Wed, 22 Jul 2020 01:27:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 056481BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 01B8788606
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DLs2sBlO7T9P for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jul 2020 01:27:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 8100688604
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:26 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 0FF2C22BF3;
 Wed, 22 Jul 2020 01:27:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595381246;
 bh=WfsoFrZ+V5UZA8nlIRdK2cSy6MvbX1XIdsI5Qab2zUY=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=ey9QXFEZtcINNEMGmXEnaLSx+GsZ3J/OrdpEmx6nsUDMNMawgjiQXIIyd+WwVBQqA
 ylHIACxpLqafl+PEyjLtiAM/yWxHJegOhlg4W45g4+p8FvgNmQaLPdMKqDGFYauvWX
 BL7nf37pk0HM7j5ikj67rwxQg9PJ56MW1k1MZsR4=
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Date: Tue, 21 Jul 2020 18:27:13 -0700
Message-Id: <20200722012716.2814777-5-kuba@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200722012716.2814777-1-kuba@kernel.org>
References: <20200722012716.2814777-1-kuba@kernel.org>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 4/7] selftests: net: add a
 test for shared UDP tunnel info tables
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: netdev@vger.kernel.org, intel-wired-lan@lists.osuosl.org,
 Jakub Kicinski <kuba@kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add a test run of checks validating the shared UDP tunnel port
tables function as we expect.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 .../drivers/net/netdevsim/udp_tunnel_nic.sh   | 109 ++++++++++++++++++
 1 file changed, 109 insertions(+)

diff --git a/tools/testing/selftests/drivers/net/netdevsim/udp_tunnel_nic.sh b/tools/testing/selftests/drivers/net/netdevsim/udp_tunnel_nic.sh
index ba1d53b9f815..9225133784af 100644
--- a/tools/testing/selftests/drivers/net/netdevsim/udp_tunnel_nic.sh
+++ b/tools/testing/selftests/drivers/net/netdevsim/udp_tunnel_nic.sh
@@ -775,6 +775,115 @@ for port in 0 1; do
     exp1=( 0 0 0 0 )
 done
 
+cleanup_nsim
+
+# shared port tables
+pfx="table sharing"
+
+echo $NSIM_ID > /sys/bus/netdevsim/new_device
+echo 0 > $NSIM_DEV_SYS/del_port
+
+echo 0 > $NSIM_DEV_DFS/udp_ports_open_only
+echo 1 > $NSIM_DEV_DFS/udp_ports_sleep
+echo 1 > $NSIM_DEV_DFS/udp_ports_shared
+
+old_netdevs=$(ls /sys/class/net)
+echo 1 > $NSIM_DEV_SYS/new_port
+NSIM_NETDEV=`get_netdev_name old_netdevs`
+old_netdevs=$(ls /sys/class/net)
+echo 2 > $NSIM_DEV_SYS/new_port
+NSIM_NETDEV2=`get_netdev_name old_netdevs`
+
+msg="VxLAN v4 devices"
+exp0=( `mke 4789 1` 0 0 0 )
+exp1=( 0 0 0 0 )
+new_vxlan vxlan0 4789 $NSIM_NETDEV
+new_vxlan vxlan1 4789 $NSIM_NETDEV2
+
+msg="VxLAN v4 devices go down"
+exp0=( 0 0 0 0 )
+ifconfig vxlan1 down
+ifconfig vxlan0 down
+check_tables
+
+for ifc in vxlan0 vxlan1; do
+    ifconfig $ifc up
+done
+
+msg="VxLAN v6 device"
+exp0=( `mke 4789 1` `mke 4790 1` 0 0 )
+new_vxlan vxlanC 4790 $NSIM_NETDEV 6
+
+msg="Geneve device"
+exp1=( `mke 6081 2` 0 0 0 )
+new_geneve gnv0 6081
+
+msg="NIC device goes down"
+ifconfig $NSIM_NETDEV down
+check_tables
+
+msg="NIC device goes up again"
+ifconfig $NSIM_NETDEV up
+check_tables
+
+for i in `seq 2`; do
+    msg="turn feature off - 1, rep $i"
+    ethtool -K $NSIM_NETDEV rx-udp_tunnel-port-offload off
+    check_tables
+
+    msg="turn feature off - 2, rep $i"
+    exp0=( 0 0 0 0 )
+    exp1=( 0 0 0 0 )
+    ethtool -K $NSIM_NETDEV2 rx-udp_tunnel-port-offload off
+    check_tables
+
+    msg="turn feature on - 1, rep $i"
+    exp0=( `mke 4789 1` `mke 4790 1` 0 0 )
+    exp1=( `mke 6081 2` 0 0 0 )
+    ethtool -K $NSIM_NETDEV rx-udp_tunnel-port-offload on
+    check_tables
+
+    msg="turn feature on - 2, rep $i"
+    ethtool -K $NSIM_NETDEV2 rx-udp_tunnel-port-offload on
+    check_tables
+done
+
+msg="tunnels destroyed 1"
+cleanup_tuns
+exp0=( 0 0 0 0 )
+exp1=( 0 0 0 0 )
+check_tables
+
+overflow_table0 "overflow NIC table"
+
+msg="re-add a port"
+
+echo 2 > $NSIM_DEV_SYS/del_port
+echo 2 > $NSIM_DEV_SYS/new_port
+check_tables
+
+msg="replace VxLAN in overflow table"
+exp0=( `mke 10000 1` `mke 10004 1` `mke 10002 1` `mke 10003 1` )
+del_dev vxlan1
+
+msg="vacate VxLAN in overflow table"
+exp0=( `mke 10000 1` `mke 10004 1` 0 `mke 10003 1` )
+del_dev vxlan2
+
+echo 1 > $NSIM_DEV_DFS/ports/$port/udp_ports_reset
+check_tables
+
+msg="tunnels destroyed 2"
+cleanup_tuns
+exp0=( 0 0 0 0 )
+exp1=( 0 0 0 0 )
+check_tables
+
+echo 1 > $NSIM_DEV_SYS/del_port
+echo 2 > $NSIM_DEV_SYS/del_port
+
+cleanup_nsim
+
 modprobe -r netdevsim
 
 if [ $num_errors -eq 0 ]; then
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
