Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B9C833B7ECF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 10:18:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2DE3A4023E;
	Wed, 30 Jun 2021 08:18:20 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id WSFnIkzeULKs; Wed, 30 Jun 2021 08:18:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 2A37740184;
	Wed, 30 Jun 2021 08:18:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 27EC01BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:18:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 2291A40602
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:18:00 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mvuG6N5Ckja3 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 08:17:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 25F2E4063B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:59 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="272166289"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="272166289"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:17:58 -0700
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="457128376"
Received: from unknown (HELO localhost.igk.intel.com) ([10.237.94.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:17:57 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Jun 2021 10:15:32 +0200
Message-Id: <20210630081532.3069914-6-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
References: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 5/5] ixgbevf: Add support for new
 mailbox communication between PF and VF
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
Cc: Radoslaw Tyl <radoslawx.tyl@intel.com>, piotrx.skajewski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Provide improved mailbox communication, between PF and VF,
which is defined as API version 1.5.

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ipsec.c        |  1 +
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  9 +++++++++
 drivers/net/ethernet/intel/ixgbevf/mbx.h          |  1 +
 drivers/net/ethernet/intel/ixgbevf/vf.c           | 14 ++++++++++++--
 4 files changed, 23 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index 793da1fba81c..e68b55a239ec 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -617,6 +617,7 @@ void ixgbevf_init_ipsec_offload(struct ixgbevf_adapter *adapter)
 
 	switch (adapter->hw.api_version) {
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_15:
 		break;
 	default:
 		return;
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index e9b99929588b..403b25ecf6bd 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -2268,6 +2268,7 @@ static void ixgbevf_negotiate_api(struct ixgbevf_adapter *adapter)
 {
 	struct ixgbe_hw *hw = &adapter->hw;
 	static const int api[] = {
+		ixgbe_mbox_api_15,
 		ixgbe_mbox_api_14,
 		ixgbe_mbox_api_13,
 		ixgbe_mbox_api_12,
@@ -2286,6 +2287,12 @@ static void ixgbevf_negotiate_api(struct ixgbevf_adapter *adapter)
 		idx++;
 	}
 
+	if (hw->api_version >= ixgbe_mbox_api_15) {
+		hw->mbx.ops.init_params(hw);
+		memcpy(&hw->mbx.ops, &ixgbevf_mbx_ops,
+		       sizeof(struct ixgbe_mbx_operations));
+	}
+
 	spin_unlock_bh(&adapter->mbx_lock);
 }
 
@@ -2629,6 +2636,7 @@ static void ixgbevf_set_num_queues(struct ixgbevf_adapter *adapter)
 		case ixgbe_mbox_api_12:
 		case ixgbe_mbox_api_13:
 		case ixgbe_mbox_api_14:
+		case ixgbe_mbox_api_15:
 			if (adapter->xdp_prog &&
 			    hw->mac.max_tx_queues == rss)
 				rss = rss > 3 ? 2 : 1;
@@ -4627,6 +4635,7 @@ static int ixgbevf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_15:
 		netdev->max_mtu = IXGBE_MAX_JUMBO_FRAME_SIZE -
 				  (ETH_HLEN + ETH_FCS_LEN);
 		break;
diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.h b/drivers/net/ethernet/intel/ixgbevf/mbx.h
index b3b83c95babf..7346ccf014a5 100644
--- a/drivers/net/ethernet/intel/ixgbevf/mbx.h
+++ b/drivers/net/ethernet/intel/ixgbevf/mbx.h
@@ -65,6 +65,7 @@ enum ixgbe_pfvf_api_rev {
 	ixgbe_mbox_api_12,	/* API version 1.2, linux/freebsd VF driver */
 	ixgbe_mbox_api_13,	/* API version 1.3, linux/freebsd VF driver */
 	ixgbe_mbox_api_14,	/* API version 1.4, linux/freebsd VF driver */
+	ixgbe_mbox_api_15,	/* API version 1.5, linux/freebsd VF driver */
 	/* This value should always be last */
 	ixgbe_mbox_api_unknown,	/* indicates that API version is not known */
 };
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index ac0e94d70a09..e9e1926f7585 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -74,6 +74,9 @@ static s32 ixgbevf_reset_hw_vf(struct ixgbe_hw *hw)
 
 	/* reset the api version */
 	hw->api_version = ixgbe_mbox_api_10;
+	hw->mbx.ops.init_params(hw);
+	memcpy(&hw->mbx.ops, &ixgbevf_mbx_ops_legacy,
+	       sizeof(struct ixgbe_mbx_operations));
 
 	IXGBE_WRITE_REG(hw, IXGBE_VFCTRL, IXGBE_CTRL_RST);
 	IXGBE_WRITE_FLUSH(hw);
@@ -310,6 +313,7 @@ int ixgbevf_get_reta_locked(struct ixgbe_hw *hw, u32 *reta, int num_rx_queues)
 	 * is not supported for this device type.
 	 */
 	switch (hw->api_version) {
+	case ixgbe_mbox_api_15:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_12:
@@ -378,6 +382,7 @@ int ixgbevf_get_rss_key_locked(struct ixgbe_hw *hw, u8 *rss_key)
 	 * or if the operation is not supported for this device type.
 	 */
 	switch (hw->api_version) {
+	case ixgbe_mbox_api_15:
 	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_12:
@@ -544,8 +549,9 @@ static s32 ixgbevf_update_xcast_mode(struct ixgbe_hw *hw, int xcast_mode)
 		if (xcast_mode == IXGBEVF_XCAST_MODE_PROMISC)
 			return -EOPNOTSUPP;
 		fallthrough;
-	case ixgbe_mbox_api_14:
 	case ixgbe_mbox_api_13:
+	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_15:
 		break;
 	default:
 		return -EOPNOTSUPP;
@@ -704,8 +710,11 @@ static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *hw,
 	/* if the read failed it could just be a mailbox collision, best wait
 	 * until we are called again and don't report an error
 	 */
-	if (mbx->ops.read(hw, &in_msg, 1))
+	if (mbx->ops.read(hw, &in_msg, 1)) {
+		if (hw->api_version >= ixgbe_mbox_api_15)
+			mac->get_link_status = false;
 		goto out;
+	}
 
 	if (!(in_msg & IXGBE_VT_MSGTYPE_CTS)) {
 		/* msg is not CTS and is NACK we must have lost CTS status */
@@ -901,6 +910,7 @@ int ixgbevf_get_queues(struct ixgbe_hw *hw, unsigned int *num_tcs,
 	case ixgbe_mbox_api_12:
 	case ixgbe_mbox_api_13:
 	case ixgbe_mbox_api_14:
+	case ixgbe_mbox_api_15:
 		break;
 	default:
 		return 0;
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
