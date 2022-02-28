Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6CF654C6FFF
	for <lists+intel-wired-lan@lfdr.de>; Mon, 28 Feb 2022 15:49:05 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0F04281D67;
	Mon, 28 Feb 2022 14:49:04 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 015HbTkrk7sF; Mon, 28 Feb 2022 14:49:02 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8968D81B69;
	Mon, 28 Feb 2022 14:49:02 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 441421BF34E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:32:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3AA8740195
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:32:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp2.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Y1eDwBzNaEmk for <intel-wired-lan@lists.osuosl.org>;
 Mon, 28 Feb 2022 11:32:01 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 838DA40012
 for <intel-wired-lan@lists.osuosl.org>; Mon, 28 Feb 2022 11:32:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1646047921; x=1677583921;
 h=from:to:cc:subject:date:message-id;
 bh=kngWTAelMSuSxaqBefohxPQJftxsSVxQwsCeq0qg9Ts=;
 b=oEbrUS+X9/EsqffCrmB9igNXa61Ym+V3T3+7BgDb9VIAW68M/7xVhrij
 /I8tOr2/K4puf7tyqEgmSH68pKGI/oFqBl5BpDf0w8r7gL4+lGLWON99D
 jOqsl3h9DpDoT9EGMMzm04Hx1D4p1CNI5kJdTG9BVIuleUfKKwJ4ZXlM4
 zLf0M3UAzBNO526ppGiFiVUq3otvDGPs7pIKbu8ew65xLzcxeg68oSy9b
 5uq3Qq2eGuQqsfXypodiPBwoi144RPQejepk3onTGOuZ2PzNxgty32qjR
 KDWHuqnQaorxCosA2LqEELd5A8jvHfiRTYsb5/Whiu1e35wlralvDv9Nd A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10271"; a="313579735"
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="313579735"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 03:32:00 -0800
X-IronPort-AV: E=Sophos;i="5.90,142,1643702400"; d="scan'208";a="550202087"
Received: from unknown (HELO slawomir.imu.intel.com) ([10.237.94.16])
 by orsmga008-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 Feb 2022 03:31:59 -0800
From: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 28 Feb 2022 13:27:50 +0000
Message-Id: <20220228132752.17522-1-slawomirx.mrozowicz@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Approved-At: Mon, 28 Feb 2022 14:48:22 +0000
Subject: [Intel-wired-lan] [PATCH net 1/3] ixgbe: add the ability for the PF
 to disable VF link state
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

Add support for ndo_set_vf_link_state the Network Device Option that
allows the PF driver to control the virtual link state of the VF devices.
Without this change a VF cannot be disabled/enabled by the administrator.
In the implementation the auto state takes over PF link state to
VF link setting, the enable state is not supported, the disable state
shut off the VF link regardless of the PF setting.

Signed-off-by: Slawomir Mrozowicz <slawomirx.mrozowicz@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe.h      |   2 +
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c |  11 +-
 drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h  |   2 +
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.c    | 207 ++++++++++++++----
 .../net/ethernet/intel/ixgbe/ixgbe_sriov.h    |   4 +-
 5 files changed, 182 insertions(+), 44 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe.h b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
index 4a69823e6abd..c9bf18086d9c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe.h
@@ -177,6 +177,8 @@ struct vf_data_storage {
 	u16 pf_vlan; /* When set, guest VLAN config not allowed. */
 	u16 pf_qos;
 	u16 tx_rate;
+	int link_enable;
+	int link_state;
 	u8 spoofchk_enabled;
 	bool rss_query_enabled;
 	u8 trusted;
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 89b467006291..e553b1c18ee7 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -5687,6 +5687,9 @@ static void ixgbe_up_complete(struct ixgbe_adapter *adapter)
 	ctrl_ext = IXGBE_READ_REG(hw, IXGBE_CTRL_EXT);
 	ctrl_ext |= IXGBE_CTRL_EXT_PFRSTD;
 	IXGBE_WRITE_REG(hw, IXGBE_CTRL_EXT, ctrl_ext);
+
+	/* update setting rx tx for all active vfs */
+	ixgbe_set_all_vfs(adapter);
 }
 
 void ixgbe_reinit_locked(struct ixgbe_adapter *adapter)
@@ -6144,11 +6147,8 @@ void ixgbe_down(struct ixgbe_adapter *adapter)
 		for (i = 0 ; i < adapter->num_vfs; i++)
 			adapter->vfinfo[i].clear_to_send = false;
 
-		/* ping all the active vfs to let them know we are going down */
-		ixgbe_ping_all_vfs(adapter);
-
-		/* Disable all VFTE/VFRE TX/RX */
-		ixgbe_disable_tx_rx(adapter);
+		/* update setting rx tx for all active vfs */
+		ixgbe_set_all_vfs(adapter);
 	}
 
 	/* disable transmits in the hardware now that interrupts are off */
@@ -10284,6 +10284,7 @@ static const struct net_device_ops ixgbe_netdev_ops = {
 	.ndo_set_vf_vlan	= ixgbe_ndo_set_vf_vlan,
 	.ndo_set_vf_rate	= ixgbe_ndo_set_vf_bw,
 	.ndo_set_vf_spoofchk	= ixgbe_ndo_set_vf_spoofchk,
+	.ndo_set_vf_link_state	= ixgbe_ndo_set_vf_link_state,
 	.ndo_set_vf_rss_query_en = ixgbe_ndo_set_vf_rss_query_en,
 	.ndo_set_vf_trust	= ixgbe_ndo_set_vf_trust,
 	.ndo_get_vf_config	= ixgbe_ndo_get_vf_config,
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
index a148534d7256..8f4316b19278 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_mbx.h
@@ -85,6 +85,8 @@ enum ixgbe_pfvf_api_rev {
 #define IXGBE_VF_IPSEC_ADD	0x0d
 #define IXGBE_VF_IPSEC_DEL	0x0e
 
+#define IXGBE_VF_GET_LINK_STATE 0x10 /* get vf link state */
+
 /* length of permanent address message returned from PF */
 #define IXGBE_VF_PERMADDR_MSG_LEN 4
 /* word in permanent address message with the current multicast type */
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
index 214a38de3f41..7f11c0a8e7a9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.c
@@ -96,6 +96,7 @@ static int __ixgbe_enable_sriov(struct ixgbe_adapter *adapter,
 	for (i = 0; i < num_vfs; i++) {
 		/* enable spoof checking for all VFs */
 		adapter->vfinfo[i].spoofchk_enabled = true;
+		adapter->vfinfo[i].link_enable = true;
 
 		/* We support VF RSS querying only for 82599 and x540
 		 * devices at the moment. These devices share RSS
@@ -820,6 +821,57 @@ static inline void ixgbe_write_qde(struct ixgbe_adapter *adapter, u32 vf,
 	}
 }
 
+/**
+ * ixgbe_set_vf_rx_tx - Set VF rx tx
+ * @adapter: Pointer to adapter struct
+ * @vf: VF identifier
+ *
+ * Set or reset correct transmit and receive for vf
+ **/
+static void ixgbe_set_vf_rx_tx(struct ixgbe_adapter *adapter, int vf)
+{
+	u32 reg_cur_tx, reg_cur_rx, reg_req_tx, reg_req_rx;
+	struct ixgbe_hw *hw = &adapter->hw;
+	u32 reg_offset, vf_shift;
+
+	vf_shift = vf % 32;
+	reg_offset = vf / 32;
+
+	reg_cur_tx = IXGBE_READ_REG(hw, IXGBE_VFTE(reg_offset));
+	reg_cur_rx = IXGBE_READ_REG(hw, IXGBE_VFRE(reg_offset));
+
+	if (adapter->vfinfo[vf].link_enable) {
+		reg_req_tx = reg_cur_tx | 1 << vf_shift;
+		reg_req_rx = reg_cur_rx | 1 << vf_shift;
+	} else {
+		reg_req_tx = reg_cur_tx & ~(1 << vf_shift);
+		reg_req_rx = reg_cur_rx & ~(1 << vf_shift);
+	}
+
+	/* The 82599 cannot support a mix of jumbo and non-jumbo PF/VFs.
+	 * For more info take a look at ixgbe_set_vf_lpe
+	 */
+	if (adapter->hw.mac.type == ixgbe_mac_82599EB) {
+		struct net_device *dev = adapter->netdev;
+		int pf_max_frame = dev->mtu + ETH_HLEN;
+
+#if IS_ENABLED(CONFIG_FCOE)
+		if (dev->features & NETIF_F_FCOE_MTU)
+			pf_max_frame = max_t(int, pf_max_frame,
+					     IXGBE_FCOE_JUMBO_FRAME_SIZE);
+#endif /* CONFIG_FCOE */
+
+		if (pf_max_frame > ETH_FRAME_LEN)
+			reg_req_rx = reg_cur_rx & ~(1 << vf_shift);
+	}
+
+	/* Enable/Disable particular VF */
+	if (reg_cur_tx != reg_req_tx)
+		IXGBE_WRITE_REG(hw, IXGBE_VFTE(reg_offset), reg_req_tx);
+	if (reg_cur_rx != reg_req_rx)
+		IXGBE_WRITE_REG(hw, IXGBE_VFRE(reg_offset), reg_req_rx);
+}
+
 static int ixgbe_vf_reset_msg(struct ixgbe_adapter *adapter, u32 vf)
 {
 	struct ixgbe_ring_feature *vmdq = &adapter->ring_feature[RING_F_VMDQ];
@@ -845,11 +897,6 @@ static int ixgbe_vf_reset_msg(struct ixgbe_adapter *adapter, u32 vf)
 	vf_shift = vf % 32;
 	reg_offset = vf / 32;
 
-	/* enable transmit for vf */
-	reg = IXGBE_READ_REG(hw, IXGBE_VFTE(reg_offset));
-	reg |= BIT(vf_shift);
-	IXGBE_WRITE_REG(hw, IXGBE_VFTE(reg_offset), reg);
-
 	/* force drop enable for all VF Rx queues */
 	reg = IXGBE_QDE_ENABLE;
 	if (adapter->vfinfo[vf].pf_vlan)
@@ -857,27 +904,7 @@ static int ixgbe_vf_reset_msg(struct ixgbe_adapter *adapter, u32 vf)
 
 	ixgbe_write_qde(adapter, vf, reg);
 
-	/* enable receive for vf */
-	reg = IXGBE_READ_REG(hw, IXGBE_VFRE(reg_offset));
-	reg |= BIT(vf_shift);
-	/*
-	 * The 82599 cannot support a mix of jumbo and non-jumbo PF/VFs.
-	 * For more info take a look at ixgbe_set_vf_lpe
-	 */
-	if (adapter->hw.mac.type == ixgbe_mac_82599EB) {
-		struct net_device *dev = adapter->netdev;
-		int pf_max_frame = dev->mtu + ETH_HLEN;
-
-#ifdef CONFIG_FCOE
-		if (dev->features & NETIF_F_FCOE_MTU)
-			pf_max_frame = max_t(int, pf_max_frame,
-					     IXGBE_FCOE_JUMBO_FRAME_SIZE);
-
-#endif /* CONFIG_FCOE */
-		if (pf_max_frame > ETH_FRAME_LEN)
-			reg &= ~BIT(vf_shift);
-	}
-	IXGBE_WRITE_REG(hw, IXGBE_VFRE(reg_offset), reg);
+	ixgbe_set_vf_rx_tx(adapter, vf);
 
 	/* enable VF mailbox for further messages */
 	adapter->vfinfo[vf].clear_to_send = true;
@@ -1202,6 +1229,26 @@ static int ixgbe_update_vf_xcast_mode(struct ixgbe_adapter *adapter,
 	return 0;
 }
 
+static int ixgbe_get_vf_link_state(struct ixgbe_adapter *adapter,
+				   u32 *msgbuf, u32 vf)
+{
+	u32 *link_state = &msgbuf[1];
+
+	/* verify the PF is supporting the correct API */
+	switch (adapter->vfinfo[vf].vf_api) {
+	case ixgbe_mbox_api_12:
+	case ixgbe_mbox_api_13:
+	case ixgbe_mbox_api_14:
+		break;
+	default:
+		return -EOPNOTSUPP;
+	}
+
+	*link_state = adapter->vfinfo[vf].link_enable;
+
+	return 0;
+}
+
 static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 {
 	u32 mbx_size = IXGBE_VFMAILBOX_SIZE;
@@ -1267,6 +1314,9 @@ static int ixgbe_rcv_msg_from_vf(struct ixgbe_adapter *adapter, u32 vf)
 	case IXGBE_VF_UPDATE_XCAST_MODE:
 		retval = ixgbe_update_vf_xcast_mode(adapter, msgbuf, vf);
 		break;
+	case IXGBE_VF_GET_LINK_STATE:
+		retval = ixgbe_get_vf_link_state(adapter, msgbuf, vf);
+		break;
 	case IXGBE_VF_IPSEC_ADD:
 		retval = ixgbe_ipsec_vf_add_sa(adapter, msgbuf, vf);
 		break;
@@ -1322,18 +1372,6 @@ void ixgbe_msg_task(struct ixgbe_adapter *adapter)
 	}
 }
 
-void ixgbe_disable_tx_rx(struct ixgbe_adapter *adapter)
-{
-	struct ixgbe_hw *hw = &adapter->hw;
-
-	/* disable transmit and receive for all vfs */
-	IXGBE_WRITE_REG(hw, IXGBE_VFTE(0), 0);
-	IXGBE_WRITE_REG(hw, IXGBE_VFTE(1), 0);
-
-	IXGBE_WRITE_REG(hw, IXGBE_VFRE(0), 0);
-	IXGBE_WRITE_REG(hw, IXGBE_VFRE(1), 0);
-}
-
 static inline void ixgbe_ping_vf(struct ixgbe_adapter *adapter, int vf)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
@@ -1359,6 +1397,21 @@ void ixgbe_ping_all_vfs(struct ixgbe_adapter *adapter)
 	}
 }
 
+/**
+ * ixgbe_set_all_vfs - update vfs queues
+ * @adapter: Pointer to adapter struct
+ *
+ * Update setting transmit and receive queues for all vfs
+ **/
+void ixgbe_set_all_vfs(struct ixgbe_adapter *adapter)
+{
+	int i;
+
+	for (i = 0 ; i < adapter->num_vfs; i++)
+		ixgbe_set_vf_link_state(adapter, i,
+					adapter->vfinfo[i].link_state);
+}
+
 int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int vf, u8 *mac)
 {
 	struct ixgbe_adapter *adapter = netdev_priv(netdev);
@@ -1656,6 +1709,84 @@ int ixgbe_ndo_set_vf_spoofchk(struct net_device *netdev, int vf, bool setting)
 	return 0;
 }
 
+/**
+ * ixgbe_set_vf_link_state - Set link state
+ * @adapter: Pointer to adapter struct
+ * @vf: VF identifier
+ * @state: required link state
+ *
+ * Set a link force state on/off a single vf
+ **/
+void ixgbe_set_vf_link_state(struct ixgbe_adapter *adapter, int vf, int state)
+{
+	adapter->vfinfo[vf].link_state = state;
+
+	switch (state) {
+	case IFLA_VF_LINK_STATE_AUTO:
+		if (test_bit(__IXGBE_DOWN, &adapter->state))
+			adapter->vfinfo[vf].link_enable = false;
+		else
+			adapter->vfinfo[vf].link_enable = true;
+		break;
+	case IFLA_VF_LINK_STATE_ENABLE:
+		adapter->vfinfo[vf].link_enable = true;
+		break;
+	case IFLA_VF_LINK_STATE_DISABLE:
+		adapter->vfinfo[vf].link_enable = false;
+		break;
+	}
+
+	ixgbe_set_vf_rx_tx(adapter, vf);
+
+	/* restart the VF */
+	adapter->vfinfo[vf].clear_to_send = false;
+	ixgbe_ping_vf(adapter, vf);
+}
+
+/**
+ * ixgbe_ndo_set_vf_link_state - Set link state
+ * @netdev: network interface device structure
+ * @vf: VF identifier
+ * @state: required link state
+ *
+ * Set the link state of a specified VF, regardless of physical link state
+ **/
+int ixgbe_ndo_set_vf_link_state(struct net_device *netdev, int vf, int state)
+{
+	struct ixgbe_adapter *adapter = netdev_priv(netdev);
+	int ret = 0;
+
+	if (vf < 0 || vf >= adapter->num_vfs) {
+		dev_err(&adapter->pdev->dev,
+			"NDO set VF link - invalid VF identifier %d\n", vf);
+		return -EINVAL;
+	}
+
+	switch (state) {
+	case IFLA_VF_LINK_STATE_ENABLE:
+		dev_info(&adapter->pdev->dev,
+			 "NDO set VF %d link state %d - not supported\n",
+			vf, state);
+		break;
+	case IFLA_VF_LINK_STATE_DISABLE:
+		dev_info(&adapter->pdev->dev,
+			 "NDO set VF %d link state disable\n", vf);
+		ixgbe_set_vf_link_state(adapter, vf, state);
+		break;
+	case IFLA_VF_LINK_STATE_AUTO:
+		dev_info(&adapter->pdev->dev,
+			 "NDO set VF %d link state auto\n", vf);
+		ixgbe_set_vf_link_state(adapter, vf, state);
+		break;
+	default:
+		dev_err(&adapter->pdev->dev,
+			"NDO set VF %d - invalid link state %d\n", vf, state);
+		ret = -EINVAL;
+	}
+
+	return ret;
+}
+
 int ixgbe_ndo_set_vf_rss_query_en(struct net_device *netdev, int vf,
 				  bool setting)
 {
diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.h b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.h
index 3ec21923c89c..0690ecb8dfa3 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.h
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_sriov.h
@@ -17,8 +17,8 @@ void ixgbe_restore_vf_multicasts(struct ixgbe_adapter *adapter);
 #endif
 void ixgbe_msg_task(struct ixgbe_adapter *adapter);
 int ixgbe_vf_configuration(struct pci_dev *pdev, unsigned int event_mask);
-void ixgbe_disable_tx_rx(struct ixgbe_adapter *adapter);
 void ixgbe_ping_all_vfs(struct ixgbe_adapter *adapter);
+void ixgbe_set_all_vfs(struct ixgbe_adapter *adapter);
 int ixgbe_ndo_set_vf_mac(struct net_device *netdev, int queue, u8 *mac);
 int ixgbe_ndo_set_vf_vlan(struct net_device *netdev, int queue, u16 vlan,
 			   u8 qos, __be16 vlan_proto);
@@ -31,7 +31,9 @@ int ixgbe_ndo_set_vf_rss_query_en(struct net_device *netdev, int vf,
 int ixgbe_ndo_set_vf_trust(struct net_device *netdev, int vf, bool setting);
 int ixgbe_ndo_get_vf_config(struct net_device *netdev,
 			    int vf, struct ifla_vf_info *ivi);
+int ixgbe_ndo_set_vf_link_state(struct net_device *netdev, int vf, int state);
 void ixgbe_check_vf_rate_limit(struct ixgbe_adapter *adapter);
+void ixgbe_set_vf_link_state(struct ixgbe_adapter *adapter, int vf, int state);
 int ixgbe_disable_sriov(struct ixgbe_adapter *adapter);
 #ifdef CONFIG_PCI_IOV
 void ixgbe_enable_sriov(struct ixgbe_adapter *adapter, unsigned int max_vfs);
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
