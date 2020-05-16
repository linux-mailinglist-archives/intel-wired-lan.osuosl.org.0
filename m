Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E61AB1D5D46
	for <lists+intel-wired-lan@lfdr.de>; Sat, 16 May 2020 02:39:36 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 390B422817;
	Sat, 16 May 2020 00:39:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 4kPsK6UU+QUK; Sat, 16 May 2020 00:39:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id C98C522731;
	Sat, 16 May 2020 00:39:28 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B7FBC1BF9C6
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id B53638771C
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Xp6EfC9cp1bE for <intel-wired-lan@lists.osuosl.org>;
 Sat, 16 May 2020 00:39:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by whitealder.osuosl.org (Postfix) with ESMTPS id E262287C2E
 for <intel-wired-lan@lists.osuosl.org>; Sat, 16 May 2020 00:39:19 +0000 (UTC)
IronPort-SDR: qzK6QXxO6K7IzLqTjl2LG0Wy7LUSMti8wtKduxn3bONQ2xKc+iYXaVZTlSNhlvj8kr5K6hVKl1
 bisoTcMn0YEQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2020 17:39:19 -0700
IronPort-SDR: vHDfsKAeHB2COyXMNlEFK+xC/nUGZ3U6bd+jLftcGj1ODJ9wMTbalCrJMGEDIcvgWpCEAQTmgI
 +Mg8/l9KfKJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,397,1583222400"; d="scan'208";a="307560866"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.241.65])
 by FMSMGA003.fm.intel.com with ESMTP; 15 May 2020 17:39:19 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 15 May 2020 17:36:38 -0700
Message-Id: <20200516003644.4658-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
References: <20200516003644.4658-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S43 09/15] ice: fix signed vs unsigned
 comparisons
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Jesse Brandeburg <jesse.brandeburg@intel.com>

Fix the remaining signed vs unsigned issues, which appear
when compiling with -Werror=sign-compare.

Many of these are because there is an external interface that is passing
an int to us (which we can't change) but that we (rightfully) store
and compare against as an unsigned in our data structures.

Signed-off-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c | 4 ++--
 drivers/net/ethernet/intel/ice/ice_main.c | 8 ++++----
 drivers/net/ethernet/intel/ice/ice_txrx.h | 7 ++++---
 3 files changed, 10 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 00c072f61a32..ff6a5cf8e06f 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -12,7 +12,7 @@
  */
 static int __ice_vsi_get_qs_contig(struct ice_qs_cfg *qs_cfg)
 {
-	int offset, i;
+	unsigned int offset, i;
 
 	mutex_lock(qs_cfg->qs_mutex);
 	offset = bitmap_find_next_zero_area(qs_cfg->pf_map, qs_cfg->pf_map_size,
@@ -38,7 +38,7 @@ static int __ice_vsi_get_qs_contig(struct ice_qs_cfg *qs_cfg)
  */
 static int __ice_vsi_get_qs_sc(struct ice_qs_cfg *qs_cfg)
 {
-	int i, index = 0;
+	unsigned int i, index = 0;
 
 	mutex_lock(qs_cfg->qs_mutex);
 	for (i = 0; i < qs_cfg->q_count; i++) {
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index e12413ec2504..e451120d6632 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5107,7 +5107,7 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 	u8 count = 0;
 	int err = 0;
 
-	if (new_mtu == netdev->mtu) {
+	if (new_mtu == (int)netdev->mtu) {
 		netdev_warn(netdev, "MTU is already %u\n", netdev->mtu);
 		return 0;
 	}
@@ -5122,11 +5122,11 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 		}
 	}
 
-	if (new_mtu < netdev->min_mtu) {
+	if (new_mtu < (int)netdev->min_mtu) {
 		netdev_err(netdev, "new MTU invalid. min_mtu is %d\n",
 			   netdev->min_mtu);
 		return -EINVAL;
-	} else if (new_mtu > netdev->max_mtu) {
+	} else if (new_mtu > (int)netdev->max_mtu) {
 		netdev_err(netdev, "new MTU invalid. max_mtu is %d\n",
 			   netdev->min_mtu);
 		return -EINVAL;
@@ -5151,7 +5151,7 @@ static int ice_change_mtu(struct net_device *netdev, int new_mtu)
 	if (!event)
 		return -ENOMEM;
 
-	netdev->mtu = new_mtu;
+	netdev->mtu = (unsigned int)new_mtu;
 
 	/* if VSI is up, bring it down and then back up */
 	if (!test_and_set_bit(__ICE_DOWN, vsi->state)) {
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.h b/drivers/net/ethernet/intel/ice/ice_txrx.h
index 7c4030caeea4..4a8006e80f65 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.h
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.h
@@ -38,7 +38,8 @@
  */
 #if (PAGE_SIZE < 8192)
 #define ICE_2K_TOO_SMALL_WITH_PADDING \
-((NET_SKB_PAD + ICE_RXBUF_1536) > SKB_WITH_OVERHEAD(ICE_RXBUF_2048))
+	((unsigned int)(NET_SKB_PAD + ICE_RXBUF_1536) > \
+			SKB_WITH_OVERHEAD(ICE_RXBUF_2048))
 
 /**
  * ice_compute_pad - compute the padding
@@ -107,8 +108,8 @@ static inline int ice_skb_pad(void)
 #define DESC_NEEDED (MAX_SKB_FRAGS + ICE_DESCS_FOR_CTX_DESC + \
 		     ICE_DESCS_PER_CACHE_LINE + ICE_DESCS_FOR_SKB_DATA_PTR)
 #define ICE_DESC_UNUSED(R)	\
-	((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->count) + \
-	(R)->next_to_clean - (R)->next_to_use - 1)
+	(u16)((((R)->next_to_clean > (R)->next_to_use) ? 0 : (R)->count) + \
+	      (R)->next_to_clean - (R)->next_to_use - 1)
 
 #define ICE_TX_FLAGS_TSO	BIT(0)
 #define ICE_TX_FLAGS_HW_VLAN	BIT(1)
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
