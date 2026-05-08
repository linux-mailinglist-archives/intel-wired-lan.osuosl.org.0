Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id 9m/ML6pU/WkYawAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:42 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 6E1BB4F104C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 08 May 2026 05:12:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 94CB541453;
	Fri,  8 May 2026 03:12:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mkB4gq5UQzbL; Fri,  8 May 2026 03:12:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 626994144B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778209958;
	bh=FWeMcMH4Y7gba5572DmLBG8HvXsFTUSzXvdhjzkrpdM=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=RQuYCKZuSagM5w6LGiEa4GmWhMiJySlHFUfdbGiE0g5L5536Tu3mCZCvRq9N55Y8y
	 xKepsmeo7N0ZE2wGobpphGRql+8F0351qhNqDp1rwigzSGtuUsRkIEmTNvNyYkjXE+
	 QoXBpXM2jSOfT3eaSg5lLOT4XrGtt691HqXsd+wRgauUcOeY6GfmuXWzY8i8J9s1SL
	 1pAjHQpiLVZPbqOzoyoT6seKxQDIfWoHldvaobjElQW9koOOq6Ee29kHjt6KhXhoAO
	 jiTfs+yEN1bFP1Zmo2od5tFIaMEXGArHrRlxk24/ZjyDLZIgU3i3AprS+C/miSCQLb
	 Xrd+P8/NwlZ7g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 626994144B;
	Fri,  8 May 2026 03:12:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 46B7A272
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 389D8409B3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 2RRO1vXijxwk for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 May 2026 03:12:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 24A7B4030E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 24A7B4030E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 24A7B4030E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 May 2026 03:12:35 +0000 (UTC)
X-CSE-ConnectionGUID: 5ePhOdTJSoiKHUTl1DCJqw==
X-CSE-MsgGUID: fjlLbu11TB+LcrZDCHNv9Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11779"; a="79027503"
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="79027503"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2026 20:12:35 -0700
X-CSE-ConnectionGUID: 5yJMNqWSQUqKtuGONmWiwQ==
X-CSE-MsgGUID: 7mzQEoI5QO2MZbBwMkcYrw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,222,1770624000"; d="scan'208";a="241623201"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa005.fm.intel.com with ESMTP; 07 May 2026 20:12:34 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Fri,  8 May 2026 05:12:22 +0200
Message-ID: <20260508031226.3601800-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
References: <20260508031226.3601800-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778209955; x=1809745955;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=cyk7C6u2sQlQMQ/Lr6UpLcUYzBBZP3dUYKCPN5FKMgg=;
 b=TOKw2stFzwWHzxgJeGgaDDsCk63rAq9uNcDvaCKQ5DH85K/oRj1aZG94
 LJEeDg0PvVHv7ZbQ8cN87TVbM+TuGYg6isw9rEyRWUa3ai0P2ffJxR4SN
 Hh2I3f+EQoPEsE6nupqb7+AOiRnNSqq81favawa12tLoij/lE4lKVy6va
 DHGVYyrxfgBA2dreEtZXua3TNVPErGyPsikCMx5eF1VOimugRxVYEYvxG
 gAPJ6wgtlqJ20PIX8nEZ2xYRKvJGT82G29XKFZ241epHxNbmTCEQkSzLf
 wq6pZLOwoBcRSBXhPBwcl8GrBoS+CRvL9YTC52DO15I00Agy4VTvIw5VL
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TOKw2stF
Subject: [Intel-wired-lan] [PATCH iwl-next 4/8] ixgbe: increase SECRX_RDY
 polling frequency in ixgbe_disable_rx_buff_generic
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
X-Rspamd-Queue-Id: 6E1BB4F104C
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCPT_COUNT_THREE(0.00)[4];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:email,intel.com:mid];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

From: Maciej Rabeda <maciej.rabeda@intel.com>

ixgbe_disable_rx_buff_generic polls for SECRX_RDY with 40 iterations
and a 1000 us (1 ms) busy-wait per iteration via udelay(), giving an
exact total wait of 40 ms.  On fast hardware the security block is
typically ready well under 1 ms, so each iteration wastes up to
999 us of stalled initialization time.

Replace udelay(1000) with usleep_range(10, 20) and raise the iteration
limit to 4000.  Because usleep_range(min, max) is guaranteed to sleep
at least 'min' microseconds, 4000 * 10 us preserves the original 40 ms
minimum wait before timeout.  The worst-case is now ~80 ms (4000 * 20
us) plus scheduler latency, which is acceptable since SECRX_RDY
failing to assert is a non-fatal informational condition (the function
just logs a debug message).

On platforms where SECRX_RDY asserts quickly this reduces the typical
stall from up to ~1 ms per iteration to ~10-20 us.  The function is
called only from process context, so usleep_range is appropriate.

Signed-off-by: Maciej Rabeda <maciej.rabeda@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_common.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
index 3ea6765..c85618c 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_common.c
@@ -2683,7 +2683,7 @@ int prot_autoc_write_generic(struct ixgbe_hw *hw, u32 reg_val, bool locked)
  **/
 int ixgbe_disable_rx_buff_generic(struct ixgbe_hw *hw)
 {
-#define IXGBE_MAX_SECRX_POLL 40
+#define IXGBE_MAX_SECRX_POLL 4000
 	int i;
 	int secrxreg;
 
@@ -2695,8 +2695,7 @@ int ixgbe_disable_rx_buff_generic(struct ixgbe_hw *hw)
 		if (secrxreg & IXGBE_SECRXSTAT_SECRX_RDY)
 			break;
 		else
-			/* Use interrupt-safe sleep just in case */
-			udelay(1000);
+			usleep_range(10, 20);
 	}
 
 	/* For informational purposes only */
-- 
2.52.0

