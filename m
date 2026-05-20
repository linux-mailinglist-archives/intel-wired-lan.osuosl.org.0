Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 6OBUGRCSDWpyzgUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 12:50:56 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id BB82F58BF79
	for <lists+intel-wired-lan@lfdr.de>; Wed, 20 May 2026 12:50:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 012D26104D;
	Wed, 20 May 2026 10:50:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id a4V1YirAy3xS; Wed, 20 May 2026 10:50:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E1F6561050
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1779274250;
	bh=3NpxHUnEsB3RjGcs51oVuCdjN1KAF4VtGNaGWrSoql0=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Zr59jLZ0EfN9Q/rEkWDPJpqPMvf9mdrn69pWixC8iLMvmQiLiu/MH8lsiNuPj/5+R
	 JXRZPtBSJC0kKMto1rnC71XdPsHZZyqrzGQBLob2iupGLtYr9aUn8f/71Z4GcyOzuL
	 g97l3c3tpaj3B3zGRouDZtyL14z+hHbUiVwbFlj3bJeip5ZR6YLM+Ztequ+JfY9ZAy
	 bTm/4ykMy+p7TViZgoPmW4ZpHexIw8L+1ZbWDmOYV7EJYyQjfdIGMHN62nCd14nDO5
	 icIFfxT2Nec+6WsS/WKNWWV5/J2+EFuLth0t38oFk7n7BsWo3t7YiU4lxMvHwled9M
	 i4QoJDbad5+rg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id E1F6561050;
	Wed, 20 May 2026 10:50:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 6C292265
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 10:50:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 515B840868
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 10:50:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jwuDFea6AJU9 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 20 May 2026 10:50:48 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.12;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 1EC6240863
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1EC6240863
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.12])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 1EC6240863
 for <intel-wired-lan@lists.osuosl.org>; Wed, 20 May 2026 10:50:47 +0000 (UTC)
X-CSE-ConnectionGUID: udwBltoUTLO9RbDQ+HyoRA==
X-CSE-MsgGUID: ZguO3t5TSneGWdSv1++lOw==
X-IronPort-AV: E=McAfee;i="6800,10657,11791"; a="84023597"
X-IronPort-AV: E=Sophos;i="6.23,244,1770624000"; d="scan'208";a="84023597"
Received: from fmviesa003.fm.intel.com ([10.60.135.143])
 by fmvoesa106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 May 2026 03:50:48 -0700
X-CSE-ConnectionGUID: hgtqdcDITtunwuqjoRY+SQ==
X-CSE-MsgGUID: PLd2TTQiSqSGkZjEaLAr4A==
X-ExtLoop1: 1
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by fmviesa003.fm.intel.com with ESMTP; 20 May 2026 03:50:46 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, aleksandr.loktionov@intel.com,
 arkadiusz.kubalewski@intel.com,
 Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Wed, 20 May 2026 12:52:03 +0200
Message-ID: <20260520105311.5336-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1779274248; x=1810810248;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=bOmnccMMInX9gRLQ9keUY72qmps0cEk6dkmIW0Cv46E=;
 b=QZncm7y1JNbODbm0+2Cel+QsO9GSwJFrzyKJ2XmmxzLPZiFChktxlNVn
 6w1Pa1EO5AqSuUeXDIxItcPDG2EPJZTKxG/GjZcv4BNryC6lJmJj6HJw1
 emvEHWqwkzjJZn9DChI03MFvPic6eN0jw6FAlhWPP05r+zk1PCJV/ZDJI
 EIKq9OjJQvyQUFjYnP9vxzsVKRiVZVg8epM8ECmNAESxm1BF67F7mcT90
 Y0ZwQGbLHbu4x5cbsGTCGnFSZ5mvCASHDsrDP7ciqLS+J3pMI1I2gSJS4
 9uwvdy5rQniK1MIIVBZJtBm8+1VfdtSDgQuu4Pou4viUlKLv8oKq8b9YV
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=QZncm7y1
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: support SBQ posted writes
 with non-posted support for CGU
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>
X-Spamd-Result: default: False [0.29 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCPT_COUNT_SEVEN(0.00)[7];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: BB82F58BF79
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Karol Kolacinski <karol.kolacinski@intel.com>

Sideband queue (SBQ) is a HW queue with very short completion time. All
SBQ writes were posted by default, which means that the driver did not
have to wait for completion from the neighbor device, because there was
none. This introduced unnecessary delays, where only those delays were
"ensuring" that the command is "completed" and this was a potential race
condition.

Add the possibility to perform non-posted writes where it's necessary to
wait for completion, instead of relying on fake completion from the FW,
where only the delays are guarding the writes.

Flush the SBQ by reading address 0 from the PHY 0 before issuing SYNC
command to ensure that writes to all PHYs were completed and skip SBQ
message completion if it's posted.

E810 only supports opcode 0x01, but its FW always sends completion
responses for this opcode, so the driver waits for each write to complete.
This makes E810 writes synchronous and eliminates the need for SBQ flush.

To analyze if delays are gone, look for and compare time spent in
ice_sq_send_cmd — posted writes should return immediately after the wr32.
That can be done for example by adjusting phc time with phc_ctl on E830
device, for less than 2 seconds to use this new mechanism. Without it,
command below will fail.

Reproduction steps:
phc_ctl eth13 adj 1
phc_ctl[4478170.994]: adjusted clock by 1.000000 seconds

Check trace for timing for comparisions:
echo ice_sbq_send_cmd > /sys/kernel/debug/tracing/set_ftrace_filter
echo function_graph > /sys/kernel/debug/tracing/current_tracer
cat /sys/kernel/debug/tracing/trace

Tested on:
  - Intel E830 NIC (FW version 1.00)
  - Kernel 6.19.0+

Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
v3:
- include information in comments and commit message about different
E810 behavior
v2:
https://lore.kernel.org/intel-wired-lan/20260508102247.826375-1-przemyslaw.korba@intel.com/
- fix minor issues for E810 devices
v1:
https://lore.kernel.org/intel-wired-lan/20260507135110.809367-1-przemyslaw.korba@intel.com/
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 26 +++++--
 drivers/net/ethernet/intel/ice/ice_controlq.c |  4 ++
 drivers/net/ethernet/intel/ice/ice_controlq.h |  1 +
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c   | 70 ++++++++++++-------
 drivers/net/ethernet/intel/ice/ice_sbq_cmd.h  |  5 +-
 5 files changed, 73 insertions(+), 33 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 0ec65007d672..b6a3b428558c 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1762,6 +1762,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
 {
 	struct ice_sbq_cmd_desc desc = {0};
 	struct ice_sbq_msg_req msg = {0};
+	struct ice_sq_cd cd = {};
 	u16 msg_len;
 	int status;
 
@@ -1774,19 +1775,34 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
 	msg.msg_addr_low = cpu_to_le16(in->msg_addr_low);
 	msg.msg_addr_high = cpu_to_le32(in->msg_addr_high);
 
-	if (in->opcode)
+	switch (in->opcode) {
+	case ice_sbq_msg_wr_p:
+	case ice_sbq_msg_wr_np:
 		msg.data = cpu_to_le32(in->data);
-	else
+		/* E810 FW only supports opcode 0x01, convert non-posted to posted */
+		if (hw->mac_type == ICE_MAC_E810)
+			msg.opcode = ice_sbq_msg_wr_p;
+		break;
+	case ice_sbq_msg_rd:
 		/* data read comes back in completion, so shorten the struct by
 		 * sizeof(msg.data)
 		 */
 		msg_len -= sizeof(msg.data);
+		break;
+	default:
+		return -EINVAL;
+	}
+
+	/* E810 doesn't support posted mode, always wait for completion */
+	cd.posted = in->opcode == ice_sbq_msg_wr_p &&
+		    hw->mac_type != ICE_MAC_E810;
 
 	desc.flags = cpu_to_le16(flags);
 	desc.opcode = cpu_to_le16(ice_sbq_opc_neigh_dev_req);
 	desc.param0.cmd_len = cpu_to_le16(msg_len);
-	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
-	if (!status && !in->opcode)
+	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, &cd);
+
+	if (!status && in->opcode == ice_sbq_msg_rd)
 		in->data = le32_to_cpu
 			(((struct ice_sbq_msg_cmpl *)&msg)->data);
 	return status;
@@ -6557,7 +6573,7 @@ int ice_write_cgu_reg(struct ice_hw *hw, u32 addr, u32 val)
 {
 	struct ice_sbq_msg_input cgu_msg = {
 		.dest_dev = ice_get_dest_cgu(hw),
-		.opcode = ice_sbq_msg_wr,
+		.opcode = ice_sbq_msg_wr_np,
 		.msg_addr_low = addr,
 		.data = val
 	};
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.c b/drivers/net/ethernet/intel/ice/ice_controlq.c
index dcb837cadd18..a6008dc77fa4 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -1086,6 +1086,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
 	ice_flush(hw);
 
+	/* If the message is posted, don't wait for completion. */
+	if (cd && cd->posted)
+		goto sq_send_command_error;
+
 	/* Wait for the command to complete. If it finishes within the
 	 * timeout, copy the descriptor back to temp.
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index 788040dd662e..c50d6fcbacba 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -77,6 +77,7 @@ struct ice_ctl_q_ring {
 /* sq transaction details */
 struct ice_sq_cd {
 	struct libie_aq_desc *wb_desc;
+	u8 posted : 1;
 };
 
 /* rq event information */
diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 2c18e16fe053..d47d5baf3281 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -352,6 +352,20 @@ void ice_ptp_src_cmd(struct ice_hw *hw, enum ice_ptp_tmr_cmd cmd)
 static void ice_ptp_exec_tmr_cmd(struct ice_hw *hw)
 {
 	struct ice_pf *pf = container_of(hw, struct ice_pf, hw);
+	struct ice_sbq_msg_input msg = {
+		.dest_dev = ice_sbq_dev_phy_0,
+		.opcode = ice_sbq_msg_rd,
+	};
+	int err;
+
+	/* Flush SBQ to ensure posted writes complete before SYNC command.
+	 * Skip for E810 - FW always sends completions, so writes are synchronous.
+	 */
+	if (hw->mac_type != ICE_MAC_E810) {
+		err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
+		if (err)
+			dev_warn(ice_hw_to_dev(hw), "Failed to flush SBQ: %d\n", err);
+	}
 
 	if (!ice_is_primary(hw))
 		hw = ice_get_primary_hw(pf);
@@ -442,7 +456,7 @@ static int ice_write_phy_eth56g(struct ice_hw *hw, u8 port, u32 addr, u32 val)
 {
 	struct ice_sbq_msg_input msg = {
 		.dest_dev = ice_ptp_get_dest_dev_e825(hw, port),
-		.opcode = ice_sbq_msg_wr,
+		.opcode = ice_sbq_msg_wr_p,
 		.msg_addr_low = lower_16_bits(addr),
 		.msg_addr_high = upper_16_bits(addr),
 		.data = val
@@ -2504,11 +2518,12 @@ static bool ice_is_40b_phy_reg_e82x(u16 low_addr, u16 *high_addr)
 static int
 ice_read_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 *val)
 {
-	struct ice_sbq_msg_input msg = {0};
+	struct ice_sbq_msg_input msg = {
+		.opcode = ice_sbq_msg_rd,
+	};
 	int err;
 
 	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
-	msg.opcode = ice_sbq_msg_rd;
 
 	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
@@ -2577,16 +2592,18 @@ ice_read_64b_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 low_addr, u64 *val)
  * @val: The value to write to the register
  *
  * Write a PHY register for the given port over the device sideband queue.
+ * Uses posted writes - requires SBQ flush before SYNC_EXEC_CMD.
  */
 static int
 ice_write_phy_reg_e82x(struct ice_hw *hw, u8 port, u16 offset, u32 val)
 {
-	struct ice_sbq_msg_input msg = {0};
+	struct ice_sbq_msg_input msg = {
+		.opcode = ice_sbq_msg_wr_p,
+		.data = val
+	};
 	int err;
 
 	ice_fill_phy_msg_e82x(hw, &msg, port, offset);
-	msg.opcode = ice_sbq_msg_wr;
-	msg.data = val;
 
 	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
@@ -2740,15 +2757,15 @@ static int ice_fill_quad_msg_e82x(struct ice_hw *hw,
 int
 ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 {
-	struct ice_sbq_msg_input msg = {0};
+	struct ice_sbq_msg_input msg = {
+		.opcode = ice_sbq_msg_rd,
+	};
 	int err;
 
 	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
 	if (err)
 		return err;
 
-	msg.opcode = ice_sbq_msg_rd;
-
 	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
@@ -2774,16 +2791,16 @@ ice_read_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 *val)
 int
 ice_write_quad_reg_e82x(struct ice_hw *hw, u8 quad, u16 offset, u32 val)
 {
-	struct ice_sbq_msg_input msg = {0};
+	struct ice_sbq_msg_input msg = {
+		.opcode = ice_sbq_msg_wr_p,
+		.data = val
+	};
 	int err;
 
 	err = ice_fill_quad_msg_e82x(hw, &msg, quad, offset);
 	if (err)
 		return err;
 
-	msg.opcode = ice_sbq_msg_wr;
-	msg.data = val;
-
 	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
@@ -4450,14 +4467,14 @@ static void ice_ptp_init_phy_e82x(struct ice_ptp_hw *ptp)
  */
 static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
 {
-	struct ice_sbq_msg_input msg = {0};
+	struct ice_sbq_msg_input msg = {
+		.dest_dev = ice_sbq_dev_phy_0,
+		.opcode = ice_sbq_msg_rd,
+		.msg_addr_low = lower_16_bits(addr),
+		.msg_addr_high = upper_16_bits(addr),
+	};
 	int err;
 
-	msg.msg_addr_low = lower_16_bits(addr);
-	msg.msg_addr_high = upper_16_bits(addr);
-	msg.opcode = ice_sbq_msg_rd;
-	msg.dest_dev = ice_sbq_dev_phy_0;
-
 	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
@@ -4477,18 +4494,19 @@ static int ice_read_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 *val)
  * @val: the value to write to the PHY
  *
  * Write a value to a register of the external PHY on the E810 device.
+ * E810 FW sends completions for opcode 0x01, making writes synchronous.
  */
 static int ice_write_phy_reg_e810(struct ice_hw *hw, u32 addr, u32 val)
 {
-	struct ice_sbq_msg_input msg = {0};
+	struct ice_sbq_msg_input msg = {
+		.dest_dev = ice_sbq_dev_phy_0,
+		.opcode = ice_sbq_msg_wr_p,
+		.msg_addr_low = lower_16_bits(addr),
+		.msg_addr_high = upper_16_bits(addr),
+		.data = val
+	};
 	int err;
 
-	msg.msg_addr_low = lower_16_bits(addr);
-	msg.msg_addr_high = upper_16_bits(addr);
-	msg.opcode = ice_sbq_msg_wr;
-	msg.dest_dev = ice_sbq_dev_phy_0;
-	msg.data = val;
-
 	err = ice_sbq_rw_reg(hw, &msg, LIBIE_AQ_FLAG_RD);
 	if (err) {
 		ice_debug(hw, ICE_DBG_PTP, "Failed to send message to PHY, err %d\n",
diff --git a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
index 21bb861febbf..86a143ebf089 100644
--- a/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_sbq_cmd.h
@@ -54,8 +54,9 @@ enum ice_sbq_dev_id {
 };
 
 enum ice_sbq_msg_opcode {
-	ice_sbq_msg_rd	= 0x00,
-	ice_sbq_msg_wr	= 0x01
+	ice_sbq_msg_rd		= 0x00,
+	ice_sbq_msg_wr_p	= 0x01,
+	ice_sbq_msg_wr_np	= 0x02,
 };
 
 #define ICE_SBQ_MSG_FLAGS	0x40

base-commit: 1a199fb1e31a904b965a3000501d7c6732e4c50a
-- 
2.43.0

