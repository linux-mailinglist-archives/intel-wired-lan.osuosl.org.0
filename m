Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 637EB3B4B96
	for <lists+intel-wired-lan@lfdr.de>; Sat, 26 Jun 2021 02:34:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id D0EAB83BB4;
	Sat, 26 Jun 2021 00:34:02 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9zcxKQgTKjcR; Sat, 26 Jun 2021 00:34:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id DBADB83BB3;
	Sat, 26 Jun 2021 00:34:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 2DC851C11AF
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 1D454605C9
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:46 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id vHYODUMunWsj for <intel-wired-lan@lists.osuosl.org>;
 Sat, 26 Jun 2021 00:33:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D5899605E7
 for <intel-wired-lan@lists.osuosl.org>; Sat, 26 Jun 2021 00:33:44 +0000 (UTC)
IronPort-SDR: ZIlu/l594ddBVkUHgY5h9Ed/vzS7eo2wz/XA9zeZlNb9QE3ElSMIegSDhXbpwOocShHrUa/GJR
 rbw4ug1XA6gw==
X-IronPort-AV: E=McAfee;i="6200,9189,10026"; a="268890553"
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="268890553"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:41 -0700
IronPort-SDR: HJfPt6Zxe0EexBOf+dDXT95xJNvYqUGb9b87MbYwnYALwon/s80hAaqU/1tXPt/yMFzXoD1Umv
 qt5A+khHS4lw==
X-IronPort-AV: E=Sophos;i="5.83,300,1616482800"; d="scan'208";a="557008603"
Received: from aschmalt-mobl1.amr.corp.intel.com (HELO localhost.localdomain)
 ([10.212.160.59])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jun 2021 17:33:41 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: netdev@vger.kernel.org
Date: Fri, 25 Jun 2021 17:33:05 -0700
Message-Id: <20210626003314.3159402-4-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20210626003314.3159402-1-vinicius.gomes@intel.com>
References: <20210626003314.3159402-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next v4 03/12] core: Introduce
 netdev_tc_map_to_queue_mask()
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
Cc: mkubecek@suse.cz, jiri@resnulli.us, vladimir.oltean@nxp.com, po.liu@nxp.com,
 jhs@mojatatu.com, intel-wired-lan@lists.osuosl.org, kuba@kernel.org,
 xiyou.wangcong@gmail.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Converts from a bitmask specifying traffic classes (bit 0 for traffic
class (TC) 0, bit 1 for TC 1, and so on) to a bitmask for queues. The
conversion is done using the netdev.tc_to_txq map.

netdev_tc_map_to_queue_mask() first users will be the mqprio and
taprio qdiscs.

Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 include/linux/netdevice.h |  1 +
 net/core/dev.c            | 20 ++++++++++++++++++++
 2 files changed, 21 insertions(+)

diff --git a/include/linux/netdevice.h b/include/linux/netdevice.h
index af5d4c5b0ad5..dcff0b9a55ab 100644
--- a/include/linux/netdevice.h
+++ b/include/linux/netdevice.h
@@ -2279,6 +2279,7 @@ int netdev_txq_to_tc(struct net_device *dev, unsigned int txq);
 void netdev_reset_tc(struct net_device *dev);
 int netdev_set_tc_queue(struct net_device *dev, u8 tc, u16 count, u16 offset);
 int netdev_set_num_tc(struct net_device *dev, u8 num_tc);
+u32 netdev_tc_map_to_queue_mask(struct net_device *dev, u32 tc_mask);
 
 static inline
 int netdev_get_num_tc(struct net_device *dev)
diff --git a/net/core/dev.c b/net/core/dev.c
index 991d09b67bd9..4b25dbd26243 100644
--- a/net/core/dev.c
+++ b/net/core/dev.c
@@ -2956,6 +2956,26 @@ int netdev_set_num_tc(struct net_device *dev, u8 num_tc)
 }
 EXPORT_SYMBOL(netdev_set_num_tc);
 
+u32 netdev_tc_map_to_queue_mask(struct net_device *dev, u32 tc_mask)
+{
+	u32 i, queue_mask = 0;
+
+	for (i = 0; i < dev->num_tc; i++) {
+		u32 offset, count;
+
+		if (!(tc_mask & BIT(i)))
+			continue;
+
+		offset = dev->tc_to_txq[i].offset;
+		count = dev->tc_to_txq[i].count;
+
+		queue_mask |= GENMASK(offset + count - 1, offset);
+	}
+
+	return queue_mask;
+}
+EXPORT_SYMBOL(netdev_tc_map_to_queue_mask);
+
 void netdev_unbind_sb_channel(struct net_device *dev,
 			      struct net_device *sb_dev)
 {
-- 
2.32.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
