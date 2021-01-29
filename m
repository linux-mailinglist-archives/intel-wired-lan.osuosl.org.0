Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 577B33087B2
	for <lists+intel-wired-lan@lfdr.de>; Fri, 29 Jan 2021 11:15:57 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id E144F87487;
	Fri, 29 Jan 2021 10:15:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WYdYB3M1NCgk; Fri, 29 Jan 2021 10:15:55 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 5C77F8748F;
	Fri, 29 Jan 2021 10:15:55 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1F95D1BF379
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 10:15:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id DD584228AC
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 10:15:52 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id S7v2hissXxOB for <intel-wired-lan@lists.osuosl.org>;
 Fri, 29 Jan 2021 10:15:51 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 9566720335
 for <intel-wired-lan@lists.osuosl.org>; Fri, 29 Jan 2021 10:15:51 +0000 (UTC)
IronPort-SDR: Yd1mdaes4DrE0LKsmTBwj2enHqFj7U/thFhdz7du6Hsu9MxXPPou/FjEiJLSx2xkjRqfGc2RPU
 OOm7H/+RO1fg==
X-IronPort-AV: E=McAfee;i="6000,8403,9878"; a="180540877"
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="180540877"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jan 2021 02:15:50 -0800
IronPort-SDR: u3Rg107yPbYUnjPjQ/4phgAABG9ocXzAxzRqJDEwraky1b0MBUXKWU+I/bgDNdXIHEjdEtalbA
 Ddw31FWwwD0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,385,1602572400"; d="scan'208";a="409592058"
Received: from amlin-018-150.igk.intel.com ([10.102.18.150])
 by fmsmga002.fm.intel.com with ESMTP; 29 Jan 2021 02:15:49 -0800
From: Mateusz Palczewski <mateusz.palczewski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri, 29 Jan 2021 10:15:43 +0000
Message-Id: <20210129101543.13680-1-mateusz.palczewski@intel.com>
X-Mailer: git-send-email 2.17.1
Subject: [Intel-wired-lan] [PATCH net v1] i40e: Fix endianness conversions
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
Cc: Norbert Ciosek <norbertx.ciosek@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Norbert Ciosek <norbertx.ciosek@intel.com>

Fixes the following sparse warnings:
i40e_main.c:5953:32: warning: cast from restricted __le16
i40e_main.c:8008:29: warning: incorrect type in assignment (different base types)
i40e_main.c:8008:29:    expected unsigned int [assigned] [usertype] ipa
i40e_main.c:8008:29:    got restricted __le32 [usertype]
i40e_main.c:8008:29: warning: incorrect type in assignment (different base types)
i40e_main.c:8008:29:    expected unsigned int [assigned] [usertype] ipa
i40e_main.c:8008:29:    got restricted __le32 [usertype]
i40e_txrx.c:1950:59: warning: incorrect type in initializer (different base types)
i40e_txrx.c:1950:59:    expected unsigned short [usertype] vlan_tag
i40e_txrx.c:1950:59:    got restricted __le16 [usertype] l2tag1
i40e_txrx.c:1953:40: warning: cast to restricted __le16
i40e_xsk.c:448:38: warning: invalid assignment: |=
i40e_xsk.c:448:38:    left side has type restricted __le64
i40e_xsk.c:448:38:    right side has type int

Fixes: 2f4b411a3d67 ("i40e: Enable cloud filters via tc-flower")
Fixes: 2a508c64ad27 ("i40e: fix VLAN.TCI == 0 RX HW offload")
Fixes: 3106c580fb7c ("i40e: Use batched xsk Tx interfaces to increase performance")
Fixes: 8f88b3034db3 ("i40e: Add infrastructure for queue channel support")
Signed-off-by: Norbert Ciosek <norbertx.ciosek@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 18 +++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_txrx.c |  2 +-
 drivers/net/ethernet/intel/i40e/i40e_xsk.c  |  2 +-
 3 files changed, 11 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 3ed7f0e..8f635ac 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -5950,7 +5950,7 @@ static int i40e_add_channel(struct i40e_pf *pf, u16 uplink_seid,
 	ch->enabled_tc = !i40e_is_channel_macvlan(ch) && enabled_tc;
 	ch->seid = ctxt.seid;
 	ch->vsi_number = ctxt.vsi_number;
-	ch->stat_counter_idx = cpu_to_le16(ctxt.info.stat_counter_idx);
+	ch->stat_counter_idx = le16_to_cpu(ctxt.info.stat_counter_idx);
 
 	/* copy just the sections touched not the entire info
 	 * since not all sections are valid as returned by
@@ -7990,8 +7990,7 @@ static inline void
 i40e_set_cld_element(struct i40e_cloud_filter *filter,
 		     struct i40e_aqc_cloud_filters_element_data *cld)
 {
-	int i, j;
-	u32 ipa;
+	int i;
 
 	memset(cld, 0, sizeof(*cld));
 	ether_addr_copy(cld->outer_mac, filter->dst_mac);
@@ -8002,14 +8001,15 @@ i40e_set_cld_element(struct i40e_cloud_filter *filter,
 
 	if (filter->n_proto == ETH_P_IPV6) {
 #define IPV6_MAX_INDEX	(ARRAY_SIZE(filter->dst_ipv6) - 1)
-		for (i = 0, j = 0; i < ARRAY_SIZE(filter->dst_ipv6);
-		     i++, j += 2) {
-			ipa = be32_to_cpu(filter->dst_ipv6[IPV6_MAX_INDEX - i]);
-			ipa = cpu_to_le32(ipa);
-			memcpy(&cld->ipaddr.raw_v6.data[j], &ipa, sizeof(ipa));
+		for (i = 0; i < ARRAY_SIZE(filter->dst_ipv6); i++) {
+			__le32 ipa = cpu_to_le32(be32_to_cpu
+				(filter->dst_ipv6[IPV6_MAX_INDEX - i]));
+
+			memcpy(&cld->ipaddr.raw_v6.data[i * 2], &ipa, sizeof(ipa));
 		}
 	} else {
-		ipa = be32_to_cpu(filter->dst_ipv4);
+		u32 ipa = be32_to_cpu(filter->dst_ipv4);
+
 		memcpy(&cld->ipaddr.v4.data, &ipa, sizeof(ipa));
 	}
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_txrx.c b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
index 15feecd..c7759cb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_txrx.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_txrx.c
@@ -1948,7 +1948,7 @@ void i40e_process_skb_fields(struct i40e_ring *rx_ring,
 	skb_record_rx_queue(skb, rx_ring->queue_index);
 
 	if (qword & BIT(I40E_RX_DESC_STATUS_L2TAG1P_SHIFT)) {
-		u16 vlan_tag = rx_desc->wb.qword0.lo_dword.l2tag1;
+		__le16 vlan_tag = rx_desc->wb.qword0.lo_dword.l2tag1;
 
 		__vlan_hwaccel_put_tag(skb, htons(ETH_P_8021Q),
 				       le16_to_cpu(vlan_tag));
diff --git a/drivers/net/ethernet/intel/i40e/i40e_xsk.c b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
index b42300b..df1ec8c 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_xsk.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_xsk.c
@@ -457,7 +457,7 @@ static void i40e_set_rs_bit(struct i40e_ring *xdp_ring)
 	struct i40e_tx_desc *tx_desc;
 
 	tx_desc = I40E_TX_DESC(xdp_ring, ntu);
-	tx_desc->cmd_type_offset_bsz |= (I40E_TX_DESC_CMD_RS << I40E_TXD_QW1_CMD_SHIFT);
+	tx_desc->cmd_type_offset_bsz |= cpu_to_le64(I40E_TX_DESC_CMD_RS << I40E_TXD_QW1_CMD_SHIFT);
 }
 
 /**
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
