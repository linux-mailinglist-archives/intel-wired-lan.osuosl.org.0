Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cBkpB4qtl2nO5QIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 01:40:42 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 03908163E5C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 20 Feb 2026 01:40:40 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6EDAC60F1E;
	Fri, 20 Feb 2026 00:40:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id Csga5N_hSUNo; Fri, 20 Feb 2026 00:40:38 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5022B60F6B
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1771548038;
	bh=6pvHtk/iJP/raD3akWPfDvbFO59G6TvizKrKKRmOGSc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=g4PxHfUiOfB1AensotLa9+wduDYi6h6YsKotaaQJB1j5udzOFQLI8tnbvKlA2VgrM
	 CBqW6eHgqt6dlTpyqfKWaArwQGwG9iUaigIFVws6C+lIAJdGoL3QsIucImbKBl4NZx
	 W+FxYsD+lush9xg5O3/Z4Q/8AqXLqk31F1ZjUQkF/PRAWkLbd8lliOk9srL/GB5wUI
	 x02lKYdHJiP4xmlsGToHylpoqjC2Gf6fL9dXVi1iEbUT4uj0/B38iQNzwNC+A9bD/l
	 4jlpSqZqe5aQuemEvS2//mQD8Zexf0f3wB2epWtzv5/765qdwa1IuZFfFgl/bNMvuy
	 YSNW2BinzyyBQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5022B60F6B;
	Fri, 20 Feb 2026 00:40:38 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 336D51CE
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 00:40:36 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1943040502
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 00:40:36 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8IJuqcyR8zEt for <intel-wired-lan@lists.osuosl.org>;
 Fri, 20 Feb 2026 00:40:35 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=anthony.l.nguyen@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 6186940475
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6186940475
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6186940475
 for <intel-wired-lan@lists.osuosl.org>; Fri, 20 Feb 2026 00:40:35 +0000 (UTC)
X-CSE-ConnectionGUID: RDX4u8+vSKyKGUJyjiwv5Q==
X-CSE-MsgGUID: YoTcifr3RqCnN+UHdRLFSA==
X-IronPort-AV: E=McAfee;i="6800,10657,11706"; a="76484230"
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="76484230"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 Feb 2026 16:40:34 -0800
X-CSE-ConnectionGUID: X/er2DwFQ/Cc0tpa11hcLA==
X-CSE-MsgGUID: JACcu3KGRvmqHs2kBhmMMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,300,1763452800"; d="scan'208";a="218850489"
Received: from anguy11-upstream.jf.intel.com ([10.166.9.133])
 by orviesa003.jf.intel.com with ESMTP; 19 Feb 2026 16:40:33 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: davem@davemloft.net, kuba@kernel.org, pabeni@redhat.com,
 edumazet@google.com, andrew+netdev@lunn.ch, netdev@vger.kernel.org
Cc: Thomas Gleixner <tglx@kernel.org>, anthony.l.nguyen@intel.com,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>,
 intel-wired-lan@lists.osuosl.org, Joe Damato <joe@dama.to>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu, 19 Feb 2026 16:40:21 -0800
Message-ID: <20260220004027.729384-10-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.47.1
In-Reply-To: <20260220004027.729384-1-anthony.l.nguyen@intel.com>
References: <20260220004027.729384-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1771548036; x=1803084036;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=BceDO1lWMoKFD6z4ktQ3P5Lo8MQAF++Bz9Jxyty0ryY=;
 b=kMd4f903YDpEzyrpyPxc1LmfTPZm8b4q+eBLsnQts2iqauyrRDlYLVtw
 NM0XSxfOCl385YgZeb42QhoKF8aYSOyVEHc2Bv/LY89HbXBupwemBO3GE
 9kPL1kQ0C9hJFef2DcK68DsDoCMvhNJjyA5N3t3tudyeRJMluKnPBc3u/
 h5CUA+BiIIOk8mS23NRmNst2Lg43WhLgUWsZL9f8jz8TOdm3O0zV9PQux
 nTg+pbo1GmM9eXA/pGDEJtlYpoNGJFH+kQPRZsCtC+EXHUZSov1UxNWK2
 wsLEMPPyjKL8/OHeXT/OsBd8QYoXKQIQg7gZZjNDwmK5Fc8R4/d5xkOqK
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kMd4f903
Subject: [Intel-wired-lan] [PATCH net 09/13] i40e: Fix preempt count leak in
 napi poll tracepoint
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
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [2.29 / 15.00];
	SUSPICIOUS_RECIPS(1.50)[];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RCPT_COUNT_TWELVE(0.00)[12];
	ARC_NA(0.00)[];
	MIME_TRACE(0.00)[0:+];
	FORGED_RECIPIENTS(0.00)[m:davem@davemloft.net,m:kuba@kernel.org,m:pabeni@redhat.com,m:edumazet@google.com,m:andrew+netdev@lunn.ch,m:netdev@vger.kernel.org,m:tglx@kernel.org,m:anthony.l.nguyen@intel.com,m:przemyslaw.kitszel@intel.com,m:joe@dama.to,m:aleksandr.loktionov@intel.com,m:andrew@lunn.ch,s:lists@lfdr.de];
	FORWARDED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_SENDER_FORWARDING(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns,dama.to:email];
	FROM_NEQ_ENVFROM(0.00)[anthony.l.nguyen@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	FORGED_RECIPIENTS_FORWARDING(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	NEURAL_HAM(-0.00)[-0.995];
	FORGED_SENDER_MAILLIST(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan,netdev];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 03908163E5C
X-Rspamd-Action: no action

From: Thomas Gleixner <tglx@kernel.org>

Using get_cpu() in the tracepoint assignment causes an obvious preempt
count leak because nothing invokes put_cpu() to undo it:

  softirq: huh, entered softirq 3 NET_RX with preempt_count 00000100, exited with 00000101?

This clearly has seen a lot of testing in the last 3+ years...

Use smp_processor_id() instead.

Fixes: 6d4d584a7ea8 ("i40e: Add i40e_napi_poll tracepoint")
Signed-off-by: Thomas Gleixner <tglx@kernel.org>
Cc: Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org
Reviewed-by: Joe Damato <joe@dama.to>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_trace.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_trace.h b/drivers/net/ethernet/intel/i40e/i40e_trace.h
index 759f3d1c4c8f..dde0ccd789ed 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_trace.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_trace.h
@@ -88,7 +88,7 @@ TRACE_EVENT(i40e_napi_poll,
 		__entry->rx_clean_complete = rx_clean_complete;
 		__entry->tx_clean_complete = tx_clean_complete;
 		__entry->irq_num = q->irq_num;
-		__entry->curr_cpu = get_cpu();
+		__entry->curr_cpu = smp_processor_id();
 		__assign_str(qname);
 		__assign_str(dev_name);
 		__assign_bitmask(irq_affinity, cpumask_bits(&q->affinity_mask),
-- 
2.47.1

