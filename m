Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id +AW5OZY0A2oA1gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:26 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53602521FFD
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id E452640DC8;
	Tue, 12 May 2026 14:09:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J9MQTUBi4Wz6; Tue, 12 May 2026 14:09:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6660D40D7C
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778594959;
	bh=g4hrBknN2hpyo8cOGKu/tdvAtFTdRy9HOD3QXsye+EA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gdzY1WcDouSQK/5vgpzOUeMT5RwVMzAwibi9PGzL/eC76davDgz5vSaRp1nXGA2JL
	 L7roVBa5rStQAPOSyhcn/JhLtn4hwOiBpXKS2P/SVYSS22nIazoG7ytrcgj97e4qSP
	 j1fs9XtjdlZS53+9eMXMJhS9yWUoM/pT7uG8WN1uVsh1uIthKs/uqnOQrN0Da4faIF
	 Jjf9ZMDEinvi6xlhEheMmxNeUncPfAwwDmS7iJNEiW4Ogm8fdXyaGWYZLKi4gOLi++
	 4jF0ZNcDzjp9Vhw5vo1jZrPoP13mWi8+9j9//+NlRT0mTD8cxlh8UC4dzPnOB7CuBb
	 kZ7bHmJgeUWZw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 6660D40D7C;
	Tue, 12 May 2026 14:09:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id B13DF223
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:17 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 9771D60DB6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MGmPCgHrVFCN for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 14:09:16 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4EDBB60DB2
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4EDBB60DB2
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4EDBB60DB2
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:16 +0000 (UTC)
X-CSE-ConnectionGUID: e7dP6Fn9SyKD9bL4KR0f1g==
X-CSE-MsgGUID: O4hE9ugQQhCjJfuiSDTUUw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="96929672"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="96929672"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:09:16 -0700
X-CSE-ConnectionGUID: yt5lASHASUa8mIPToME5Gw==
X-CSE-MsgGUID: GkscmG7nR26lRYvKSdTKVg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="275892491"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 12 May 2026 07:09:14 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Simon Horman <horms@kernel.org>
Date: Tue, 12 May 2026 16:09:01 +0200
Message-ID: <20260512140904.4105236-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
References: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594956; x=1810130956;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9aq3l7pQ7Mjfw3VwJA+8Dhs6YWVZvwwIVUvAlQE2R7Q=;
 b=VDb4HBNprG0Jq/G6wM6x31bJRRcwOMJcRsFuZH6gRIJCRJzT17YHuajj
 Q0xCf9Zx5VmYqobaXlMZpmPTZKMvv+Kh1OOU7quQX0QtxZZgCLVySdIn2
 Q7LYM7eVM968wPl5xj4oMDJTv4i1qaHHUAxpNJH3G0Y1UwN46pjb+nUpv
 yUTNstYhIUcTBHmt6L858ZnktuFI85aHWVlbOYOZF/DuBv7Sbxv+jDbkr
 6722xGYWHgd5Hj7BCdjd8PPv8oWov7Cz45hrgF2seX8l9CjrMGrVEZ6Em
 O+dVc3x5Ogv4eOeiZ3K8EbfkCOqdebnIgH0nuEBmJOyD0yHOMi2H5KlM0
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=VDb4HBNp
Subject: [Intel-wired-lan] [PATCH iwl-next v2 5/8] ixgbe: use
 ktime_get_real_ns() in ixgbe_ptp_reset()
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
X-Rspamd-Queue-Id: 53602521FFD
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	TO_DN_SOME(0.00)[];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-1.000];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: Jacob Keller <jacob.e.keller@intel.com>

Replace ktime_to_ns(ktime_get_real()) with the direct equivalent
ktime_get_real_ns() in ixgbe_ptp_reset().  Using the combined helper
avoids the unnecessary intermediate ktime_t variable and makes the
intent clearer.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
index 6885d23..a7d1635 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_ptp.c
@@ -1347,7 +1347,7 @@ void ixgbe_ptp_reset(struct ixgbe_adapter *adapter)
 
 	spin_lock_irqsave(&adapter->tmreg_lock, flags);
 	timecounter_init(&adapter->hw_tc, &adapter->hw_cc,
-			 ktime_to_ns(ktime_get_real()));
+			 ktime_get_real_ns());
 	spin_unlock_irqrestore(&adapter->tmreg_lock, flags);
 
 	adapter->last_overflow_check = jiffies;
-- 
2.52.0

