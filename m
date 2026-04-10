Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id UCqAI5ur2GkmgwgAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:47 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DE2B3D393B
	for <lists+intel-wired-lan@lfdr.de>; Fri, 10 Apr 2026 09:49:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 873ED60BA7;
	Fri, 10 Apr 2026 07:49:38 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lhtSBtp0Yn2P; Fri, 10 Apr 2026 07:49:37 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 166B7605D0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1775807377;
	bh=iHitxJ6dSSx98dAfkYxaapfXLOvFwy1KxnI5+m1uClw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7UQALF8WM7pigYD8mECj7eugxNGKQ2RxJkq8NgS98VWv3JX9Ik94sYPfgmSklgDtN
	 95a4R8GPzwDhk5cJBWz9Okf5WY27ndBlh96AUaw88zMMSm4p7tJa87WEutFatBcKuh
	 7bQt4RTp818mv8gK5lCTPMT+eD1JlF86sAbLfrrc+y56ONfaPnrnJh21LFRwgZBvXg
	 85UPxy9k+2NZvQvyjjgN4EDsNFi7D7ZF66p21GHx1onMmZKyNxXsvNKsx9mrRBZyKl
	 jvRLvQPgCsZBhovgtsfqgcysswT7EDUsD/0ZPLFh+UEa1x5Zr3VsFbWuIcJs9sZjCM
	 S800C7uZryQmA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 166B7605D0;
	Fri, 10 Apr 2026 07:49:37 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DA05D1F6
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C171C81A81
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:34 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 6Ayrqs_bf1FG for <intel-wired-lan@lists.osuosl.org>;
 Fri, 10 Apr 2026 07:49:33 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org AD504816EE
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org AD504816EE
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id AD504816EE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 10 Apr 2026 07:49:33 +0000 (UTC)
X-CSE-ConnectionGUID: MLQbCVh3SDKmDrYlLRjuxg==
X-CSE-MsgGUID: XEnMQsn4RMil9a8k+NGkAQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11754"; a="77007934"
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="77007934"
Received: from orviesa008.jf.intel.com ([10.64.159.148])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2026 00:49:33 -0700
X-CSE-ConnectionGUID: /p17nqLyRya/B32oUl8oVQ==
X-CSE-MsgGUID: GMYz3NDBTcKgVXhjrmZZzw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,171,1770624000"; d="scan'208";a="228941886"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa008.jf.intel.com with ESMTP; 10 Apr 2026 00:49:32 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 10 Apr 2026 09:49:17 +0200
Message-ID: <20260410074921.1254213-7-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
References: <20260410074921.1254213-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1775807374; x=1807343374;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KyKKiZWFrU6bgfomlOok069woZZROnCpDRvRPVZwUBo=;
 b=OqlbWNmlz0LBpjSa50NXgSgyWoYnxWIueT4wGBRToOylwNF5kn+R7rhu
 MLAyFZnvVxqL/9DIy74ZGfg01VuVek5oWbeaiDRf3Oxvd3FZ/un44lxxD
 xxfQ31uCBe3734M5X7/Qa3aPRtqWkpo+cDW5GafJ3gMnWKHrzkAiSSjF3
 yKPZvsGLbRBMjVDFqWmBcFGw4DzXo7L6huujl4kwW4DoCotonwgKmZ4cH
 j5bHQadlqpMZ+DZ+/YpujSmFgqEUqJNkdzGPTZ6XaF/ypw7GRLqqi1FsD
 Cz61Y4q3Tvgxd/KJmCbjH1snt+ZJWz4DBNcFZWwczUpDFdSJ86JqWPmld
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=OqlbWNml
Subject: [Intel-wired-lan] [PATCH iwl-next 6/10] ice: increase OICR
 interrupt moderation rate to 20K interrupts/sec
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
	R_SPF_ALLOW(-0.20)[+mx:c];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 5DE2B3D393B
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

The miscellaneous interrupt cause (OICR) is throttled to 8K
interrupts per second (124 us minimum spacing). This interrupt
handles VF mailbox messages and Tx timestamps, so the low rate
imposes a minimum latency floor on both use-cases.

Raise the rate to 20K interrupts per second (50 us minimum
spacing) to allow lower latency handling for Tx timestamp
bursts and high VF message rates.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 75a48e5..2921da4 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3501,7 +3501,7 @@ static int ice_req_irq_msix_misc(struct ice_pf *pf)
 		     ((pf->ll_ts_irq.index + pf_intr_start_offset) &
 		      PFINT_SB_CTL_MSIX_INDX_M) | PFINT_SB_CTL_CAUSE_ENA_M);
 	wr32(hw, GLINT_ITR(ICE_RX_ITR, pf->oicr_irq.index),
-	     ITR_REG_ALIGN(ICE_ITR_8K) >> ICE_ITR_GRAN_S);
+	     ITR_REG_ALIGN(ICE_ITR_20K) >> ICE_ITR_GRAN_S);
 
 	ice_flush(hw);
 	ice_irq_dynamic_ena(hw, NULL, NULL);
-- 
2.52.0

