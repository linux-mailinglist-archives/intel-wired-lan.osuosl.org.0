Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id EAA0B3B7ECB
	for <lists+intel-wired-lan@lfdr.de>; Wed, 30 Jun 2021 10:18:06 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B26B60684;
	Wed, 30 Jun 2021 08:18:05 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ulpzgJ-cJkDY; Wed, 30 Jun 2021 08:18:04 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3734A6058C;
	Wed, 30 Jun 2021 08:18:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 310921BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:56 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E7DDE40602
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 89ddMPaWF2nH for <intel-wired-lan@lists.osuosl.org>;
 Wed, 30 Jun 2021 08:17:54 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4BFBF40630
 for <intel-wired-lan@lists.osuosl.org>; Wed, 30 Jun 2021 08:17:54 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6200,9189,10030"; a="272166282"
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="272166282"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:17:53 -0700
X-IronPort-AV: E=Sophos;i="5.83,311,1616482800"; d="scan'208";a="457128345"
Received: from unknown (HELO localhost.igk.intel.com) ([10.237.94.20])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Jun 2021 01:17:52 -0700
From: Radoslaw Tyl <radoslawx.tyl@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 30 Jun 2021 10:15:28 +0200
Message-Id: <20210630081532.3069914-2-radoslawx.tyl@intel.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
References: <20210630081532.3069914-1-radoslawx.tyl@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 1/5] ixgbevf: Rename MSGTYPE to SUCCESS
 and FAILURE
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

There is name similarity within IXGBE_VT_MSGTYPE_ACK and
PFMAILBOX.ACK / VFMAILBOX.ACK. MSGTYPE macros are renamed to SUCCESS and
FAILURE because they are not specified in datasheet and now will be
easily distinguishable.

Signed-off-by: Radoslaw Tyl <radoslawx.tyl@intel.com>
---
 drivers/net/ethernet/intel/ixgbevf/ipsec.c |  2 +-
 drivers/net/ethernet/intel/ixgbevf/mbx.h   | 17 +++++++-----
 drivers/net/ethernet/intel/ixgbevf/vf.c    | 31 +++++++++++-----------
 3 files changed, 27 insertions(+), 23 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbevf/ipsec.c b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
index caaea2c920a6..d235d653d514 100644
--- a/drivers/net/ethernet/intel/ixgbevf/ipsec.c
+++ b/drivers/net/ethernet/intel/ixgbevf/ipsec.c
@@ -49,7 +49,7 @@ static int ixgbevf_ipsec_set_pf_sa(struct ixgbevf_adapter *adapter,
 		goto out;
 
 	ret = (int)msgbuf[1];
-	if (msgbuf[0] & IXGBE_VT_MSGTYPE_NACK && ret >= 0)
+	if (msgbuf[0] & IXGBE_VT_MSGTYPE_FAILURE && ret >= 0)
 		ret = -1;
 
 out:
diff --git a/drivers/net/ethernet/intel/ixgbevf/mbx.h b/drivers/net/ethernet/intel/ixgbevf/mbx.h
index 853796c8ef0e..a461b7d16206 100644
--- a/drivers/net/ethernet/intel/ixgbevf/mbx.h
+++ b/drivers/net/ethernet/intel/ixgbevf/mbx.h
@@ -39,14 +39,17 @@
 
 /* If it's a IXGBE_VF_* msg then it originates in the VF and is sent to the
  * PF.  The reverse is true if it is IXGBE_PF_*.
- * Message ACK's are the value or'd with 0xF0000000
+ * Message results are the value or'd with 0xF0000000
  */
-/* Messages below or'd with this are the ACK */
-#define IXGBE_VT_MSGTYPE_ACK	0x80000000
-/* Messages below or'd with this are the NACK */
-#define IXGBE_VT_MSGTYPE_NACK	0x40000000
-/* Indicates that VF is still clear to send requests */
-#define IXGBE_VT_MSGTYPE_CTS	0x20000000
+#define IXGBE_VT_MSGTYPE_SUCCESS	0x80000000 /* Messages or'd with this
+						    * have succeeded
+						    */
+#define IXGBE_VT_MSGTYPE_FAILURE	0x40000000 /* Messages or'd with this
+						    * have failed
+						    */
+#define IXGBE_VT_MSGTYPE_CTS		0x20000000 /* Indicates that VF is still
+						    * clear to send requests
+						    */
 #define IXGBE_VT_MSGINFO_SHIFT	16
 /* bits 23:16 are used for exra info for certain messages */
 #define IXGBE_VT_MSGINFO_MASK	(0xFF << IXGBE_VT_MSGINFO_SHIFT)
diff --git a/drivers/net/ethernet/intel/ixgbevf/vf.c b/drivers/net/ethernet/intel/ixgbevf/vf.c
index 5fc347abab3c..6c209aee9877 100644
--- a/drivers/net/ethernet/intel/ixgbevf/vf.c
+++ b/drivers/net/ethernet/intel/ixgbevf/vf.c
@@ -108,11 +108,11 @@ static s32 ixgbevf_reset_hw_vf(struct ixgbe_hw *hw)
 	 * to indicate that no MAC address has yet been assigned for
 	 * the VF.
 	 */
-	if (msgbuf[0] != (IXGBE_VF_RESET | IXGBE_VT_MSGTYPE_ACK) &&
-	    msgbuf[0] != (IXGBE_VF_RESET | IXGBE_VT_MSGTYPE_NACK))
+	if (msgbuf[0] != (IXGBE_VF_RESET | IXGBE_VT_MSGTYPE_SUCCESS) &&
+	    msgbuf[0] != (IXGBE_VF_RESET | IXGBE_VT_MSGTYPE_FAILURE))
 		return IXGBE_ERR_INVALID_MAC_ADDR;
 
-	if (msgbuf[0] == (IXGBE_VF_RESET | IXGBE_VT_MSGTYPE_ACK))
+	if (msgbuf[0] == (IXGBE_VF_RESET | IXGBE_VT_MSGTYPE_SUCCESS))
 		ether_addr_copy(hw->mac.perm_addr, addr);
 
 	hw->mac.mc_filter_type = msgbuf[IXGBE_VF_MC_TYPE_WORD];
@@ -269,7 +269,7 @@ static s32 ixgbevf_set_uc_addr_vf(struct ixgbe_hw *hw, u32 index, u8 *addr)
 	if (!ret_val) {
 		msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;
 
-		if (msgbuf[0] == (msgbuf_chk | IXGBE_VT_MSGTYPE_NACK))
+		if (msgbuf[0] == (msgbuf_chk | IXGBE_VT_MSGTYPE_FAILURE))
 			return -ENOMEM;
 	}
 
@@ -336,14 +336,14 @@ int ixgbevf_get_reta_locked(struct ixgbe_hw *hw, u32 *reta, int num_rx_queues)
 	msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;
 
 	/* If the operation has been refused by a PF return -EPERM */
-	if (msgbuf[0] == (IXGBE_VF_GET_RETA | IXGBE_VT_MSGTYPE_NACK))
+	if (msgbuf[0] == (IXGBE_VF_GET_RETA | IXGBE_VT_MSGTYPE_FAILURE))
 		return -EPERM;
 
 	/* If we didn't get an ACK there must have been
 	 * some sort of mailbox error so we should treat it
 	 * as such.
 	 */
-	if (msgbuf[0] != (IXGBE_VF_GET_RETA | IXGBE_VT_MSGTYPE_ACK))
+	if (msgbuf[0] != (IXGBE_VF_GET_RETA | IXGBE_VT_MSGTYPE_SUCCESS))
 		return IXGBE_ERR_MBX;
 
 	/* ixgbevf doesn't support more than 2 queues at the moment */
@@ -403,14 +403,14 @@ int ixgbevf_get_rss_key_locked(struct ixgbe_hw *hw, u8 *rss_key)
 	msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;
 
 	/* If the operation has been refused by a PF return -EPERM */
-	if (msgbuf[0] == (IXGBE_VF_GET_RSS_KEY | IXGBE_VT_MSGTYPE_NACK))
+	if (msgbuf[0] == (IXGBE_VF_GET_RSS_KEY | IXGBE_VT_MSGTYPE_FAILURE))
 		return -EPERM;
 
 	/* If we didn't get an ACK there must have been
 	 * some sort of mailbox error so we should treat it
 	 * as such.
 	 */
-	if (msgbuf[0] != (IXGBE_VF_GET_RSS_KEY | IXGBE_VT_MSGTYPE_ACK))
+	if (msgbuf[0] != (IXGBE_VF_GET_RSS_KEY | IXGBE_VT_MSGTYPE_SUCCESS))
 		return IXGBE_ERR_MBX;
 
 	memcpy(rss_key, msgbuf + 1, IXGBEVF_RSS_HASH_KEY_SIZE);
@@ -442,7 +442,7 @@ static s32 ixgbevf_set_rar_vf(struct ixgbe_hw *hw, u32 index, u8 *addr,
 
 	/* if nacked the address was rejected, use "perm_addr" */
 	if (!ret_val &&
-	    (msgbuf[0] == (IXGBE_VF_SET_MAC_ADDR | IXGBE_VT_MSGTYPE_NACK))) {
+	    (msgbuf[0] == (IXGBE_VF_SET_MAC_ADDR | IXGBE_VT_MSGTYPE_FAILURE))) {
 		ixgbevf_get_mac_addr_vf(hw, hw->mac.addr);
 		return IXGBE_ERR_MBX;
 	}
@@ -561,7 +561,7 @@ static s32 ixgbevf_update_xcast_mode(struct ixgbe_hw *hw, int xcast_mode)
 		return err;
 
 	msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;
-	if (msgbuf[0] == (IXGBE_VF_UPDATE_XCAST_MODE | IXGBE_VT_MSGTYPE_NACK))
+	if (msgbuf[0] == (IXGBE_VF_UPDATE_XCAST_MODE | IXGBE_VT_MSGTYPE_FAILURE))
 		return -EPERM;
 
 	return 0;
@@ -606,7 +606,7 @@ static s32 ixgbevf_set_vfta_vf(struct ixgbe_hw *hw, u32 vlan, u32 vind,
 	msgbuf[0] &= ~IXGBE_VT_MSGTYPE_CTS;
 	msgbuf[0] &= ~(0xFF << IXGBE_VT_MSGINFO_SHIFT);
 
-	if (msgbuf[0] != (IXGBE_VF_SET_VLAN | IXGBE_VT_MSGTYPE_ACK))
+	if (msgbuf[0] != (IXGBE_VF_SET_VLAN | IXGBE_VT_MSGTYPE_SUCCESS))
 		err = IXGBE_ERR_INVALID_ARGUMENT;
 
 mbx_err:
@@ -710,7 +710,7 @@ static s32 ixgbevf_check_mac_link_vf(struct ixgbe_hw *hw,
 
 	if (!(in_msg & IXGBE_VT_MSGTYPE_CTS)) {
 		/* msg is not CTS and is NACK we must have lost CTS status */
-		if (in_msg & IXGBE_VT_MSGTYPE_NACK)
+		if (in_msg & IXGBE_VT_MSGTYPE_FAILURE)
 			ret_val = -1;
 		goto out;
 	}
@@ -816,7 +816,7 @@ static s32 ixgbevf_set_rlpml_vf(struct ixgbe_hw *hw, u16 max_size)
 	if (ret_val)
 		return ret_val;
 	if ((msgbuf[0] & IXGBE_VF_SET_LPE) &&
-	    (msgbuf[0] & IXGBE_VT_MSGTYPE_NACK))
+	    (msgbuf[0] & IXGBE_VT_MSGTYPE_FAILURE))
 		return IXGBE_ERR_MBX;
 
 	return 0;
@@ -863,7 +863,8 @@ static int ixgbevf_negotiate_api_version_vf(struct ixgbe_hw *hw, int api)
 		msg[0] &= ~IXGBE_VT_MSGTYPE_CTS;
 
 		/* Store value and return 0 on success */
-		if (msg[0] == (IXGBE_VF_API_NEGOTIATE | IXGBE_VT_MSGTYPE_ACK)) {
+		if (msg[0] == (IXGBE_VF_API_NEGOTIATE |
+			      IXGBE_VT_MSGTYPE_SUCCESS)) {
 			hw->api_version = api;
 			return 0;
 		}
@@ -918,7 +919,7 @@ int ixgbevf_get_queues(struct ixgbe_hw *hw, unsigned int *num_tcs,
 		 * some sort of mailbox error so we should treat it
 		 * as such
 		 */
-		if (msg[0] != (IXGBE_VF_GET_QUEUE | IXGBE_VT_MSGTYPE_ACK))
+		if (msg[0] != (IXGBE_VF_GET_QUEUE | IXGBE_VT_MSGTYPE_SUCCESS))
 			return IXGBE_ERR_MBX;
 
 		/* record and validate values from message */
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
