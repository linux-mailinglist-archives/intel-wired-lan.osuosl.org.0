Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0B1B43B70F5
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 12:50:38 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6E827607F9;
	Tue, 29 Jun 2021 10:50:36 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id xpcHrI_mZzhK; Tue, 29 Jun 2021 10:50:35 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 696CA607C8;
	Tue, 29 Jun 2021 10:50:35 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id B83E41BF9AD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 10:50:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id A6849835BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 10:50:26 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id C_X9dzWPk4i3 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 10:50:25 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1454E835B9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 10:50:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="229751036"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="229751036"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 03:50:24 -0700
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="456725541"
Received: from unknown (HELO localhost.igk.intel.com) ([10.237.94.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 03:50:23 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 29 Jun 2021 12:49:38 +0200
Message-Id: <20210629104941.2460721-3-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210629104941.2460721-1-radoslawx.tyl@intel.com>
References: <20210629104941.2460721-1-radoslawx.tyl@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 2/5] ixgbevf: Improve error handling in
 mailbox
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

Add new handling for error codes:
 IXGBE_ERR_CONFIG - ixgbe_mbx_operations is not correctly set
 IXGBE_ERR_TIMEOUT - mailbox operation, e.g. poll for message, timeout

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/defines.h |  3 +++
 drivers/net/ethernet/intel/ixgbevf/mbx.c     | 14 ++++++++++----
 drivers/net/ethernet/intel/ixgbevf/mbx.h     |  1 -
 3 files changed, 13 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/defines.h b/drivers/net/ethernet/intel/ixgbevf/defines.h
index 6bace746eaac..46fb1f9eab7f 100644
--- a/drivers/net/ethernet/intel/ixgbevf/defines.h
+++ b/drivers/net/ethernet/intel/ixgbevf/defines.h
@@ -281,6 +281,9 @@ struct ixgbe_adv_tx_context_desc {
 #define IXGBE_ERR_INVALID_MAC_ADDR	-1
 #define IXGBE_ERR_RESET_FAILED		-2
 #define IXGBE_ERR_INVALID_ARGUMENT	-3
+#define IXGBE_ERR_CONFIG		-4
+#define IXGBE_ERR_MBX			-5
+#define IXGBE_ERR_TIMEOUT		-6
 
 /* Transmit Config masks */
 #define IXGBE_TXDCTL_ENABLE		0x02000000 /* Ena specific Tx Queue */
diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.c b/drivers/net/ethernet/intel/ixgbevf/mbx.c
index 6bc1953263b9..2c3762cb467d 100644
--- a/drivers/net/ethernet/intel/ixgbevf/mbx.c
+++ b/drivers/net/ethernet/intel/ixgbevf/mbx.c
@@ -15,6 +15,9 @@ static s32 ixgbevf_poll_for_msg(struct ixgbe_hw *hw)
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 	int countdown = mbx->timeout;
 
+	if (!countdown || !mbx->ops.check_for_msg)
+		return IXGBE_ERR_CONFIG;
+
 	while (countdown && mbx->ops.check_for_msg(hw)) {
 		countdown--;
 		udelay(mbx->udelay);
@@ -24,7 +27,7 @@ static s32 ixgbevf_poll_for_msg(struct ixgbe_hw *hw)
 	if (!countdown)
 		mbx->timeout = 0;
 
-	return countdown ? 0 : IXGBE_ERR_MBX;
+	return countdown ? 0 : IXGBE_ERR_TIMEOUT;
 }
 
 /**
@@ -38,6 +41,9 @@ static s32 ixgbevf_poll_for_ack(struct ixgbe_hw *hw)
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
 	int countdown = mbx->timeout;
 
+	if (!countdown || !mbx->ops.check_for_ack)
+		return IXGBE_ERR_CONFIG;
+
 	while (countdown && mbx->ops.check_for_ack(hw)) {
 		countdown--;
 		udelay(mbx->udelay);
@@ -47,7 +53,7 @@ static s32 ixgbevf_poll_for_ack(struct ixgbe_hw *hw)
 	if (!countdown)
 		mbx->timeout = 0;
 
-	return countdown ? 0 : IXGBE_ERR_MBX;
+	return countdown ? 0 : IXGBE_ERR_TIMEOUT;
 }
 
 /**
@@ -62,7 +68,7 @@ static s32 ixgbevf_poll_for_ack(struct ixgbe_hw *hw)
 static s32 ixgbevf_read_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
-	s32 ret_val = IXGBE_ERR_MBX;
+	s32 ret_val = IXGBE_ERR_CONFIG;
 
 	if (!mbx->ops.read)
 		goto out;
@@ -88,7 +94,7 @@ static s32 ixgbevf_read_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)
 static s32 ixgbevf_write_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)
 {
 	struct ixgbe_mbx_info *mbx = &hw->mbx;
-	s32 ret_val = IXGBE_ERR_MBX;
+	s32 ret_val = IXGBE_ERR_CONFIG;
 
 	/* exit if either we can't write or there isn't a defined timeout */
 	if (!mbx->ops.write || !mbx->timeout)
diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.h b/drivers/net/ethernet/intel/ixgbevf/mbx.h
index a461b7d16206..b3b83c95babf 100644
--- a/drivers/net/ethernet/intel/ixgbevf/mbx.h
+++ b/drivers/net/ethernet/intel/ixgbevf/mbx.h
@@ -7,7 +7,6 @@
 #include "vf.h"
 
 #define IXGBE_VFMAILBOX_SIZE	16 /* 16 32 bit words - 64 bytes */
-#define IXGBE_ERR_MBX		-100
 
 #define IXGBE_VFMAILBOX		0x002FC
 #define IXGBE_VFMBMEM		0x00200
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
