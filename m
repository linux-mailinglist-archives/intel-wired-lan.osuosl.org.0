Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UPHUDH9++GmIwAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 13:09:51 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id EEBE94BC328
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 13:09:49 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id AAB448451D;
	Mon,  4 May 2026 11:01:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id zoiWshzpujAi; Mon,  4 May 2026 11:01:05 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E3CF08451F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777892464;
	bh=INriOp2xI/MeFcW23xGddT0du5qeLVJlXRDIucelsrk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=4bUYzyBtz+w8w+OIcnnv2haWyn4bmLi0C5TN8/hzahWRwfmk5NZMuhmMCaYeheJv+
	 zaehgyzis3V5/e37HGtTPZS3bfWoE4ZZVoF9DAoxVSKdKa3FPUHgvhcyHUr36lmx7c
	 GrLx2oVzgljBg4IGZnj57IaRmnyQbdWwsYYhG/S/gHbzUQ6sJspumiSAboLHib8ZEU
	 GxRykgFWw7Tj7v85AxnaJGVwiI4aRigkHNZMieX9//frICsJWJ/+5SojMvnWAGSnVb
	 09xcg7xkjNXmYQ5+VXKiuaHGsQ349A2iST3xNMIbjsC1axu+o4VNsEVBhxZpiyUhyv
	 a7ZvbHQae5CKA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id E3CF08451F;
	Mon,  4 May 2026 11:01:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 565F225D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:01:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 38F8C41A4A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:01:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PjnzYJ6mqZhk for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 11:01:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 21DA741A48
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 21DA741A48
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 21DA741A48
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:01:01 +0000 (UTC)
X-CSE-ConnectionGUID: ELUsJV77TYaUmuIIjVl5Cw==
X-CSE-MsgGUID: Qb5L/ZihQ0mpwTj06UDh0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="78939689"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78939689"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 04:01:02 -0700
X-CSE-ConnectionGUID: v2JZYHBpQj60zBsH0LCR6g==
X-CSE-MsgGUID: F8ybxhVbSwmJjkTR2ZoW4w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="239792123"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by orviesa004.jf.intel.com with ESMTP; 04 May 2026 04:01:01 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 May 2026 11:00:57 +0000
Message-ID: <20260504110058.2373236-3-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
References: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777892463; x=1809428463;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=sxjykjgBCLVR0+8qf0+QS7+ogMK1l6RLYYcd7zzzzpk=;
 b=nQernlpLsD69s3D25WTreIre9bQzWmHfeTSFKufoyM+1MnCkB8A02DBO
 iKV3Dbq5Ke3lh36tLSA+L4cfS4oZSD/D6qkWC1fyyJqLyUY0GlC+1x/+f
 oR0ed4QEXvhiH80L6G0b+yPD78quig+yMak9uM+gFJktvVSTIGH57f0e0
 XKnUeiL1PskR03Pc/HeWChUmZwxt3qlLKo8zg3MXNzXIisVzOLR463A9w
 iJeyeLfQ5gO1xRP3FR2uBw55l4mZaGMw98Vr/hUuP8VRzddgILx9bB95b
 MEdR0vOMdGAbPnsXxEpP8tL/OVYP8c0zWQ2CaqQym437fTw8RwtGg9PqC
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=nQernlpL
Subject: [Intel-wired-lan] [PATCH iwl-net v1 2/3] ice: Zero out the PTP
 control PF pointer at ice_adapter cleanup
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
X-Rspamd-Queue-Id: EEBE94BC328
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [4.89 / 15.00];
	SEM_URIBL(3.50)[indiana.edu:url];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	BAD_REP_POLICIES(0.10)[];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	GREYLIST(0.00)[pass,body];
	RCPT_COUNT_ONE(0.00)[1];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	R_DKIM_ALLOW(0.00)[osuosl.org:s=default];
	FORGED_SENDER_MAILLIST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	NEURAL_SPAM(0.00)[0.968];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ARC_NA(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,cloudflare.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,indiana.edu:url];
	R_SPF_ALLOW(0.00)[+mx];
	RCVD_COUNT_SEVEN(0.00)[9]

Zero out the ctrl_pf pointer in ice_adapter when the control PF is removed.
This prevents potential dangling pointer dereference when accessing
PTP-related structures from other PFs of the same adapter.

Fixes: e800654e85b5b ("ice: Use ice_adapter for PTP shared data instead of auxdev")

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reported-by: Frederick Lawler <fred@cloudflare.com>
Closes: https://lkml.indiana.edu/2507.3/01388.html
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp.c | 17 +++++++++++++++++
 1 file changed, 17 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp.c b/drivers/net/ethernet/intel/ice/ice_ptp.c
index 1114a862c27b..68e87e267825 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp.c
@@ -3104,6 +3104,18 @@ static void ice_ptp_setup_adapter(struct ice_pf *pf)
 	rcu_assign_pointer(pf->adapter->ctrl_pf, pf);
 }
 
+static void ice_ptp_cleanup_adapter(struct ice_pf *pf)
+{
+	/* Zero out adapter->ctrl_pf pointer when the ctrl_pf itself
+	 * is being removed to prevent any secondary PFs from accessing
+	 * it after it is deleted.
+	 */
+	if (cmpxchg(&pf->adapter->ctrl_pf,
+		    (struct ice_pf __rcu *)pf, NULL) ==
+			(struct ice_pf __rcu *)pf)
+		synchronize_rcu();
+}
+
 static int ice_ptp_setup_pf(struct ice_pf *pf)
 {
 	struct ice_ptp *ptp = &pf->ptp;
@@ -3384,6 +3396,8 @@ void ice_ptp_init(struct ice_pf *pf)
 err_clean_pf:
 	mutex_destroy(&ptp->port.ps_lock);
 	ice_ptp_cleanup_pf(pf);
+
+	ice_ptp_cleanup_adapter(pf);
 err_exit:
 	/* If we registered a PTP clock, release it */
 	if (pf->ptp.clock) {
@@ -3412,6 +3426,7 @@ void ice_ptp_release(struct ice_pf *pf)
 	if (pf->ptp.state != ICE_PTP_READY) {
 		mutex_destroy(&pf->ptp.port.ps_lock);
 		ice_ptp_cleanup_pf(pf);
+		ice_ptp_cleanup_adapter(pf);
 		if (pf->ptp.clock) {
 			ptp_clock_unregister(pf->ptp.clock);
 			pf->ptp.clock = NULL;
@@ -3426,6 +3441,8 @@ void ice_ptp_release(struct ice_pf *pf)
 
 	ice_ptp_cleanup_pf(pf);
 
+	ice_ptp_cleanup_adapter(pf);
+
 	ice_ptp_release_tx_tracker(pf, &pf->ptp.port.tx);
 
 	ice_ptp_disable_all_extts(pf);
-- 
2.53.0

