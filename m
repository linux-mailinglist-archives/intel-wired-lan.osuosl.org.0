Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EBF94C7001
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 15:49:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 561F5409A0;
	Mon, 28 Feb 2022 14:49:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WqIqA4uDMA63; Mon, 28 Feb 2022 14:49:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3A3314033D;
	Mon, 28 Feb 2022 14:49:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 894F11BF982
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:32:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 84F2240195
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:32:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5qBRZpgPqkqp for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 11:32:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 89E4740012
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:32:07 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646047927; x=1677583927;
 h=from:to:cc:subject:date:message-id:in-reply-to: references;
 bh=QP4KAz77kmawzpc6Iafdd5F3MbnOUQ/WRdU+fJgnraA=;
 b=Xe7Rx6s7bm8az8CTISW/xv/UYjuNAnNi5Y3T8IAuu4B2fw39u/NF06U7
 l4V12PO99cQwbo3rprxLE6gZE24xP9dCXRMbsuA7VxhA9t5XBieWvAuCA
 iLsUvEzK05IxxGrgGX/pvBNTr07V9n7wrla8ylGukrIpbOYh8FN7jYofM
 QsIR93DJUhsqq6ERBcFbcXMOh8ElKWly6DTGSHkGGmCKE+B0zngJataFw
 D0hnyRzpyCCeHCozSvlRYWRg8p9maHABYk1LRIaoPxGiKdV4ZR42nN2cA
 yx7o2HQt3/E8BxQMTVDecYY/kMNkycnvDXS+/Ileo0eQNVia2mGuWI70U g==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="313579744"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="313579744"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 03:32:07 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="550202115"
Received: from unknown (HELO slawomir.imu.intel.com) ([10.237.94.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 03:32:06 -0800
From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Feb 2022 13:27:52 +0000
Message-Id: <20220228132752.17522-3-slawomirx.mrozowicz@intel.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220228132752.17522-1-slawomirx.mrozowicz@intel.com>
References: <20220228132752.17522-1-slawomirx.mrozowicz@intel.com>
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:48:22 +0000
Subject: [Intel-wired-lan] [PATCH net 3/3] ixgbevf: add disable link state
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
Cc: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Add possibility to disable link state if it is administratively
disabled in PF.

It is part of the general functionality that allows the PF driver
to control the state of the virtual link VF devices.

Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h  |  2 +
 .../net/ethernet/intel/ixgbevf/ixgbevf_main.c | 11 ++++-
 drivers/net/ethernet/intel/ixgbevf/mbx.h      |  2 +
 drivers/net/ethernet/intel/ixgbevf/vf.c       | 42 +++++++++++++++++++
 drivers/net/ethernet/intel/ixgbevf/vf.h       |  1 +
 5 files changed, 57 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index e257390a4f6a..149c733fcc2b 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -387,6 +387,8 @@ struct ixgbevf_adapter {
 	u32 *rss_key;
 	u8 rss_indir_tbl[IXGBEVF_X550_VFRETA_SIZE];
 	u32 flags;
+	bool link_state;
+
 #define IXGBEVF_FLAGS_LEGACY_RX		BIT(1)
 
 #ifdef CONFIG_XFRM
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index 0f293acd17e8..b12fec82f550 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -2298,7 +2298,9 @@ static void ixgbevf_negotiate_api(struct ixgbevf_adapter *adapter)
 static void ixgbevf_up_complete(struct ixgbevf_adapter *adapter)
 {
 	struct net_device *netdev = adapter->netdev;
+	struct pci_dev *pdev = adapter->pdev;
 	struct ixgbe_hw *hw = &adapter->hw;
+	bool state;
 
 	ixgbevf_configure_msix(adapter);
 
@@ -2311,6 +2313,11 @@ static void ixgbevf_up_complete(struct ixgbevf_adapter *adapter)
 
 	spin_unlock_bh(&adapter->mbx_lock);
 
+	state = adapter->link_state;
+	hw->mac.ops.get_link_state(hw, &adapter->link_state);
+	if (state && state != adapter->link_state)
+		dev_info(&pdev->dev, "VF is administratively disabled\n");
+
 	smp_mb__before_atomic();
 	clear_bit(__IXGBEVF_DOWN, &adapter->state);
 	ixgbevf_napi_enable_all(adapter);
@@ -3081,6 +3088,8 @@ static int ixgbevf_sw_init(struct ixgbevf_adapter *adapter)
 	adapter->tx_ring_count = IXGBEVF_DEFAULT_TXD;
 	adapter->rx_ring_count = IXGBEVF_DEFAULT_RXD;
 
+	adapter->link_state = true;
+
 	set_bit(__IXGBEVF_DOWN, &adapter->state);
 	return 0;
 
@@ -3313,7 +3322,7 @@ static void ixgbevf_watchdog_subtask(struct ixgbevf_adapter *adapter)
 
 	ixgbevf_watchdog_update_link(adapter);
 
-	if (adapter->link_up)
+	if (adapter->link_up && adapter->link_state)
 		ixgbevf_watchdog_link_is_up(adapter);
 	else
 		ixgbevf_watchdog_link_is_down(adapter);
diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.h b/drivers/net/ethernet/intel/ixgbevf/mbx.h
index 7346ccf014a5..835bbcc5cc8e 100644
--- a/drivers/net/ethernet/intel/ixgbevf/mbx.h
+++ b/drivers/net/ethernet/intel/ixgbevf/mbx.h
@@ -100,6 +100,8 @@ enum ixgbe_pfvf_api_rev {
 #define IXGBE_VF_IPSEC_ADD	0x0d
 #define IXGBE_VF_IPSEC_DEL	0x0e
 
+#define IXGBE_VF_GET_LINK_STATE 0x10 /* get vf link state */
+
 /* length of permanent address message returned from PF */
 #define IXGBE_VF_PERMADDR_MSG_LEN	4
 /* word in permanent address message with the current multicast type */
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index 61d8970c6d1d..a6c3b6fea0ef 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -584,6 +584,46 @@ static s32 ixgbevf_hv_update_xcast_mode(struct ixgbe_hw *hw, int xcast_mode)
 	return -EOPNOTSUPP;
 }
 
+/**
+ * ixgbevf_get_link_state_vf - Get VF link state from PF
+ * @hw: pointer to the HW structure
+ * @link_state: link state storage
+ *
+ * Returns state of the operation error or success.
+ */
+s32 ixgbevf_get_link_state_vf(struct ixgbe_hw *hw, bool *link_state)
+{
+	u32 msgbuf[2];
+	s32 ret_val;
+	s32 err;
+
+	msgbuf[0] = IXGBE_VF_GET_LINK_STATE;
+	msgbuf[1] = 0x0;
+
+	err = ixgbevf_write_msg_read_ack(hw, msgbuf, msgbuf, 2);
+
+	if (err || (msgbuf[0] & IXGBE_VT_MSGTYPE_FAILURE)) {
+		ret_val = IXGBE_ERR_MBX;
+	} else {
+		ret_val = 0;
+		*link_state = msgbuf[1];
+	}
+
+	return ret_val;
+}
+
+/**
+ * ixgbevf_hv_get_link_state_vf - * Hyper-V variant - just a stub.
+ * @hw: unused
+ * @link_state: unused
+ *
+ * Hyper-V variant; there is no mailbox communication.
+ */
+static s32 ixgbevf_hv_get_link_state_vf(struct ixgbe_hw *hw, bool *link_state)
+{
+	return -EOPNOTSUPP;
+}
+
 /**
  *  ixgbevf_set_vfta_vf - Set/Unset VLAN filter table address
  *  @hw: pointer to the HW structure
@@ -968,6 +1008,7 @@ static const struct ixgbe_mac_operations ixgbevf_mac_ops = {
 	.set_rar		= ixgbevf_set_rar_vf,
 	.update_mc_addr_list	= ixgbevf_update_mc_addr_list_vf,
 	.update_xcast_mode	= ixgbevf_update_xcast_mode,
+	.get_link_state		= ixgbevf_get_link_state_vf,
 	.set_uc_addr		= ixgbevf_set_uc_addr_vf,
 	.set_vfta		= ixgbevf_set_vfta_vf,
 	.set_rlpml		= ixgbevf_set_rlpml_vf,
@@ -985,6 +1026,7 @@ static const struct ixgbe_mac_operations ixgbevf_hv_mac_ops = {
 	.set_rar		= ixgbevf_hv_set_rar_vf,
 	.update_mc_addr_list	= ixgbevf_hv_update_mc_addr_list_vf,
 	.update_xcast_mode	= ixgbevf_hv_update_xcast_mode,
+	.get_link_state		= ixgbevf_hv_get_link_state_vf,
 	.set_uc_addr		= ixgbevf_hv_set_uc_addr_vf,
 	.set_vfta		= ixgbevf_hv_set_vfta_vf,
 	.set_rlpml		= ixgbevf_hv_set_rlpml_vf,
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.h b/drivers/net/ethernet/intel/ixgbevf/vf.h
index 54158dac8707..b4eef5b6c172 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.h
@@ -39,6 +39,7 @@ struct ixgbe_mac_operations {
 	s32 (*init_rx_addrs)(struct ixgbe_hw *);
 	s32 (*update_mc_addr_list)(struct ixgbe_hw *, struct net_device *);
 	s32 (*update_xcast_mode)(struct ixgbe_hw *, int);
+	s32 (*get_link_state)(struct ixgbe_hw *hw, bool *link_state);
 	s32 (*enable_mc)(struct ixgbe_hw *);
 	s32 (*disable_mc)(struct ixgbe_hw *);
 	s32 (*clear_vfta)(struct ixgbe_hw *);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
