Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id ECQmGaEXtGlkgwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 14:56:49 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id C0ACA284585
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Mar 2026 14:56:48 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6540B807CD;
	Fri, 13 Mar 2026 13:56:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id SbqkPLHEHauR; Fri, 13 Mar 2026 13:56:46 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org A8136807B6
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773410206;
	bh=aTfCBcnZSQl4L3uFQIO+auNJxOl3jOaYHxWGcPlqbOg=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=ULxhhAC2i/dh2ovjO+fhw31aD+rLxhMvEISInd9aY3R4sCa3UqStBFaUa1P/zw+VN
	 xC3H407X6kX4Evh1bgf274MH12GwlZ+Prba0nl1NuR3VH23Rt4sFkmH/XkE6fV73jI
	 yXW+/9SXIUR5VdbXr1e7HgxUQdLpbAtkkZxB0mVF+KmM/VA9ytwh7sDoxj6UWDUuP9
	 WY0EMwUQ8rjNqROfBGVKOJzm1UNNJ+BzyYmaLeZiX/Bg1cKz9NlBIaOlJF4QkwoxcG
	 rx8L7BhbW6IiovtarZpa2AJtpnjhKVnMtgYdef6WC7oPMDtibgVUpJF06bVHSSkY4e
	 bt6O00w8kjEcw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id A8136807B6;
	Fri, 13 Mar 2026 13:56:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 318891AF
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:56:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2F60480783
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:56:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id vGisCv-z5u2L for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Mar 2026 13:56:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.16;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org E19118076F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org E19118076F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id E19118076F
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Mar 2026 13:56:42 +0000 (UTC)
X-CSE-ConnectionGUID: 8J6ALoeTSbe4TFwzfw00nA==
X-CSE-MsgGUID: gRUkiEU8RNCITgYighXG3A==
X-IronPort-AV: E=McAfee;i="6800,10657,11728"; a="62086313"
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="62086313"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by fmvoesa110.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Mar 2026 06:56:42 -0700
X-CSE-ConnectionGUID: e/3J9FkJTJK/X1Wx2+joEQ==
X-CSE-MsgGUID: 9MFof3REQJuJUCplZ+APbA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,118,1770624000"; d="scan'208";a="217176828"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by fmviesa006.fm.intel.com with ESMTP; 13 Mar 2026 06:56:41 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Fri, 13 Mar 2026 14:54:10 +0100
Message-ID: <20260313135802.499837-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773410203; x=1804946203;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=k1o+8ednU+pN1tcSX1+1/PDr4H4RUWJrqtWTJzuBfM8=;
 b=DVrR7k3yIsw3UKNJ8WChfG3Kk/Ef4WpCnlUVtWIrV2t1WfSmmiBh0tzI
 RtTffQW1TZYN2Q00QFoAkUGahms9VyPU00c3uryaHZBgMHH4Mor/wckyJ
 2yzAtgb/StQUtWm+8OK+eM4b8vgU3X5HYBmp+5VWaSeggecuqlMYmQf4d
 dnE4xRga5SqG9oOC79eABHhA+ImCjz1V7g7ZoP3+jtNAb/ZoR51jZcC33
 cBGFEUvYSryFjuEBcE9qAZPxbc5VEov4hgK+jfrTdxxIIP5AjE9yBxnhq
 H+x86lK47s3YHm3aZSGEMw4O3ER1qeRMCan1NNpkT5y19ufxNipj1JUoB
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DVrR7k3y
Subject: [Intel-wired-lan] [PATCH iwl-next v3] i40e: PTP: set supported
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,intel.com:mid,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.996];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: C0ACA284585
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Since upstream commit d9f3e9ecc456 ("net: ptp: introduce
.supported_perout_flags to ptp_clock_info") and commit 7c571ac57d9d ("net:
ptp: introduce .supported_extts_flags to ptp_clock_info"), kernel core now
requires that the driver set the .supported_perout_flags and
.supported_extts_flags fields in PTP clock info. Otherwise, the additional
flags will be rejected by the kernel automatically.

Set supported flags field so we can set extts pins.

Fixes: d9f3e9ecc456 ("net: ptp: introduce .supported_perout_flags to ptp_clock_info")
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
v3:
- remove unnecessary flag checks for newer kernels and update commit
message
v2:
- add fixes tag
- remove old TODO comment
v1: https://lore.kernel.org/intel-wired-lan/20260309141220.343224-1-przemyslaw.korba@intel.com/

 drivers/net/ethernet/intel/i40e/i40e_ptp.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_ptp.c b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
index 7bcea7d9720f..e7c4f871beec 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ptp.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ptp.c
@@ -598,7 +598,6 @@ static int i40e_ptp_feature_enable(struct ptp_clock_info *ptp,
 	enum ptp_pin_function func;
 	unsigned int chan;
 
-	/* TODO: Implement flags handling for EXTTS and PEROUT */
 	switch (rq->type) {
 	case PTP_CLK_REQ_EXTTS:
 		func = PTP_PF_EXTTS;
@@ -1340,7 +1339,9 @@ static int i40e_init_pin_config(struct i40e_pf *pf)
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

