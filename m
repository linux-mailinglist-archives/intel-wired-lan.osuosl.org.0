Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id GDCMAz5uB2rY2gIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 21:04:30 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7CFF755691F
	for <lists+intel-wired-lan@lfdr.de>; Fri, 15 May 2026 21:04:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 1886A40C49;
	Fri, 15 May 2026 19:04:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id S7bH5dHRPvCc; Fri, 15 May 2026 19:04:27 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8EE9840B93
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1778871867;
	bh=uaghr1vRGQKBQhkHbr7F5sU+VjUrdM+K8MKpEyxPOT8=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CakgGb4hGdlvwakkyI7NZ6APcbmW7aQCMPPePBy2ngIuumG0DBL4TpYlCHie/lPfe
	 +M8CtyGZxzhxTPHkpXB+Rzu4NYVke7d4XKH+binBFt6OunFSKWRFdrDtDr6NTUOHu8
	 80pyRiAl31/TAQIgph5n6oFfS6gomadwyojTi7PO8FSNAeY249bzuMw6MJZQE5oNtG
	 SfzRitKRzJE4dFEAPalKO18SMti9NfemQe5U383L2ca+W0rwFR07TSUR0mB/NeIMdN
	 Ob+ZnOUovUzwpK/3caMynTPSsQ6vs9cTXa1DD93oSU98JaVdulZ2elgqcD0FdZrYIV
	 t1CthCJgexScA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8EE9840B93;
	Fri, 15 May 2026 19:04:27 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 59398282
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 19:04:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B65040FD2
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 19:04:26 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RcBuk45TzfVg for <intel-wired-lan@lists.osuosl.org>;
 Fri, 15 May 2026 19:04:25 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 57B0140FB9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 57B0140FB9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 57B0140FB9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 15 May 2026 19:04:25 +0000 (UTC)
X-CSE-ConnectionGUID: +EIIulx0Q++R6GKU079S8w==
X-CSE-MsgGUID: lqAMc3MhR0KT/F5YoYdZCA==
X-IronPort-AV: E=McAfee;i="6800,10657,11787"; a="79725704"
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="79725704"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 May 2026 12:04:25 -0700
X-CSE-ConnectionGUID: sp2pY6EtQMmSz3VTHjW0CQ==
X-CSE-MsgGUID: T+i9RlrySPKz4DA9H2wTlA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,236,1770624000"; d="scan'208";a="238895633"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa009.jf.intel.com with ESMTP; 15 May 2026 12:04:23 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Simon Horman <horms@kernel.org>
Date: Fri, 15 May 2026 21:04:16 +0200
Message-ID: <20260515090000.5112345-4-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260515090000.5112345-1-aleksandr.loktionov@intel.com>
References: <20260515090000.5112345-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1778871865; x=1810407865;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=KWAoFAF1GvnTMMC9rlxROg6EOORDVvCfaTHCIrglN3k=;
 b=QKTkXoXiw9spK/Y9D4teajLUCK7a92BZoG7VOeBNxpiqG8zG5tliob6P
 yoqqDOAqWWHnv2BdQHm1BtFBYZSmONaZlY5Y05WVV+6qxrdGNSY+LyIL0
 o9m4GMz53r2rLKSzLe8xNGBU6sTcp/v5S9IcNDi4Oz/ZuplL/tf2j5N2K
 85gqjmFRiUal/GYd7K/dEF1DBQYedRN4jnh6GWueBd43sZAEPGKDBB01B
 MpLHDixNdwEFkQ03No5OhHLN+5R10IuMZdq/kEqxOASiRy2mcnw8r5yIr
 2KHGodwPGax6JRQWKT1rb9vQvYlwrgOuO1/bSvpPaMCCJJSPe2lF9hi3h
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=QKTkXoXi
Subject: [Intel-wired-lan] [PATCH iwl-net v5 3/4] ixgbe: fix ITR value
 overflow in adaptive interrupt throttling
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
X-Rspamd-Queue-Id: 7CFF755691F
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.39 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	MAILLIST(-0.20)[mailman];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Action: no action

ixgbe_update_itr() packs a mode flag (IXGBE_ITR_ADAPTIVE_LATENCY,
bit 7) and a usecs delay (bits [6:0]) into an unsigned int, then
stores the combined value in ring_container->itr which is declared as
u8.  Values above 0xFF wrap on truncation, corrupting both the delay
and the mode flag on the next readback.

Keep the mode bit (IXGBE_ITR_ADAPTIVE_LATENCY) and the usec delay as
separate operands in the final store expression.  Clamp only the usecs
portion to [IXGBE_ITR_ADAPTIVE_MIN_USECS, IXGBE_ITR_ADAPTIVE_MAX_USECS]
using clamp_val() so that:
 - overflow cannot bleed into the mode bit (bit 7),
 - the delay cannot exceed 126 us (IXGBE_ITR_ADAPTIVE_MAX_USECS),
 - the delay cannot drop below 10 us (IXGBE_ITR_ADAPTIVE_MIN_USECS).

Fixes: b4ded8327fea ("ixgbe: Update adaptive ITR algorithm")
Cc: stable@vger.kernel.org
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Simon Horman <horms@kernel.org>
---
v2 -> v3:
 - Use clamp_val() instead of min_t() to also guard the lower bound
   (IXGBE_ITR_ADAPTIVE_MIN_USECS); keep mode and delay as separate
   operands until final store; use IXGBE_ITR_ADAPTIVE_MAX_USECS (126)
   as upper bound instead of IXGBE_ITR_ADAPTIVE_LATENCY - 1 (127)
   (Simon Horman).

v1 -> v2:
 - Add proper [N/M] numbering so patchwork tracks it as part of the set;
   no code change.

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 10 +++++++---
 1 file changed, 8 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 210c7b9..9f3ae21 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -2886,11 +2886,17 @@ static void ixgbe_update_itr(struct ixgbe_q_vector *q_vector,
 			    IXGBE_ITR_ADAPTIVE_MIN_INC * 64) *
 		       IXGBE_ITR_ADAPTIVE_MIN_INC;
 		break;
 	}
 
 clear_counts:
-	/* write back value */
-	ring_container->itr = itr;
+	/* Separate mode bit (IXGBE_ITR_ADAPTIVE_LATENCY) from usec delay;
+	 * clamp delay to [MIN_USECS, MAX_USECS] before storing to prevent
+	 * u8 truncation from corrupting the mode flag or delay on readback.
+	 */
+	ring_container->itr = (itr & IXGBE_ITR_ADAPTIVE_LATENCY) |
+		clamp_val(itr & ~IXGBE_ITR_ADAPTIVE_LATENCY,
+			  IXGBE_ITR_ADAPTIVE_MIN_USECS,
+			  IXGBE_ITR_ADAPTIVE_MAX_USECS);
 
 	/* next update should occur within next jiffy */
 	ring_container->next_update = next_update + 1;
-- 
2.52.0
