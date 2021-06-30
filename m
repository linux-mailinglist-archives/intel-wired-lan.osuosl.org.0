Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EC85E3B7ECD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 10:18:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 895B060590;
	Wed, 30 Jun 2021 08:18:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6-f8NWtCxB6z; Wed, 30 Jun 2021 08:18:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 89FA96058B;
	Wed, 30 Jun 2021 08:18:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 09CE81BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9BE8740645
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:57 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 5fr5Xq76H0YJ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 08:17:56 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6E04C40602
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:56 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="272166285"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="272166285"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:17:56 -0700
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="457128363"
Received: from unknown (HELO localhost.igk.intel.com) ([10.237.94.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:17:54 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Jun 2021 10:15:30 +0200
Message-Id: <20210630081532.3069914-4-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
References: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 3/5] ixgbevf: Add legacy suffix to old
 API mailbox functions
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

Add legacy suffix to mailbox functions which should be backwards compatible
with older PF drivers. Communication during API negotiation always has to
be done using the earlier implementation.

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h      |  2 +-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c |  2 +-
 drivers/net/ethernet/intel/ixgbevf/mbx.c          | 14 +++++++-------
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index a0e325774819..5d9284dd04dc 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -429,7 +429,7 @@ extern const struct ixgbevf_info ixgbevf_82599_vf_info;
 extern const struct ixgbevf_info ixgbevf_X540_vf_info;
 extern const struct ixgbevf_info ixgbevf_X550_vf_info;
 extern const struct ixgbevf_info ixgbevf_X550EM_x_vf_info;
-extern const struct ixgbe_mbx_operations ixgbevf_mbx_ops;
+extern const struct ixgbe_mbx_operations ixgbevf_mbx_ops_legacy;
 extern const struct ixgbevf_info ixgbevf_x550em_a_vf_info;
 
 extern const struct ixgbevf_info ixgbevf_82599_vf_hv_info;
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
index dc56931fc1dc..e9b99929588b 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf_main.c
@@ -4567,7 +4567,7 @@ static int ixgbevf_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	memcpy(&hw->mac.ops, ii->mac_ops, sizeof(hw->mac.ops));
 	hw->mac.type  = ii->mac;
 
-	memcpy(&hw->mbx.ops, &ixgbevf_mbx_ops,
+	memcpy(&hw->mbx.ops, &ixgbevf_mbx_ops_legacy,
 	       sizeof(struct ixgbe_mbx_operations));
 
 	/* setup the private structure */
diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.c b/drivers/net/ethernet/intel/ixgbevf/mbx.c
index 2c3762cb467d..0edcfcbf5296 100644
--- a/drivers/net/ethernet/intel/ixgbevf/mbx.c
+++ b/drivers/net/ethernet/intel/ixgbevf/mbx.c
@@ -224,14 +224,14 @@ static s32 ixgbevf_obtain_mbx_lock_vf(struct ixgbe_hw *hw)
 }
 
 /**
- *  ixgbevf_write_mbx_vf - Write a message to the mailbox
+ *  ixgbevf_write_mbx_vf_legacy - Write a message to the mailbox
  *  @hw: pointer to the HW structure
  *  @msg: The message buffer
  *  @size: Length of buffer
  *
  *  returns 0 if it successfully copied message into the buffer
  **/
-static s32 ixgbevf_write_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size)
+static s32 ixgbevf_write_mbx_vf_legacy(struct ixgbe_hw *hw, u32 *msg, u16 size)
 {
 	s32 ret_val;
 	u16 i;
@@ -260,14 +260,14 @@ static s32 ixgbevf_write_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size)
 }
 
 /**
- *  ixgbevf_read_mbx_vf - Reads a message from the inbox intended for VF
+ *  ixgbevf_read_mbx_vf_legacy - Reads a message from the inbox intended for VF
  *  @hw: pointer to the HW structure
  *  @msg: The message buffer
  *  @size: Length of buffer
  *
  *  returns 0 if it successfully read message from buffer
  **/
-static s32 ixgbevf_read_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size)
+static s32 ixgbevf_read_mbx_vf_legacy(struct ixgbe_hw *hw, u32 *msg, u16 size)
 {
 	s32 ret_val = 0;
 	u16 i;
@@ -318,10 +318,10 @@ static s32 ixgbevf_init_mbx_params_vf(struct ixgbe_hw *hw)
 	return 0;
 }
 
-const struct ixgbe_mbx_operations ixgbevf_mbx_ops = {
+const struct ixgbe_mbx_operations ixgbevf_mbx_ops_legacy = {
 	.init_params	= ixgbevf_init_mbx_params_vf,
-	.read		= ixgbevf_read_mbx_vf,
-	.write		= ixgbevf_write_mbx_vf,
+	.read		= ixgbevf_read_mbx_vf_legacy,
+	.write		= ixgbevf_write_mbx_vf_legacy,
 	.read_posted	= ixgbevf_read_posted_mbx,
 	.write_posted	= ixgbevf_write_posted_mbx,
 	.check_for_msg	= ixgbevf_check_for_msg_vf,
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
