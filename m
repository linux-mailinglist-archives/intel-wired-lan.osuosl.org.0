Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id E42161A4CED
	for <lists+intel-wired-lan@lfdr.de>; Sat, 11 Apr 2020 02:28:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 283C980ACC;
	Sat, 11 Apr 2020 00:28:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id C3ur7jzSApIt; Sat, 11 Apr 2020 00:28:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 1385F86AE8;
	Sat, 11 Apr 2020 00:28:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C56661BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C274D85DD8
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WONPUPyaDlza for <intel-wired-lan@lists.osuosl.org>;
 Sat, 11 Apr 2020 00:28:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 8BEB48651D
 for <intel-wired-lan@lists.osuosl.org>; Sat, 11 Apr 2020 00:28:41 +0000 (UTC)
IronPort-SDR: s70cIrACooIfBLmQe9io7dqbvJBwg/10LXo7Tlx2nKuFUGWpkQB61JRAI1s/iJjAPjrjYnGZ9B
 aVKO16bVJ0PQ==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2020 17:28:40 -0700
IronPort-SDR: O6H1rPzbICqBbSF3iF23XElUwQf1mqT6HQz+xdn/QbTG1MakIzbpd+3MAOPtQ+JF9UavD/MYPA
 S5GpNvi4sxZw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,368,1580803200"; d="scan'208";a="362585535"
Received: from nwu5-mobl1.amr.corp.intel.com ([10.134.124.160])
 by fmsmga001.fm.intel.com with ESMTP; 10 Apr 2020 17:28:40 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 10 Apr 2020 17:28:34 -0700
Message-Id: <20200411002834.13916-5-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200411002834.13916-1-andre.guedes@intel.com>
References: <20200411002834.13916-1-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 4/4] igc: Enable NFC rules based source
 MAC address
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

This patch adds support for Network Flow Classification (NFC) rules
based on source MAC address. Note that the controller doesn't support
rules with both source and destination addresses set, so this special
case is checked in igc_add_ethtool_nfc_entry().

Signed-off-by: Andre Guedes <andre.guedes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 31 +++++++++++++-------
 1 file changed, 21 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 20d22df52f09..9cd629b7d5f4 100644
--- a/drivers/net/ethernet/intel/igc/igc_ethtool.c
+++ b/drivers/net/ethernet/intel/igc/igc_ethtool.c
@@ -1188,16 +1188,8 @@ static int igc_set_rss_hash_opt(struct igc_adapter *adapter,
 
 int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 {
-	struct igc_hw *hw = &adapter->hw;
 	int err = -EINVAL;
 
-	if (hw->mac.type == igc_i225 &&
-	    !(input->filter.match_flags & ~IGC_FILTER_FLAG_SRC_MAC_ADDR)) {
-		netdev_err(adapter->netdev,
-			   "i225 doesn't support flow classification rules specifying only source addresses");
-		return -EOPNOTSUPP;
-	}
-
 	if (input->filter.match_flags & IGC_FILTER_FLAG_ETHER_TYPE) {
 		u16 etype = ntohs(input->filter.etype);
 
@@ -1206,6 +1198,14 @@ int igc_add_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 			return err;
 	}
 
+	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
+		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_SRC,
+					 input->filter.src_addr,
+					 input->action);
+		if (err)
+			return err;
+	}
+
 	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR) {
 		err = igc_add_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
 					 input->filter.dst_addr,
@@ -1239,6 +1239,10 @@ int igc_erase_filter(struct igc_adapter *adapter, struct igc_nfc_filter *input)
 		igc_del_vlan_prio_filter(adapter, prio);
 	}
 
+	if (input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR)
+		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_SRC,
+				   input->filter.src_addr);
+
 	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR)
 		igc_del_mac_filter(adapter, IGC_MAC_FILTER_TYPE_DST,
 				   input->filter.dst_addr);
@@ -1334,20 +1338,27 @@ static int igc_add_ethtool_nfc_entry(struct igc_adapter *adapter,
 		input->filter.match_flags = IGC_FILTER_FLAG_ETHER_TYPE;
 	}
 
-	/* Only support matching addresses by the full mask */
+	/* Both source and destination address filters only support the full
+	 * mask.
+	 */
 	if (is_broadcast_ether_addr(fsp->m_u.ether_spec.h_source)) {
 		input->filter.match_flags |= IGC_FILTER_FLAG_SRC_MAC_ADDR;
 		ether_addr_copy(input->filter.src_addr,
 				fsp->h_u.ether_spec.h_source);
 	}
 
-	/* Only support matching addresses by the full mask */
 	if (is_broadcast_ether_addr(fsp->m_u.ether_spec.h_dest)) {
 		input->filter.match_flags |= IGC_FILTER_FLAG_DST_MAC_ADDR;
 		ether_addr_copy(input->filter.dst_addr,
 				fsp->h_u.ether_spec.h_dest);
 	}
 
+	if (input->filter.match_flags & IGC_FILTER_FLAG_DST_MAC_ADDR &&
+	    input->filter.match_flags & IGC_FILTER_FLAG_SRC_MAC_ADDR) {
+		netdev_dbg(netdev, "Filters with both dst and src are not supported");
+		return -EOPNOTSUPP;
+	}
+
 	if ((fsp->flow_type & FLOW_EXT) && fsp->m_ext.vlan_tci) {
 		if (fsp->m_ext.vlan_tci != htons(VLAN_PRIO_MASK)) {
 			netdev_dbg(netdev, "VLAN mask not supported");
-- 
2.26.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
