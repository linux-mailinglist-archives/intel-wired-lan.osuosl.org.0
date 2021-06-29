Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BBB123B70F8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 29 Jun 2021 12:50:50 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id EB283402DD;
	Tue, 29 Jun 2021 10:50:48 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5RBE9HfLIvTd; Tue, 29 Jun 2021 10:50:47 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64DBB401AF;
	Tue, 29 Jun 2021 10:50:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2F9251BF2F9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 10:50:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 15014402DC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 10:50:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IYXhIEZbiY0K for <intel-wired-lan@lists.osuosl.org>;
 Tue, 29 Jun 2021 10:50:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id CF1CD401AF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 29 Jun 2021 10:50:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10029"; a="229751040"
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="229751040"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 03:50:26 -0700
X-IronPort-AV: E=Sophos;i="5.83,308,1616482800"; d="scan'208";a="456725552"
Received: from unknown (HELO localhost.igk.intel.com) ([10.237.94.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 Jun 2021 03:50:25 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 29 Jun 2021 12:49:40 +0200
Message-Id: <20210629104941.2460721-5-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210629104941.2460721-1-radoslawx.tyl@intel.com>
References: <20210629104941.2460721-1-radoslawx.tyl@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 4/5] ixgbevf: Mailbox improvements
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

Improve reliability of the mailbox communication and remove
its potential flaws that may lead to the undefined or faulty behavior.

Recently some users reported issues on ESX with 10G Intel NICs which were
found to be caused by incorrect implementation of the PF-VF mailbox
communication.

Technical investigation highlighted areas to improve in the communication
between PF or VF that wants to send the message (sender) and the other
part which receives the message (receiver):

 - Locking the mailbox when the sender wants to send a message
 - Releasing the mailbox when the communication ends
 - Returning the result of the mailbox message execution

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/defines.h |   1 +
 drivers/net/ethernet/intel/ixgbevf/ipsec.c   |   8 +-
 drivers/net/ethernet/intel/ixgbevf/ixgbevf.h |   5 +
 drivers/net/ethernet/intel/ixgbevf/mbx.c     | 315 +++++++++++++++----
 drivers/net/ethernet/intel/ixgbevf/vf.c      |  17 +-
 drivers/net/ethernet/intel/ixgbevf/vf.h      |   5 +-
 6 files changed, 267 insertions(+), 84 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/defines.h b/drivers/net/ethernet/intel/ixgbevf/defines.h
index 46fb1f9eab7f..5f08779c0e4e 100644
--- a/drivers/net/ethernet/intel/ixgbevf/defines.h
+++ b/drivers/net/ethernet/intel/ixgbevf/defines.h
@@ -284,6 +284,7 @@ struct ixgbe_adv_tx_context_desc {
 #define IXGBE_ERR_CONFIG		-4
 #define IXGBE_ERR_MBX			-5
 #define IXGBE_ERR_TIMEOUT		-6
+#define IXGBE_ERR_PARAM			-7
 
 /* Transmit Config masks */
 #define IXGBE_TXDCTL_ENABLE		0x02000000 /* Ena specific Tx Queue */
diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index d235d653d514..793da1fba81c 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -40,11 +40,11 @@ static int ixgbevf_ipsec_set_pf_sa(struct ixgbevf_adapter *adapter,
 
 	spin_lock_bh(&adapter->mbx_lock);
 
-	ret = hw->mbx.ops.write_posted(hw, msgbuf, IXGBE_VFMAILBOX_SIZE);
+	ret = ixgbevf_write_mbx(hw, msgbuf, IXGBE_VFMAILBOX_SIZE);
 	if (ret)
 		goto out;
 
-	ret = hw->mbx.ops.read_posted(hw, msgbuf, 2);
+	ret = ixgbevf_poll_mbx(hw, msgbuf, 2);
 	if (ret)
 		goto out;
 
@@ -77,11 +77,11 @@ static int ixgbevf_ipsec_del_pf_sa(struct ixgbevf_adapter *adapter, int pfsa)
 
 	spin_lock_bh(&adapter->mbx_lock);
 
-	err = hw->mbx.ops.write_posted(hw, msgbuf, 2);
+	err = ixgbevf_write_mbx(hw, msgbuf, 2);
 	if (err)
 		goto out;
 
-	err = hw->mbx.ops.read_posted(hw, msgbuf, 2);
+	err = ixgbevf_poll_mbx(hw, msgbuf, 2);
 	if (err)
 		goto out;
 
diff --git a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
index 5d9284dd04dc..e257390a4f6a 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/ixgbevf.h
@@ -429,6 +429,7 @@ extern const struct ixgbevf_info ixgbevf_82599_vf_info;
 extern const struct ixgbevf_info ixgbevf_X540_vf_info;
 extern const struct ixgbevf_info ixgbevf_X550_vf_info;
 extern const struct ixgbevf_info ixgbevf_X550EM_x_vf_info;
+extern const struct ixgbe_mbx_operations ixgbevf_mbx_ops;
 extern const struct ixgbe_mbx_operations ixgbevf_mbx_ops_legacy;
 extern const struct ixgbevf_info ixgbevf_x550em_a_vf_info;
 
@@ -491,4 +492,8 @@ void ixgbe_napi_del_all(struct ixgbevf_adapter *adapter);
 
 #define hw_dbg(hw, format, arg...) \
 	netdev_dbg(ixgbevf_hw_to_netdev(hw), format, ## arg)
+
+s32 ixgbevf_poll_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size);
+s32 ixgbevf_write_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size);
+
 #endif /* _IXGBEVF_H_ */
diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.c b/drivers/net/ethernet/intel/ixgbevf/mbx.c
index 0edcfcbf5296..805694aebd44 100644
--- a/drivers/net/ethernet/intel/ixgbevf/mbx.c
+++ b/drivers/net/ethernet/intel/ixgbevf/mbx.c
@@ -23,10 +23,6 @@ static s32 ixgbevf_poll_for_msg(struct ixgbe_hw *hw)
 		udelay(mbx->udelay);
 	}
 
-	/* if we failed, all future posted messages fail until reset */
-	if (!countdown)
-		mbx->timeout = 0;
-
 	return countdown ? 0 : IXGBE_ERR_TIMEOUT;
 }
 
@@ -49,82 +45,74 @@ static s32 ixgbevf_poll_for_ack(struct ixgbe_hw *hw)
 		udelay(mbx->udelay);
 	}
 
-	/* if we failed, all future posted messages fail until reset */
-	if (!countdown)
-		mbx->timeout = 0;
-
 	return countdown ? 0 : IXGBE_ERR_TIMEOUT;
 }
 
 /**
- *  ixgbevf_read_posted_mbx - Wait for message notification and receive message
- *  @hw: pointer to the HW structure
- *  @msg: The message buffer
- *  @size: Length of buffer
+ * ixgbevf_read_mailbox_vf - read VF's mailbox register
+ * @hw: pointer to the HW structure
  *
- *  returns 0 if it successfully received a message notification and
- *  copied it into the receive buffer.
+ * This function is used to read the mailbox register dedicated for VF without
+ * losing the read to clear status bits.
  **/
-static s32 ixgbevf_read_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)
+static u32 ixgbevf_read_mailbox_vf(struct ixgbe_hw *hw)
 {
-	struct ixgbe_mbx_info *mbx = &hw->mbx;
-	s32 ret_val = IXGBE_ERR_CONFIG;
+	u32 vf_mailbox = IXGBE_READ_REG(hw, IXGBE_VFMAILBOX);
 
-	if (!mbx->ops.read)
-		goto out;
+	vf_mailbox |= hw->mbx.vf_mailbox;
+	hw->mbx.vf_mailbox |= vf_mailbox & IXGBE_VFMAILBOX_R2C_BITS;
 
-	ret_val = ixgbevf_poll_for_msg(hw);
-
-	/* if ack received read message, otherwise we timed out */
-	if (!ret_val)
-		ret_val = mbx->ops.read(hw, msg, size);
-out:
-	return ret_val;
+	return vf_mailbox;
 }
 
 /**
- *  ixgbevf_write_posted_mbx - Write a message to the mailbox, wait for ack
- *  @hw: pointer to the HW structure
- *  @msg: The message buffer
- *  @size: Length of buffer
+ * ixgbevf_clear_msg_vf - clear PF status bit
+ * @hw: pointer to the HW structure
  *
- *  returns 0 if it successfully copied message into the buffer and
- *  received an ack to that message within delay * timeout period
+ * This function is used to clear PFSTS bit in the VFMAILBOX register
  **/
-static s32 ixgbevf_write_posted_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)
+static void ixgbevf_clear_msg_vf(struct ixgbe_hw *hw)
 {
-	struct ixgbe_mbx_info *mbx = &hw->mbx;
-	s32 ret_val = IXGBE_ERR_CONFIG;
+	u32 vf_mailbox = ixgbevf_read_mailbox_vf(hw);
 
-	/* exit if either we can't write or there isn't a defined timeout */
-	if (!mbx->ops.write || !mbx->timeout)
-		goto out;
+	if (vf_mailbox & IXGBE_VFMAILBOX_PFSTS) {
+		hw->mbx.stats.reqs++;
+		hw->mbx.vf_mailbox &= ~IXGBE_VFMAILBOX_PFSTS;
+	}
+}
 
-	/* send msg */
-	ret_val = mbx->ops.write(hw, msg, size);
+/**
+ * ixgbevf_clear_ack_vf - clear PF ACK bit
+ * @hw: pointer to the HW structure
+ *
+ * This function is used to clear PFACK bit in the VFMAILBOX register
+ **/
+static void ixgbevf_clear_ack_vf(struct ixgbe_hw *hw)
+{
+	u32 vf_mailbox = ixgbevf_read_mailbox_vf(hw);
 
-	/* if msg sent wait until we receive an ack */
-	if (!ret_val)
-		ret_val = ixgbevf_poll_for_ack(hw);
-out:
-	return ret_val;
+	if (vf_mailbox & IXGBE_VFMAILBOX_PFACK) {
+		hw->mbx.stats.acks++;
+		hw->mbx.vf_mailbox &= ~IXGBE_VFMAILBOX_PFACK;
+	}
 }
 
 /**
- *  ixgbevf_read_v2p_mailbox - read v2p mailbox
- *  @hw: pointer to the HW structure
+ * ixgbevf_clear_rst_vf - clear PF reset bit
+ * @hw: pointer to the HW structure
  *
- *  This function is used to read the v2p mailbox without losing the read to
- *  clear status bits.
+ * This function is used to clear reset indication and reset done bit in
+ * VFMAILBOX register after reset the shared resources and the reset sequence.
  **/
-static u32 ixgbevf_read_v2p_mailbox(struct ixgbe_hw *hw)
+static void ixgbevf_clear_rst_vf(struct ixgbe_hw *hw)
 {
-	u32 v2p_mailbox = IXGBE_READ_REG(hw, IXGBE_VFMAILBOX);
-
-	v2p_mailbox |= hw->mbx.v2p_mailbox;
-	hw->mbx.v2p_mailbox |= v2p_mailbox & IXGBE_VFMAILBOX_R2C_BITS;
+	u32 vf_mailbox = ixgbevf_read_mailbox_vf(hw);
 
-	return v2p_mailbox;
+	if (vf_mailbox & (IXGBE_VFMAILBOX_RSTI | IXGBE_VFMAILBOX_RSTD)) {
+		hw->mbx.stats.rsts++;
+		hw->mbx.vf_mailbox &= ~(IXGBE_VFMAILBOX_RSTI |
+					IXGBE_VFMAILBOX_RSTD);
+	}
 }
 
 /**
@@ -137,14 +125,12 @@ static u32 ixgbevf_read_v2p_mailbox(struct ixgbe_hw *hw)
  **/
 static s32 ixgbevf_check_for_bit_vf(struct ixgbe_hw *hw, u32 mask)
 {
-	u32 v2p_mailbox = ixgbevf_read_v2p_mailbox(hw);
+	u32 vf_mailbox = ixgbevf_read_mailbox_vf(hw);
 	s32 ret_val = IXGBE_ERR_MBX;
 
-	if (v2p_mailbox & mask)
+	if (vf_mailbox & mask)
 		ret_val = 0;
 
-	hw->mbx.v2p_mailbox &= ~mask;
-
 	return ret_val;
 }
 
@@ -178,6 +164,7 @@ static s32 ixgbevf_check_for_ack_vf(struct ixgbe_hw *hw)
 
 	if (!ixgbevf_check_for_bit_vf(hw, IXGBE_VFMAILBOX_PFACK)) {
 		ret_val = 0;
+		ixgbevf_clear_ack_vf(hw);
 		hw->mbx.stats.acks++;
 	}
 
@@ -197,6 +184,7 @@ static s32 ixgbevf_check_for_rst_vf(struct ixgbe_hw *hw)
 	if (!ixgbevf_check_for_bit_vf(hw, (IXGBE_VFMAILBOX_RSTD |
 					   IXGBE_VFMAILBOX_RSTI))) {
 		ret_val = 0;
+		ixgbevf_clear_rst_vf(hw);
 		hw->mbx.stats.rsts++;
 	}
 
@@ -211,14 +199,98 @@ static s32 ixgbevf_check_for_rst_vf(struct ixgbe_hw *hw)
  **/
 static s32 ixgbevf_obtain_mbx_lock_vf(struct ixgbe_hw *hw)
 {
-	s32 ret_val = IXGBE_ERR_MBX;
+	struct ixgbe_mbx_info *mbx = &hw->mbx;
+	s32 ret_val = IXGBE_ERR_CONFIG;
+	int countdown = mbx->timeout;
+	u32 vf_mailbox;
 
-	/* Take ownership of the buffer */
-	IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, IXGBE_VFMAILBOX_VFU);
+	if (!mbx->timeout)
+		return ret_val;
 
-	/* reserve mailbox for VF use */
-	if (ixgbevf_read_v2p_mailbox(hw) & IXGBE_VFMAILBOX_VFU)
-		ret_val = 0;
+	while (countdown--) {
+		/* Reserve mailbox for VF use */
+		vf_mailbox = ixgbevf_read_mailbox_vf(hw);
+		vf_mailbox |= IXGBE_VFMAILBOX_VFU;
+		IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, vf_mailbox);
+
+		/* Verify that VF is the owner of the lock */
+		if (ixgbevf_read_mailbox_vf(hw) & IXGBE_VFMAILBOX_VFU) {
+			ret_val = 0;
+			break;
+		}
+
+		/* Wait a bit before trying again */
+		udelay(mbx->udelay);
+	}
+
+	if (ret_val)
+		ret_val = IXGBE_ERR_TIMEOUT;
+
+	return ret_val;
+}
+
+/**
+ * ixgbevf_release_mbx_lock_vf - release mailbox lock
+ * @hw: pointer to the HW structure
+ **/
+static void ixgbevf_release_mbx_lock_vf(struct ixgbe_hw *hw)
+{
+	u32 vf_mailbox;
+
+	/* Return ownership of the buffer */
+	vf_mailbox = ixgbevf_read_mailbox_vf(hw);
+	vf_mailbox &= ~IXGBE_VFMAILBOX_VFU;
+	IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, vf_mailbox);
+}
+
+/**
+ * ixgbevf_release_mbx_lock_vf_legacy - release mailbox lock
+ * @hw: pointer to the HW structure
+ **/
+static void ixgbevf_release_mbx_lock_vf_legacy(struct ixgbe_hw *__always_unused hw)
+{
+}
+
+/**
+ *  ixgbevf_write_mbx_vf - Write a message to the mailbox
+ *  @hw: pointer to the HW structure
+ *  @msg: The message buffer
+ *  @size: Length of buffer
+ *
+ *  returns 0 if it successfully copied message into the buffer
+ **/
+static s32 ixgbevf_write_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size)
+{
+	u32 vf_mailbox;
+	s32 ret_val;
+	u16 i;
+
+	/* lock the mailbox to prevent PF/VF race condition */
+	ret_val = ixgbevf_obtain_mbx_lock_vf(hw);
+	if (ret_val)
+		goto out_no_write;
+
+	/* flush msg and acks as we are overwriting the message buffer */
+	ixgbevf_clear_msg_vf(hw);
+	ixgbevf_clear_ack_vf(hw);
+
+	/* copy the caller specified message to the mailbox memory buffer */
+	for (i = 0; i < size; i++)
+		IXGBE_WRITE_REG_ARRAY(hw, IXGBE_VFMBMEM, i, msg[i]);
+
+	/* update stats */
+	hw->mbx.stats.msgs_tx++;
+
+	/* interrupt the PF to tell it a message has been sent */
+	vf_mailbox = ixgbevf_read_mailbox_vf(hw);
+	vf_mailbox |= IXGBE_VFMAILBOX_REQ;
+	IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, vf_mailbox);
+
+	/* if msg sent wait until we receive an ack */
+	ret_val = ixgbevf_poll_for_ack(hw);
+
+out_no_write:
+	hw->mbx.ops.release(hw);
 
 	return ret_val;
 }
@@ -243,7 +315,9 @@ static s32 ixgbevf_write_mbx_vf_legacy(struct ixgbe_hw *hw, u32 *msg, u16 size)
 
 	/* flush msg and acks as we are overwriting the message buffer */
 	ixgbevf_check_for_msg_vf(hw);
+	ixgbevf_clear_msg_vf(hw);
 	ixgbevf_check_for_ack_vf(hw);
+	ixgbevf_clear_ack_vf(hw);
 
 	/* copy the caller specified message to the mailbox memory buffer */
 	for (i = 0; i < size; i++)
@@ -259,6 +333,42 @@ static s32 ixgbevf_write_mbx_vf_legacy(struct ixgbe_hw *hw, u32 *msg, u16 size)
 	return ret_val;
 }
 
+/**
+ *  ixgbevf_read_mbx_vf - Reads a message from the inbox intended for VF
+ *  @hw: pointer to the HW structure
+ *  @msg: The message buffer
+ *  @size: Length of buffer
+ *
+ *  returns 0 if it successfully read message from buffer
+ **/
+static s32 ixgbevf_read_mbx_vf(struct ixgbe_hw *hw, u32 *msg, u16 size)
+{
+	u32 vf_mailbox;
+	s32 ret_val;
+	u16 i;
+
+	/* check if there is a message from PF */
+	ret_val = ixgbevf_check_for_msg_vf(hw);
+	if (ret_val)
+		return ret_val;
+
+	ixgbevf_clear_msg_vf(hw);
+
+	/* copy the message from the mailbox memory buffer */
+	for (i = 0; i < size; i++)
+		msg[i] = IXGBE_READ_REG_ARRAY(hw, IXGBE_VFMBMEM, i);
+
+	/* Acknowledge receipt */
+	vf_mailbox = ixgbevf_read_mailbox_vf(hw);
+	vf_mailbox |= IXGBE_VFMAILBOX_ACK;
+	IXGBE_WRITE_REG(hw, IXGBE_VFMAILBOX, vf_mailbox);
+
+	/* update stats */
+	hw->mbx.stats.msgs_rx++;
+
+	return ret_val;
+}
+
 /**
  *  ixgbevf_read_mbx_vf_legacy - Reads a message from the inbox intended for VF
  *  @hw: pointer to the HW structure
@@ -304,7 +414,7 @@ static s32 ixgbevf_init_mbx_params_vf(struct ixgbe_hw *hw)
 	/* start mailbox as timed out and let the reset_hw call set the timeout
 	 * value to begin communications
 	 */
-	mbx->timeout = 0;
+	mbx->timeout = IXGBE_VF_MBX_INIT_TIMEOUT;
 	mbx->udelay = IXGBE_VF_MBX_INIT_DELAY;
 
 	mbx->size = IXGBE_VFMAILBOX_SIZE;
@@ -318,12 +428,81 @@ static s32 ixgbevf_init_mbx_params_vf(struct ixgbe_hw *hw)
 	return 0;
 }
 
+/**
+ * ixgbevf_poll_mbx - Wait for message and read it from the mailbox
+ * @hw: pointer to the HW structure
+ * @msg: The message buffer
+ * @size: Length of buffer
+ * @mbx_id: id of mailbox to read
+ *
+ * returns 0 if it successfully read message from buffer
+ **/
+s32 ixgbevf_poll_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)
+{
+	struct ixgbe_mbx_info *mbx = &hw->mbx;
+	s32 ret_val = IXGBE_ERR_CONFIG;
+
+	if (!mbx->ops.read || !mbx->ops.check_for_msg || !mbx->timeout)
+		return ret_val;
+
+	/* limit read to size of mailbox */
+	if (size > mbx->size)
+		size = mbx->size;
+
+	ret_val = ixgbevf_poll_for_msg(hw);
+	/* if ack received read message, otherwise we timed out */
+	if (!ret_val)
+		ret_val = mbx->ops.read(hw, msg, size);
+
+	return ret_val;
+}
+
+/**
+ * ixgbevf_write_mbx - Write a message to the mailbox and wait for ACK
+ * @hw: pointer to the HW structure
+ * @msg: The message buffer
+ * @size: Length of buffer
+ * @mbx_id: id of mailbox to write
+ *
+ * returns 0 if it successfully copied message into the buffer and
+ * received an ACK to that message within specified period
+ **/
+s32 ixgbevf_write_mbx(struct ixgbe_hw *hw, u32 *msg, u16 size)
+{
+	struct ixgbe_mbx_info *mbx = &hw->mbx;
+	s32 ret_val = IXGBE_ERR_CONFIG;
+
+	/**
+	 * exit if either we can't write, release
+	 * or there is no timeout defined
+	 */
+	if (!mbx->ops.write || !mbx->ops.check_for_ack || !mbx->ops.release ||
+	    !mbx->timeout)
+		return ret_val;
+
+	if (size > mbx->size)
+		ret_val = IXGBE_ERR_PARAM;
+	else
+		ret_val = mbx->ops.write(hw, msg, size);
+
+	return ret_val;
+}
+
+const struct ixgbe_mbx_operations ixgbevf_mbx_ops = {
+	.init_params	= ixgbevf_init_mbx_params_vf,
+	.release	= ixgbevf_release_mbx_lock_vf,
+	.read		= ixgbevf_read_mbx_vf,
+	.write		= ixgbevf_write_mbx_vf,
+	.check_for_msg	= ixgbevf_check_for_msg_vf,
+	.check_for_ack	= ixgbevf_check_for_ack_vf,
+	.check_for_rst	= ixgbevf_check_for_rst_vf,
+};
+
 const struct ixgbe_mbx_operations ixgbevf_mbx_ops_legacy = {
 	.init_params	= ixgbevf_init_mbx_params_vf,
+	.release	= ixgbevf_release_mbx_lock_vf_legacy,
 	.read		= ixgbevf_read_mbx_vf_legacy,
 	.write		= ixgbevf_write_mbx_vf_legacy,
-	.read_posted	= ixgbevf_read_posted_mbx,
-	.write_posted	= ixgbevf_write_posted_mbx,
 	.check_for_msg	= ixgbevf_check_for_msg_vf,
 	.check_for_ack	= ixgbevf_check_for_ack_vf,
 	.check_for_rst	= ixgbevf_check_for_rst_vf,
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index 6c209aee9877..ac0e94d70a09 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -13,13 +13,12 @@
 static inline s32 ixgbevf_write_msg_read_ack(struct ixgbe_hw *hw, u32 *msg,
 					     u32 *retmsg, u16 size)
 {
-	struct ixgbe_mbx_info *mbx = &hw->mbx;
-	s32 retval = mbx->ops.write_posted(hw, msg, size);
+	s32 retval = ixgbevf_write_mbx(hw, msg, size);
 
 	if (retval)
 		return retval;
 
-	return mbx->ops.read_posted(hw, retmsg, size);
+	return ixgbevf_poll_mbx(hw, retmsg, size);
 }
 
 /**
@@ -92,7 +91,7 @@ static s32 ixgbevf_reset_hw_vf(struct ixgbe_hw *hw)
 	mbx->timeout = IXGBE_VF_MBX_INIT_TIMEOUT;
 
 	msgbuf[0] = IXGBE_VF_RESET;
-	mbx->ops.write_posted(hw, msgbuf, 1);
+	ixgbevf_write_mbx(hw, msgbuf, 1);
 
 	mdelay(10);
 
@@ -100,7 +99,7 @@ static s32 ixgbevf_reset_hw_vf(struct ixgbe_hw *hw)
 	 * also set up the mc_filter_type which is piggy backed
 	 * on the mac address in word 3
 	 */
-	ret_val = mbx->ops.read_posted(hw, msgbuf, IXGBE_VF_PERMADDR_MSG_LEN);
+	ret_val = ixgbevf_poll_mbx(hw, msgbuf, IXGBE_VF_PERMADDR_MSG_LEN);
 	if (ret_val)
 		return ret_val;
 
@@ -323,12 +322,12 @@ int ixgbevf_get_reta_locked(struct ixgbe_hw *hw, u32 *reta, int num_rx_queues)
 
 	msgbuf[0] = IXGBE_VF_GET_RETA;
 
-	err = hw->mbx.ops.write_posted(hw, msgbuf, 1);
+	err = ixgbevf_write_mbx(hw, msgbuf, 1);
 
 	if (err)
 		return err;
 
-	err = hw->mbx.ops.read_posted(hw, msgbuf, dwords + 1);
+	err = ixgbevf_poll_mbx(hw, msgbuf, dwords + 1);
 
 	if (err)
 		return err;
@@ -390,12 +389,12 @@ int ixgbevf_get_rss_key_locked(struct ixgbe_hw *hw, u8 *rss_key)
 	}
 
 	msgbuf[0] = IXGBE_VF_GET_RSS_KEY;
-	err = hw->mbx.ops.write_posted(hw, msgbuf, 1);
+	err = ixgbevf_write_mbx(hw, msgbuf, 1);
 
 	if (err)
 		return err;
 
-	err = hw->mbx.ops.read_posted(hw, msgbuf, 11);
+	err = ixgbevf_poll_mbx(hw, msgbuf, 11);
 
 	if (err)
 		return err;
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.h b/drivers/net/ethernet/intel/ixgbevf/vf.h
index 1d8209df4162..54158dac8707 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.h
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.h
@@ -73,10 +73,9 @@ struct ixgbe_mac_info {
 
 struct ixgbe_mbx_operations {
 	s32 (*init_params)(struct ixgbe_hw *hw);
+	void (*release)(struct ixgbe_hw *hw);
 	s32 (*read)(struct ixgbe_hw *, u32 *, u16);
 	s32 (*write)(struct ixgbe_hw *, u32 *, u16);
-	s32 (*read_posted)(struct ixgbe_hw *, u32 *, u16);
-	s32 (*write_posted)(struct ixgbe_hw *, u32 *, u16);
 	s32 (*check_for_msg)(struct ixgbe_hw *);
 	s32 (*check_for_ack)(struct ixgbe_hw *);
 	s32 (*check_for_rst)(struct ixgbe_hw *);
@@ -96,7 +95,7 @@ struct ixgbe_mbx_info {
 	struct ixgbe_mbx_stats stats;
 	u32 timeout;
 	u32 udelay;
-	u32 v2p_mailbox;
+	u32 vf_mailbox;
 	u16 size;
 };
 
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
