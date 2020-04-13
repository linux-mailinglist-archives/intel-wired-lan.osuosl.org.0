Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8003D1A695E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 Apr 2020 18:03:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 2E52A8788B;
	Mon, 13 Apr 2020 16:03:42 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id BtJfdEhZhKCb; Mon, 13 Apr 2020 16:03:42 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id C97B0878ED;
	Mon, 13 Apr 2020 16:03:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 434EC1BF318
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 16:03:39 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 3E9A784BB6
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 16:03:39 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id b2C492RVSUIk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 Apr 2020 16:03:38 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 70C9284B80
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 Apr 2020 16:03:38 +0000 (UTC)
IronPort-SDR: W1trFFcnjGHQDpIQNkvJKyFViWEN+nH4P48bpL3owRdg3BF86O9lvHXnmdUzKL89Euy7HRhxcr
 HosFg061jzgA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Apr 2020 09:03:37 -0700
IronPort-SDR: OJ7hfBNb7qKmWKNuRZ2KP93nWeRlQ1/XACD6ALlklZCHw0jD1/npgU8lwbQoTGmaxlJoRCywO6
 cgbmQuRc/87w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,378,1580803200"; d="scan'208";a="363107775"
Received: from ksmartin-mobl.amr.corp.intel.com ([10.251.159.43])
 by fmsmga001.fm.intel.com with ESMTP; 13 Apr 2020 09:03:37 -0700
From: Andre Guedes <andre.guedes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 Apr 2020 09:00:50 -0700
Message-Id: <20200413160049.35565-1-andre.guedes@intel.com>
X-Mailer: git-send-email 2.26.0
In-Reply-To: <20200411002834.13916-5-andre.guedes@intel.com>
References: <20200411002834.13916-5-andre.guedes@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 4/4] igc: Enable NFC rules based source
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
v2: Fix memory leak when both dst and src are set.
---
 drivers/net/ethernet/intel/igc/igc_ethtool.c | 32 ++++++++++++++------
 1 file changed, 22 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_ethtool.c b/drivers/net/ethernet/intel/igc/igc_ethtool.c
index 20d22df52f09..9023dc2a2446 100644
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
@@ -1334,20 +1338,28 @@ static int igc_add_ethtool_nfc_entry(struct igc_adapter *adapter,
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
+		err = -EOPNOTSUPP;
+		goto err_out;
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
