Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 8HsiHOLau2k6pAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 12:15:46 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id D67F62CA213
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Mar 2026 12:15:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id E7D668415A;
	Thu, 19 Mar 2026 11:15:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R5-F0PAS_zO9; Thu, 19 Mar 2026 11:15:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 1377B84162
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773918943;
	bh=yaq6+Hhzp4zw0nkot33XSpte/mo6SWbXTSMNFnOdEXc=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=u1I5BVuspXnmQZwaNEWtbYqUKcvBcC9POU8pzfD3d21tw0IVuIFcAbKIH7gpcGnA6
	 doJDxETy01n7Eki3Q3ITtyPXzOtMmtVPGTxdqiRB60iyJrsHEPsF4yTD3mWV8iPEGG
	 GbevZRriV7gRFTxsZIEZqd1fdvj87/28mT7rfFP+9nkY3jefUCdm6cZlRGqDLatuVp
	 YlSQVmrASATVhvgzJ0J8kbtTMjk0i6sMLwNipu1hzv4irR0+e7VywsONbfy7v4mDbk
	 QJw5IVOtBZ7kvuzNNK2L6Ga2EUI4QHWXmUIzBTAeEj9rSmmZZEwlakLu2k/5WMO91D
	 3qPuZToSu8jfA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 1377B84162;
	Thu, 19 Mar 2026 11:15:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A9301AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:15:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 445EB84158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:15:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7a6pcku_MAJ9 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Mar 2026 11:15:40 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.7;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 82FD6818CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 82FD6818CD
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 82FD6818CD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Mar 2026 11:15:40 +0000 (UTC)
X-CSE-ConnectionGUID: 6MDf4+NJQrC4aIH3GgOhhQ==
X-CSE-MsgGUID: 3syTB2uSRl2uQ5mCfPAt+Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="100446755"
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="100446755"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Mar 2026 04:15:40 -0700
X-CSE-ConnectionGUID: AffE8heKRyec2BTK0xZLsw==
X-CSE-MsgGUID: RLvw22A1RIih9nqtA2HKzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,129,1770624000"; d="scan'208";a="227871884"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by orviesa005.jf.intel.com with ESMTP; 19 Mar 2026 04:15:37 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Thu, 19 Mar 2026 12:13:27 +0100
Message-ID: <20260319111659.551039-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773918940; x=1805454940;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=b3u8qHqjs+0jCYSUxvjLhz4Rrt+YcdNbJ5aChfrAIdg=;
 b=hoAIAzCAtKZ6x005r8aqxzRJLGfkf9iJ+STY2VG7Zim4ncoxS6oIArvp
 UmYvxOuU3govG146B2DNCW6Bb4PKnfacRo9s+238luuW8NApP5HrBClsI
 uO8GdaqbQKBCVk3z3gJImItLp+ZWh4S5jLbqMPGni65osfaOl2CXb+UVK
 /qQ803uzVK0l/jRCPxUH4ttys1Pvpl2q4rWRy9bri0OTYRAOkbsAd8bsE
 15VNnoJvqsmPf4/gspw9U5Kvr0+OrslRs5pORvNFjrATGm4x5kGiBsEzX
 RBUBp7M3zEnFHTPBUz9xjC0z1XeM9t+6ki5Agz6cwPXzIVmLjvZPCku1P
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hoAIAzCA
Subject: [Intel-wired-lan] [PATCH iwl-net v2] ice: fix posted write support
 for sideband queue operations
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,msg.data:url,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D67F62CA213
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

On E830, PTP time adjustment commands sent via
SBQ don't generate completion responses, causing the driver to
timeout waiting and return -EIO, when trying:

phc_ctl eth8 get adj 2 get
dmesg: ice 0000:1a:00.0: PTP failed to adjust time, err -5

Add support for posted mode not to wait for completion response.

Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
v2:
- change "postpone" to "posted"
- init struct with {} instead of {0}
v1:
https://lore.kernel.org/intel-wired-lan/20260310110700.345904-1-przemyslaw.korba@intel.com/

 drivers/net/ethernet/intel/ice/ice_common.c   | 7 ++++++-
 drivers/net/ethernet/intel/ice/ice_controlq.c | 4 ++++
 drivers/net/ethernet/intel/ice/ice_controlq.h | 1 +
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8866902efb91..c89c6ca1281b 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1765,6 +1765,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
 {
 	struct ice_sbq_cmd_desc desc = {0};
 	struct ice_sbq_msg_req msg = {0};
+	struct ice_sq_cd cd = {};
 	u16 msg_len;
 	int status;
 
@@ -1785,10 +1786,14 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
 		 */
 		msg_len -= sizeof(msg.data);
 
+	if (in->opcode == ice_sbq_msg_wr)
+		cd.posted = 1;
+
 	desc.flags = cpu_to_le16(flags);
 	desc.opcode = cpu_to_le16(ice_sbq_opc_neigh_dev_req);
 	desc.param0.cmd_len = cpu_to_le16(msg_len);
-	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, NULL);
+	status = ice_sbq_send_cmd(hw, &desc, &msg, msg_len, &cd);
+
 	if (!status && !in->opcode)
 		in->data = le32_to_cpu
 			(((struct ice_sbq_msg_cmpl *)&msg)->data);
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

base-commit: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf
-- 
2.43.0

