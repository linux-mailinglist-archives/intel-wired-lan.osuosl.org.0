Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id iEtOKZQ0A2oA1gEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:24 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 58BBF521FF6
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 May 2026 16:09:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A7BE540B70;
	Tue, 12 May 2026 14:09:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RW6wMtoYuX-H; Tue, 12 May 2026 14:09:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DF94140C71
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778594956;
	bh=5bLPiZ/KpafRAMLqb442/GglZ3vTvVUg9bUFDuOG3n4=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=ufqf6FaflgjbcbDQmVylhGqijxAk6svv5c74oZFh+dCEpu0eNw+Gap8X+96VD5rah
	 Z3AvcrcGT6yF2j8+oePsawaXQJNnZdpQ9GX8smXXgqF0CGelipTi54ocS9k/AMPzX4
	 lW7aNOxb0MzJlgpnnbKHEPLmCBCiQmX/vVbWw/NmLmiZqD4HbJM0JttWTz/smlglkR
	 8CEM25cAraK6LZbJgs/vgc9dYvvsa44rUUL/aSObYqYkQT06KLR3YrPx9y9aLJPtAw
	 1IPJd49fvMv+fEc7tmI+b4JufN1C6shRRiD2Wky/az8d3io6Lqqy+D7S5eiz266E98
	 acsLM9+2f+6Zg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DF94140C71;
	Tue, 12 May 2026 14:09:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 78278223
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 6A33260DA6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id nbcTE_mB_xcj for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 May 2026 14:09:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6AC6560DAA
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6AC6560DAA
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6AC6560DAA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 May 2026 14:09:14 +0000 (UTC)
X-CSE-ConnectionGUID: NuRLuzBqQb2mnWrDNEiWKA==
X-CSE-MsgGUID: LAUfXiohQnKk/5Iu5idFzw==
X-IronPort-AV: E=McAfee;i="6800,10657,11784"; a="96929667"
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="96929667"
Received: from orviesa001.jf.intel.com ([10.64.159.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 May 2026 07:09:14 -0700
X-CSE-ConnectionGUID: Vxwu3oBHT9S610l3zT+s+w==
X-CSE-MsgGUID: 8AOD/5RLTm6R2thPkFOAAg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,231,1770624000"; d="scan'208";a="275892484"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa001.jf.intel.com with ESMTP; 12 May 2026 07:09:13 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Simon Horman <horms@kernel.org>
Date: Tue, 12 May 2026 16:09:00 +0200
Message-ID: <20260512140904.4105236-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
References: <20260512140904.4105236-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778594954; x=1810130954;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=f+cnbiB4fpHGYtE/osVmWXJrV/zk9d7Jo6pGyD1jSc0=;
 b=P4ACGW+07KD7rCbNj14fA1PrsCnuDgZ3tI+e3KqNXsCSbSAyHzCLcHor
 0fWjVirwWkoWNVEd0OmVSWIcR/vKjoiwZA8nMO31QdU8Tsu0gj/sbGk+p
 Kc/obQovaSjd/6DLzRu+E6LtR+E9b3/jIDv0josRwM1iEuakGY7o0SJ9f
 ZNT98if7YnYmFaPJNTsb7hW2/FwIG7Y/YyNxu1WaFI5wUQ+bHDXy/qZ6h
 GQXfHLVPY6EVRVOH1K+8JvP4ScsRhham6KlluRszdhin7zpVtU+ELV5WW
 4dkU/Tl2PDROzyoH4zuXPvRTCEB4SGNQ/TPpZUZv6bXvEDYwuMH0JkaYY
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=P4ACGW+0
Subject: [Intel-wired-lan] [PATCH iwl-next v2 4/8] ixgbe: increase SECRX_RDY
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
X-Rspamd-Queue-Id: 58BBF521FF6
X-Rspamd-Server: lfdr
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
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
minimum wait before timeout.  The nominal worst-case rises to ~80 ms
(4000 * 20 us); on a loaded system actual scheduler wakeup latency may
push this higher.  This is acceptable because SECRX_RDY failing to
assert is a non-fatal informational condition: the function just logs
a debug message and returns success.

On platforms where SECRX_RDY asserts quickly this reduces the typical
stall from up to ~1 ms per iteration to ~10-20 us.  The function is
called only from process context, so usleep_range is appropriate.

Signed-off-by: Maciej Rabeda <maciej.rabeda@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
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

