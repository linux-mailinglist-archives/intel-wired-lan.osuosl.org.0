Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id E40CE18A8E3
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2020 00:02:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 8DB7087D5A;
	Wed, 18 Mar 2020 23:02:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id HUyHgmF4bw7S; Wed, 18 Mar 2020 23:02:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 849B487CB9;
	Wed, 18 Mar 2020 23:02:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id CE5061BF335
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id C4B59203F3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WvRuM2a0YyCo for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 6879120403
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2020 23:02:11 +0000 (UTC)
IronPort-SDR: I/17xcu9a/esMIXMktN3zIeuIlzHVngHh1eq5P/yfByh7BruJFB9Ch5jNG/IpeJ0hFaZHQA68r
 dWGFBrkyJiuA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2020 16:02:10 -0700
IronPort-SDR: KS5yX2NQ9Or9/l9iSOFK2rfKth4ScxRHS+Ax3oPQdS1DGizH9e3zyaW4lcDa1kiDz8tplWeLc3
 NbIekxNfzxZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,569,1574150400"; d="scan'208";a="248341788"
Received: from ymtomada-mobl.amr.corp.intel.com ([10.251.21.179])
 by orsmga006.jf.intel.com with ESMTP; 18 Mar 2020 16:02:10 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 18 Mar 2020 16:00:59 -0700
Message-Id: <20200318230102.36952-10-andre.guedes@intel.com>
X-Mailer: git-send-email 2.25.0
In-Reply-To: <20200318230102.36952-1-andre.guedes@intel.com>
References: <20200318230102.36952-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 09/12] igc: Remove
 igc_*_mac_steering_filter() wrappers
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

With the previous two patches, igc_add_mac_steering_filter() and
igc_del_mac_steering_filter() became a pointless wrapper of
igc_add_mac_filter() and igc_del_mac_filter().

This patch removes these wrappers and update callers to call
igc_add_mac_filter() and igc_del_mac_filter() directly.

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc.h         |  8 ++++----
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 20 ++++++++------------
 drivers/net/ethernet/intel/igc/igc_main.c    | 20 ++++----------------
 3 files changed, 16 insertions(+), 32 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc.h b/drivers/net/ethernet/intel/igc/igc.h
index 192cef07bdf7..6c18c74a68fb 100644
--- a/drivers/net/ethernet/intel/igc/igc.h
+++ b/drivers/net/ethernet/intel/igc/igc.h
@@ -231,10 +231,10 @@ void igc_write_rss_indir_tbl(struct igc_adapter *adapter);
 bool igc_has_link(struct igc_adapter *adapter);
 void igc_reset(struct igc_adapter *adapter);
 int igc_set_spd_dplx(struct igc_adapter *adapter, u32 spd, u8 dplx);
-int igc_add_mac_steering_filter(struct igc_adapter *adapter,
-				const u8 *addr, u8 queue, u8 flags);
-int igc_del_mac_steering_filter(struct igc_adapter *adapter,
-				const u8 *addr, u8 queue, u8 flags);
+int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
+		       const s8 queue, const u8 flags);
+int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
+		       const u8 flags);
 void igc_update_stats(struct igc_adapter *adapter);
 
 /* igc_dump declarations */
diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 9ef133fe6e40..93608bd57c29 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1267,18 +1267,16 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 	}
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
-		err = igc_add_mac_steering_filter(adapter,
-						  input->filter.dst_addr,
-						  input->action, 0);
+		err = igc_add_mac_filter(adapter, input->filter.dst_addr,
+					 input->action, 0);
 		if (err)
 			return err;
 	}
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
-		err = igc_add_mac_steering_filter(adapter,
-						  input->filter.src_addr,
-						  input->action,
-						  IGC_MAC_STATE_SRC_ADDR);
+		err = igc_add_mac_filter(adapter, input->filter.src_addr,
+					 input->action,
+					 IGC_MAC_STATE_SRC_ADDR);
 		if (err)
 			return err;
 	}
@@ -1332,13 +1330,11 @@ int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 					   ntohs(input->filter.vlan_tci));
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
-		igc_del_mac_steering_filter(adapter, input->filter.src_addr,
-					    input->action,
-					    IGC_MAC_STATE_SRC_ADDR);
+		igc_del_mac_filter(adapter, input->filter.src_addr,
+				   IGC_MAC_STATE_SRC_ADDR);
 
 	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
-		igc_del_mac_steering_filter(adapter, input->filter.dst_addr,
-					    input->action, 0);
+		igc_del_mac_filter(adapter, input->filter.dst_addr, 0);
 
 	return 0;
 }
diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 273817252823..25d0431f4f4a 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -2210,8 +2210,8 @@ static bool igc_mac_entry_can_be_used(const struct igc_mac_addr *entry,
  *
  * In case of success, returns 0. Otherwise, it returns a negative errno code.
   */
-static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-			      const s8 queue, const u8 flags)
+int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
+		       const s8 queue, const u8 flags)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int rar_entries = hw->mac.rar_entry_count;
@@ -2251,8 +2251,8 @@ static int igc_add_mac_filter(struct igc_adapter *adapter, const u8 *addr,
  *
  * In case of success, returns 0. Otherwise, it returns a negative errno code.
   */
-static int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
-			      const u8 flags)
+int igc_del_mac_filter(struct igc_adapter *adapter, const u8 *addr,
+		       const u8 flags)
 {
 	struct igc_hw *hw = &adapter->hw;
 	int rar_entries = hw->mac.rar_entry_count;
@@ -3736,18 +3736,6 @@ igc_features_check(struct sk_buff *skb, struct net_device *dev,
 	return features;
 }
 
-int igc_add_mac_steering_filter(struct igc_adapter *adapter,
-				const u8 *addr, u8 queue, u8 flags)
-{
-	return igc_add_mac_filter(adapter, addr, queue, flags);
-}
-
-int igc_del_mac_steering_filter(struct igc_adapter *adapter,
-				const u8 *addr, u8 queue, u8 flags)
-{
-	return igc_del_mac_filter(adapter, addr, flags);
-}
-
 static void igc_tsync_interrupt(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
-- 
2.25.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
