Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id gEAFDRH7r2mmdwIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 12:05:53 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 2F207249F5C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 10 Mar 2026 12:05:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id A2DE48418E;
	Tue, 10 Mar 2026 11:05:49 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7esa5Dr_fRdI; Tue, 10 Mar 2026 11:05:48 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4C7DC84185
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773140748;
	bh=MARQ0058RswDZYHemQM1kEkTZNaO7sJB7QpVLF2OF3o=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=NTeb30Fp9AdBkHGu/LjmdMPMGwQ/ASRt33EGBEeL2Zp3DcoXJvtbSwJU7NG17JEfo
	 PnqLxPiPMjUpz9AtA3o9mMNOB0ZDYSDqrJPBNgduf2PVzQtO+yteFsrNqEx17D+VQX
	 7LXVN5GDqwvi+x/SevzFWH5iZUi06lNFK1zYn40nY416jIZ1lBhDiwdYx/bGTNyY/x
	 tGnDsQreEeIC4rijYeWjG0s2MO2RLxIE24DKcJjNW+OfP5r7hH1601tbn3kL61TVxm
	 F665jI/huLkk6tOZUZzyV1EfHSqf8NY8I8PQiEnkZxmTgB7xCi5Cl2Lr+P6K7dauN6
	 aDXNU95HBzIQw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 4C7DC84185;
	Tue, 10 Mar 2026 11:05:48 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 52115B8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:05:46 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 43A0841B01
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:05:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2VrbnlwG_v6d for <intel-wired-lan@lists.osuosl.org>;
 Tue, 10 Mar 2026 11:05:45 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2B7B841ABC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B7B841ABC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B7B841ABC
 for <intel-wired-lan@lists.osuosl.org>; Tue, 10 Mar 2026 11:05:42 +0000 (UTC)
X-CSE-ConnectionGUID: TQ1hwSzMRmuq+zmEmB9BAw==
X-CSE-MsgGUID: Fh0Z/zCBTdKT1nTJ/+wuzA==
X-IronPort-AV: E=McAfee;i="6800,10657,11724"; a="74225163"
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="74225163"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Mar 2026 04:05:42 -0700
X-CSE-ConnectionGUID: q5hBKdgiRICkSRCkORz+KQ==
X-CSE-MsgGUID: 4npV0y24R6ukVATqs35T0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,112,1770624000"; d="scan'208";a="216461242"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by fmviesa006.fm.intel.com with ESMTP; 10 Mar 2026 04:05:41 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Tue, 10 Mar 2026 12:06:33 +0100
Message-ID: <20260310110700.345904-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773140745; x=1804676745;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=N1yevfBzWeOgVxt0F8Q44T2B0T9lvIlOBDPrD3TIn5Q=;
 b=OS9oPmtafN5BaJGIKrX/dPuf6LXCoHYm29DhIsPRNPWUKDRIhm1G10TQ
 uVvomgfdceohAaDxBX0RDfDSA/auP63OStBupkGizHqKGsxZf6oQbT/HF
 DHwVbw9v95Hp+y108Hnku8vl81ggKcmwybUkTmRdDNyS4KbB+Irad9eBJ
 mCqqXKW/VhXq3U5DSBVdAWO8tV6mGywia6ejFkWZ3L6q1dCTAa2sx7bWS
 K+7Zfs4iJoKHrxPC9ButtGSL8YLEmskpHtO+dg6QSdhICqVXLLscrRNMJ
 WrnQSi8/mMWH2LNAkQFAA+eRAbxdvs9e+02GEsU6il/Ry19GQ+NgLiNkc
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=OS9oPmta
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: fix posted write support for
 sideband queue operations
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
X-Rspamd-Queue-Id: 2F207249F5C
X-Rspamd-Server: lfdr
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
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

On E830, PTP time adjustment commands sent via
SBQ don't generate completion responses, causing the driver to
timeout waiting and return -EIO, when trying:

phc_ctl eth8 get adj 2 get
dmesg: ice 0000:1a:00.0: PTP failed to adjust time, err -5

Add support for posted mode not to wait for completion response.

Fixes: 8f5ee3c477a8 ("ice: add support for sideband messages")
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_common.c   | 7 ++++++-
 drivers/net/ethernet/intel/ice/ice_controlq.c | 4 ++++
 drivers/net/ethernet/intel/ice/ice_controlq.h | 1 +
 3 files changed, 11 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 8866902efb91..df9e5422b981 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -1765,6 +1765,7 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
 {
 	struct ice_sbq_cmd_desc desc = {0};
 	struct ice_sbq_msg_req msg = {0};
+	struct ice_sq_cd cd = {0};
 	u16 msg_len;
 	int status;
 
@@ -1785,10 +1786,14 @@ int ice_sbq_rw_reg(struct ice_hw *hw, struct ice_sbq_msg_input *in, u16 flags)
 		 */
 		msg_len -= sizeof(msg.data);
 
+	if (in->opcode == ice_sbq_msg_wr)
+		cd.postpone = 1;
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
index dcb837cadd18..5fb3a8441beb 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.c
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.c
@@ -1086,6 +1086,10 @@ ice_sq_send_cmd(struct ice_hw *hw, struct ice_ctl_q_info *cq,
 	wr32(hw, cq->sq.tail, cq->sq.next_to_use);
 	ice_flush(hw);
 
+	/* If the message is posted, don't wait for completion. */
+	if (cd && cd->postpone)
+		goto sq_send_command_error;
+
 	/* Wait for the command to complete. If it finishes within the
 	 * timeout, copy the descriptor back to temp.
 	 */
diff --git a/drivers/net/ethernet/intel/ice/ice_controlq.h b/drivers/net/ethernet/intel/ice/ice_controlq.h
index 788040dd662e..7c98d3a0314e 100644
--- a/drivers/net/ethernet/intel/ice/ice_controlq.h
+++ b/drivers/net/ethernet/intel/ice/ice_controlq.h
@@ -77,6 +77,7 @@ struct ice_ctl_q_ring {
 /* sq transaction details */
 struct ice_sq_cd {
 	struct libie_aq_desc *wb_desc;
+	u8 postpone : 1;
 };
 
 /* rq event information */

base-commit: acd2abc52dea91c3bc3d1b6dd8a92b9631d48bbf
-- 
2.43.0

