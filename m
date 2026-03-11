Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id kBMvMtdosWnsugIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 14:06:31 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id C5FC62641ED
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Mar 2026 14:06:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6E6F742283;
	Wed, 11 Mar 2026 13:06:29 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pJt9Egf92W7O; Wed, 11 Mar 2026 13:06:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 511C442281
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773234387;
	bh=D/ZhzQ//oXYIRMiC0lWrIonT6I+kfHEejaRRT6wuKic=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=GkYRn/0hoSqcgQovJErGrrgO/JSrNiVLdT0B0Ij495mUpIJ+tX3s4f3RWnpnUQCUN
	 WnTzxx1b0++7WsvdNDhc5J/A5KbANtxH5lRunCXXx7UObWGFPeMBY6wM9XXUSvEveL
	 6WrZlosxhMBZ8HfXmVcS2opz5/M+uXEnZn4nv5Xu4l8L5lpCzcL+esM+A56g1oj84k
	 eiQSmiONv9Cz/80IAj8Fs7/32vsKQFRngl+53uDMKWBvXTITjed0ponhANoQDQ/mAr
	 6TsAllwsO+PcVFUh/+SHfOMqqVHSw41Gps/x/230+r+lll4HCK9nORmjgQ0E83FAPa
	 XSqvrKKo8vjyQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 511C442281;
	Wed, 11 Mar 2026 13:06:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E8D46201
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:06:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id CDE1041D71
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:06:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id or1jzPNqTkdY for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Mar 2026 13:06:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 51A0142278
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 51A0142278
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 51A0142278
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Mar 2026 13:06:21 +0000 (UTC)
X-CSE-ConnectionGUID: y5qpfj4iRnq5uGVjyRXxnA==
X-CSE-MsgGUID: HbEvUSmySkyhrteJjQ6gGw==
X-IronPort-AV: E=McAfee;i="6800,10657,11726"; a="91680784"
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="91680784"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2026 06:06:20 -0700
X-CSE-ConnectionGUID: ubb2e6H6SD+EMhcxpGYDyg==
X-CSE-MsgGUID: iq3HSNHeRxmLCsXjRDNAeQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,113,1770624000"; d="scan'208";a="217931221"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by fmviesa007.fm.intel.com with ESMTP; 11 Mar 2026 06:06:19 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Wed, 11 Mar 2026 14:05:37 +0100
Message-ID: <20260311130743.353632-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773234381; x=1804770381;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=G8Eu5sLBsgIP3MHr/7kyhP862zPvwqnYs7v1uXIFa+I=;
 b=W2icMr5tOfPecb5zpnM32nVPsWLU5fy7Je5vWTAjeskJrH8155b1TKwF
 6MYf179+0Fd7vXiNRrlNiNaM93ZrMUjpiEQPXhoSwVkpHZ8cehezaExIH
 bVUAKxdWNm35SIgMMKrowx8ZPyCqIrAWH72Z0pwASuczkeGiEzva3Y6MF
 8Onre2elcuX9n8rRTI8ZQN6RBNASbKY3uKm45U3WkIlM4lMvDpQRhs0Ga
 s+sXm0gdU/XdJHTeBWILG4Mhqy8q0w4LDMU++L82/zMv4GrvFCFzbAiNi
 wgUeudt5C0O4YNGynGA2du1PatMIoaGgUJodji5p8Chb3B0BO9asnmkA7
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=W2icMr5t
Subject: [Intel-wired-lan] [PATCH iwl-next v2] i40e: PTP: set supported
 flags in ptp_clock_info
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
X-Rspamd-Queue-Id: C5FC62641ED
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
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

Since upstream commit d9f3e9ecc456 ("net: ptp: introduce
.supported_perout_flags to ptp_clock_info") and commit 7c571ac57d9d ("net:
ptp: introduce .supported_extts_flags to ptp_clock_info"), kernel core now
requires that the driver set the .supported_perout_flags and
.supported_extts_flags fields in PTP clock info. Otherwise, the additional
flags will be rejected by the kernel automatically.

i40e does not support perout flags, so reject any request with perout
flags.

Fixes: d9f3e9ecc456 ("net: ptp: introduce .supported_perout_flags to ptp_clock_info")
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
v2:
- add fixes tag
- remove old TODO comment
v1: https://lore.kernel.org/intel-wired-lan/20260309141220.343224-1-przemyslaw.korba@intel.com/

 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 13 +++++++++++--
 1 file changed, 11 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 7bcea7d9720f..41ae6d78aacb 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -598,13 +598,20 @@ static int i40e_ptp_feature_enable(struct ptp_clock_info *ptp,
 	enum ptp_pin_function func;
 	unsigned int chan;
 
-	/* TODO: Implement flags handling for EXTTS and PEROUT */
 	switch (rq->type) {
 	case PTP_CLK_REQ_EXTTS:
+		if (rq->extts.flags & ~(PTP_ENABLE_FEATURE |
+					PTP_RISING_EDGE |
+					PTP_FALLING_EDGE |
+					PTP_STRICT_FLAGS))
+			return -EOPNOTSUPP;
+
 		func = PTP_PF_EXTTS;
 		chan = rq->extts.index;
 		break;
 	case PTP_CLK_REQ_PEROUT:
+		if (rq->perout.flags)
+			return -EOPNOTSUPP;
 		func = PTP_PF_PEROUT;
 		chan = rq->perout.index;
 		break;
@@ -1340,7 +1347,9 @@ static int i40e_init_pin_config(struct i40e_pf *pf)
 	pf->ptp_caps.n_ext_ts = 2;
 	pf->ptp_caps.pps = 1;
 	pf->ptp_caps.n_per_out = 2;
-
+	pf->ptp_caps.supported_extts_flags = PTP_RISING_EDGE |
+					     PTP_FALLING_EDGE |
+					     PTP_STRICT_FLAGS;
 	pf->ptp_caps.pin_config = kzalloc_objs(*pf->ptp_caps.pin_config,
 					       pf->ptp_caps.n_pins);
 	if (!pf->ptp_caps.pin_config)

base-commit: d5fbc991435eac7a1ead7cd2ddb5a743528718bb
-- 
2.43.0

