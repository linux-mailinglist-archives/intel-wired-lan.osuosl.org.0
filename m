Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id mLngJ6xU/WkYawAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:44 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5648A4F105A
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:44 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B2EF74144B;
	Fri,  8 May 2026 03:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gklsoNXBv_ov; Fri,  8 May 2026 03:12:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org E9F3441458
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778209959;
	bh=g4hrBknN2hpyo8cOGKu/tdvAtFTdRy9HOD3QXsye+EA=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=GgFFLbYwd4UFIDXDD+U/xNeyh3AKxiwGyhSNw/kFd+xCYzWaCRHqGhvcznxDPT3rG
	 VDKVAagi3xqRQG/1FLc8SffJ586MuTijF1WBvgWyYPpKbATAJ3kk83flzO3lZ1mrpb
	 1uoEM/9jjjDQVik2GTrY5Len+nEJdex7RvrKazc1yqT0kg+U+ERheGcF80G77l86fW
	 REmbM2hpthZ948AviIp8iwihKbsub3XlZmeeIIY6lyHrfL54SIXyEUtWZLysRxNBMm
	 NKmazZfJMaGvRcyAd4KNBMU//uWYTdGI+vqv0MooMG5DTRxSmj2lehtvjLOFtTFRID
	 HHh9b4V++mItQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id E9F3441458;
	Fri,  8 May 2026 03:12:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id EA236272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E7939409B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qXAcRlINmqwu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 03:12:36 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C94E94030E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C94E94030E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C94E94030E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:36 +0000 (UTC)
X-CSE-ConnectionGUID: ns6MP0IVQv+Rb2QyvbiSjw==
X-CSE-MsgGUID: t/5tGTXSTu6BaNSKyTWq0A==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79027507"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="79027507"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 20:12:37 -0700
X-CSE-ConnectionGUID: ZlO2kQE9SYGyGqP1UIPL7Q==
X-CSE-MsgGUID: nCsr5/F3RrqGPXX54wiubw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="241623205"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa005.fm.intel.com with ESMTP; 07 May 2026 20:12:35 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>,
 Marcin Szycik <marcin.szycik@linux.intel.com>,
 Simon Horman <horms@kernel.org>
Date: Fri,  8 May 2026 05:12:23 +0200
Message-ID: <20260508031226.3601800-6-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778209957; x=1809745957;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9aq3l7pQ7Mjfw3VwJA+8Dhs6YWVZvwwIVUvAlQE2R7Q=;
 b=DbH9sH/ZEGfMM5rL90m1z8MfqCqRANZjdbfQUTHUQcam0IGtjMLu0E2K
 wCLmUVPlfkSH4PNYy+wE4roIXTnMZTUJKuZO/nSFH8l/fsMpaKcV89gdQ
 XaqKh3zPViJvSeZ3MbwqwRaES6HLWkP1aZWQaY7oU8j0dVZD7eebTGDIC
 JyCfbgO6vM/OBtU5WijF/n+2mzzv2zEw3K/G94STQeawMcvNegwhOmRzb
 dlVwtYMO1qyGQ9e8LKxf/f7mZJiY3w3Plw3g8NZw2wDDI+e1BCNweqI1n
 3s5GjPHazfHvxjZ4bSMT3lsW8r8Wd2cEaiYSKInn5JzV4x73TFnzLscxE
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DbH9sH/Z
Subject: [Intel-wired-lan] [PATCH iwl-next 5/8] ixgbe: use
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
X-Rspamd-Queue-Id: 5648A4F105A
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	NEURAL_HAM(-0.00)[-0.999];
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

