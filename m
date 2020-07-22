Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 459E6228D8F
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Jul 2020 03:27:33 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 0446C87FE8;
	Wed, 22 Jul 2020 01:27:32 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id SRVzcdjqtZ4S; Wed, 22 Jul 2020 01:27:30 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id BB1CB87FEB;
	Wed, 22 Jul 2020 01:27:30 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C4431BF406
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 97F5C8496B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lO6H5TzMYCUJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jul 2020 01:27:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mail.kernel.org (mail.kernel.org [198.145.29.99])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id A0EA1848D5
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jul 2020 01:27:25 +0000 (UTC)
Received: from kicinski-fedora-PC1C0HJN.thefacebook.com (unknown
 [163.114.132.7])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id 483BF208E4;
 Wed, 22 Jul 2020 01:27:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1595381245;
 bh=Cg9Si7MgCEn8QKF5o4itCLFhnHeZQZHq5qtC9sNzaas=;
 h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
 b=HeKgJ4xZVKZCmesdq1HszLg78Tc3kavW8H/VYODAaOfxDoVx5th6D+zVTY+WAMwCT
 ZHAYPhqQRlE8eq6IWpWmRFN2pUOyI8NJ/vTy6oROQXdsyjdVcnVTWXg3ruBhJ5KrW7
 pw/Q99l6waSTdLWZPT4VDOa3pR11RxrlGH360KOk=
From: Jakub Kicinski <kuba@kernel.org>
To: davem@davemloft.net
Date: Tue, 21 Jul 2020 18:27:11 -0700
Message-Id: <20200722012716.2814777-3-kuba@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20200722012716.2814777-1-kuba@kernel.org>
References: <20200722012716.2814777-1-kuba@kernel.org>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v1 2/7] netdevsim: add warnings
 on unexpected UDP tunnel port errors
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

We should never see a removal of a port which is not in the table
or adding a port to an occupied entry in the table. To make sure
such errors don't escape the checks in the test script add a
warning/kernel spat.

Error injection will not trigger those, nor should it ever put
us in a bad state.

Signed-off-by: Jakub Kicinski <kuba@kernel.org>
---
 drivers/net/netdevsim/udp_tunnels.c | 13 +++++++++----
 1 file changed, 9 insertions(+), 4 deletions(-)

diff --git a/drivers/net/netdevsim/udp_tunnels.c b/drivers/net/netdevsim/udp_tunnels.c
index 22c06a76033c..ad65b860bd7b 100644
--- a/drivers/net/netdevsim/udp_tunnels.c
+++ b/drivers/net/netdevsim/udp_tunnels.c
@@ -22,11 +22,13 @@ nsim_udp_tunnel_set_port(struct net_device *dev, unsigned int table,
 		msleep(ns->udp_ports.sleep);
 
 	if (!ret) {
-		if (ns->udp_ports.ports[table][entry])
+		if (ns->udp_ports.ports[table][entry]) {
+			WARN(1, "entry already in use\n");
 			ret = -EBUSY;
-		else
+		} else {
 			ns->udp_ports.ports[table][entry] =
 				be16_to_cpu(ti->port) << 16 | ti->type;
+		}
 	}
 
 	netdev_info(dev, "set [%d, %d] type %d family %d port %d - %d\n",
@@ -50,10 +52,13 @@ nsim_udp_tunnel_unset_port(struct net_device *dev, unsigned int table,
 	if (!ret) {
 		u32 val = be16_to_cpu(ti->port) << 16 | ti->type;
 
-		if (val == ns->udp_ports.ports[table][entry])
+		if (val == ns->udp_ports.ports[table][entry]) {
 			ns->udp_ports.ports[table][entry] = 0;
-		else
+		} else {
+			WARN(1, "entry not installed %x vs %x\n",
+			     val, ns->udp_ports.ports[table][entry]);
 			ret = -ENOENT;
+		}
 	}
 
 	netdev_info(dev, "unset [%d, %d] type %d family %d port %d - %d\n",
-- 
2.26.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
