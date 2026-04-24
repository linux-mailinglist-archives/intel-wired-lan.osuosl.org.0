Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id oFwAK5gL62lJHwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 08:20:08 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id D0A6445A312
	for <lists+intel-wired-lan@lfdr.de>; Fri, 24 Apr 2026 08:20:07 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 5FF1E40647;
	Fri, 24 Apr 2026 06:20:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1QtdC4vL1Kd2; Fri, 24 Apr 2026 06:20:04 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6681C4066B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777011604;
	bh=p1NT8RsL9wRFUvwc4EpF4S39ue7A6ghbzK88kcsRaIo=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=atbylN9/JS5gGCXzpWJx+N+WtsQhU/k4ITg2ppXroSwMUfBPEt2zTYkRAQRtY6Y/B
	 axPN0AKf9wv+gO8OpuNnnhgUwUH1sPT3/ZaOEt4c6VrtUk2GcROfgpdTV+KItB3AXy
	 k7XnXxajKRMzxFLjcMjJ0dx7qXZgKDtcmKgLn8upQ/rpo23wRCGB297KnZlbg5J6Ys
	 W745DpuiktKe5OlfFOS165x6XXeW2XrSV60AyegxWw7PVEantvuk1EKpjuDcjHx6zW
	 1t70zuHk3uisMGAOyh7jG3C9jQd1lw2BHhA3gbEBCQ4apd47cbi7y66QWs7cF7u6Sz
	 RVuXpozQGhvig==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6681C4066B;
	Fri, 24 Apr 2026 06:20:04 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 83B27231
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 06:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 696F742110
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 06:20:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fNZluc55mXSP for <intel-wired-lan@lists.osuosl.org>;
 Fri, 24 Apr 2026 06:20:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 998B4420F8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 998B4420F8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 998B4420F8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 24 Apr 2026 06:20:02 +0000 (UTC)
X-CSE-ConnectionGUID: HrcJHEJYQX6b+zXB7l4lyg==
X-CSE-MsgGUID: MBcQlmOzSWWlwYPu7zpFVA==
X-IronPort-AV: E=McAfee;i="6800,10657,11765"; a="77873870"
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="77873870"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Apr 2026 23:20:02 -0700
X-CSE-ConnectionGUID: mEILhK05RXm4qLMwAgUi1Q==
X-CSE-MsgGUID: xV8i61CmSK25qX6dTMnf4g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,196,1770624000"; d="scan'208";a="232776879"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 23 Apr 2026 23:20:01 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Date: Fri, 24 Apr 2026 08:19:58 +0200
Message-ID: <20260424061958.918404-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777011603; x=1808547603;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=8FCSqw0T65YwOTutmJofsBTnijCoHEsSgp28t0Ta0y8=;
 b=KkZwKtJMCsVWBCOzwxf/Bcvawk9JzX3Wj0JEEOMym0B7vUxx9nKDNM0R
 7Rt1lSXuno1Qcq4q+C1c0WlmnI7Ln9xybq/e3P3seu94WtDbIPLLXo/qC
 i5L/8XDj2h4UC1R5ULD2tdXGA+bh4F2qmiKHLc7IGpWtENeRZOsa2qE+k
 lF5XyjGp8kispvdanVmR3FJpZ8N9vh6scMxZZX3qyegfna/DhODvfG9Bv
 qcHgtv9O3og52jZQG18SMiRqPB/oKu2skDcjDPhTL14D5LdIuMSrH++Q/
 tU0dJ0dMHVKVhSTBgl0wBlwJkKqAku0h9x1afFiKnAYYlT+QMrYT9uKZS
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=KkZwKtJM
Subject: [Intel-wired-lan] [PATCH iwl-net] ice: only free LL TS IRQ when the
 handler is present
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
X-Rspamd-Queue-Id: D0A6445A312
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]

From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>

Free LL TS IRQ handler only when the handler was previously installed.
Unguarded calls to ice_free_irq_msix_ll_ts() may result in a double
free when the LL TS interrupt is not supported by the firmware because
ll_ts_irq.index is zero-initialised and would pass the index >= 0 check.

Track whether the LL TS IRQ was successfully requested by initialising
ll_ts_irq.index to -ENOENT in ice_init_pf() and when taking the
"not supported" skip path or on request failure, then guard the free
paths with ll_ts_irq.index >= 0.

Fixes: 82e71b226e0e ("ice: Enable SW interrupt from FW for LL TS")
Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 3c36e36..cc3743a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3389,7 +3389,7 @@ static void ice_free_irq_msix_misc(struct ice_pf *pf)
 	devm_free_irq(ice_pf_to_dev(pf), misc_irq_num, pf);
 
 	ice_free_irq(pf, pf->oicr_irq);
-	if (pf->hw.dev_caps.ts_dev_info.ts_ll_int_read)
+	if (pf->ll_ts_irq.index >= 0)
 		ice_free_irq_msix_ll_ts(pf);
 }
 
@@ -3473,8 +3473,10 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 	}
 
 	/* reserve one vector in irq_tracker for ll_ts interrupt */
-	if (!pf->hw.dev_caps.ts_dev_info.ts_ll_int_read)
+	if (!pf->hw.dev_caps.ts_dev_info.ts_ll_int_read) {
+		pf->ll_ts_irq.index = -ENOENT;
 		goto skip_req_irq;
+	}
 
 	irq = ice_alloc_irq(pf, false);
 	if (irq.index < 0)
@@ -3487,6 +3489,7 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 		dev_err(dev, "devm_request_irq for %s failed: %d\n",
 			pf->int_name_ll_ts, err);
 		ice_free_irq(pf, pf->ll_ts_irq);
+		pf->ll_ts_irq.index = -ENOENT;
 		return err;
 	}
 
@@ -3496,7 +3499,7 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 	ice_ena_ctrlq_interrupts(hw, pf->oicr_irq.index);
 	/* This enables LL TS interrupt */
 	pf_intr_start_offset = rd32(hw, PFINT_ALLOC) & PFINT_ALLOC_FIRST;
-	if (pf->hw.dev_caps.ts_dev_info.ts_ll_int_read)
+	if (pf->ll_ts_irq.index >= 0)
 		wr32(hw, PFINT_SB_CTL,
 		     ((pf->ll_ts_irq.index + pf_intr_start_offset) &
 		      PFINT_SB_CTL_MSIX_INDX_M) | PFINT_SB_CTL_CAUSE_ENA_M);
@@ -4090,6 +4093,7 @@ int ice_init_pf(struct ice_pf *pf)
 	 * the misc functionality and queue processing is combined in
 	 * the same vector and that gets setup at open.
 	 */
+	pf->ll_ts_irq.index = -ENOENT;
 	err = ice_req_irq_msix_misc(pf);
 	if (err) {
 		dev_err(dev, "setup of misc vector failed: %d\n", err);
-- 
2.52.0

