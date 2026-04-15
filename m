Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id EGqWNaqg32kEWwAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 16:28:58 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 458A6405478
	for <lists+intel-wired-lan@lfdr.de>; Wed, 15 Apr 2026 16:28:58 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 270984B398;
	Wed, 15 Apr 2026 14:28:54 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id z9gStQAejSF2; Wed, 15 Apr 2026 14:28:53 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A13784B6DA
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776263333;
	bh=/m6WWzlcLK2jIquH1fBIuBKUUcfgnJ5EDwGzGSrPaig=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=8wC3WexdmcGdM8UBu0AzNEgGWej//QJI+9aJHh6V2rIzpugCt4QkEqYDm76TlDgP+
	 ueeqty94dCqJMvpfLDPSn3ao0du2i2ymyN81n51BIQDPB45JaKSTQungVx7ikEF+6r
	 RnaYkb+0EWepCYF2pKH3Eo9YddJI+/gMJpGemWpADTMrB1aYE374sq97A6825NgWNX
	 fTutWtoCEz7ZbM74OEIXCO6OXqSt/kJrhv+zBqhxjyGZ2IikwooFLf/zUn7P1o1JwN
	 4sA0jd7BPE8xXs+RogyqQE3kCN2ov/+97sF3k05R2u1/rXY3sjcOF7mJ6Y5juj3kkp
	 BotxYEIVfnJXQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id A13784B6DA;
	Wed, 15 Apr 2026 14:28:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3BA3E283
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 21E5E825C3
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id tP4tzEwKOlYw for <intel-wired-lan@lists.osuosl.org>;
 Wed, 15 Apr 2026 14:28:51 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 119B085475
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 119B085475
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 119B085475
 for <intel-wired-lan@lists.osuosl.org>; Wed, 15 Apr 2026 14:28:50 +0000 (UTC)
X-CSE-ConnectionGUID: SypIIIEiRY+OSNJJnm860Q==
X-CSE-MsgGUID: 45EdJcHMRNWpOJRfb0gOPQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11760"; a="77423743"
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="77423743"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Apr 2026 07:28:50 -0700
X-CSE-ConnectionGUID: y/EfwaZqQfWVh46NKVJarA==
X-CSE-MsgGUID: qp8XxpSnSuGFks2ZaAeTHA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,179,1770624000"; d="scan'208";a="234467873"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa003.jf.intel.com with ESMTP; 15 Apr 2026 07:28:48 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org, Simon Horman <horms@kernel.org>,
 Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Wed, 15 Apr 2026 16:28:39 +0200
Message-ID: <20260415142841.3222399-5-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
References: <20260415142841.3222399-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776263331; x=1807799331;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=UPq6I5ywuqsWlMV/CExGXVtW7/DyZKY/nvZFhIfzgBM=;
 b=iHlQJ3lpk+Soo9uJBQhPyL6f+MAGM7HvHd5F3g82p0wQROFseT1Ft9JG
 Uy6ihuCG4QKux3YwHxN7LOPYNZ1LV6FX1ImfdqXUBoRxTDBXjpq5evQHS
 4ZRzckHrKlyI+yO25WuqBdQU0Ui4zKjw35ZsjgYDOEZPw+1pvvB2KinZs
 IZOPKqNmehaTA8RoATXnEHJGWmCvnvCdzapdEhOzg2HkUgVUSHyUshQwO
 i0HmW7R5enEPsPTPh8zNylj2lmTGYTB6MxfoMtngurbmWMxIhZJ84Qbgj
 6H6uZc2vtlDJJijZtxHy1DwaNt6W+rfqYF6a/pGf6tUI3iU6Z8iuQvg4f
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=iHlQJ3lp
Subject: [Intel-wired-lan] [PATCH iwl-net v3 4/6] ixgbe: fix cls_u32 nexthdr
 path returning success when no entry installed
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
	RCPT_COUNT_FIVE(0.00)[6];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns,osuosl.org:dkim];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.998];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 458A6405478
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

ixgbe_configure_clsu32() returns 0 (success) after the nexthdr loop
even when ixgbe_clsu32_build_input() fails for every candidate entry
and no jump-table slot is actually programmed.  Callers that test the
return value would then falsely believe the filter was installed.

The variable 'err' already tracks the last ixgbe_clsu32_build_input()
return value; if the loop completes with a successful break, err is 0.
If all attempts failed, err holds the last failure code.  Change the
unconditional 'return 0' to 'return err' so errors are propagated
correctly.

Fixes: 1cdaaf5405ba ("ixgbe: Match on multiple headers for cls_u32 offloads")
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Cc: stable@vger.kernel.org
Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
v2 -> v3:
 - Add Reviewed-by: Simon Horman; no code change.

v1 -> v2:
 - Add Fixes: tag; reroute from iwl-next to iwl-net (false-success
   return is a user-visible correctness bug, not a cleanup).

 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index 210c7b9..6e7f8a9 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
@@ -10311,7 +10311,7 @@ static int ixgbe_configure_clsu32(struct ixgbe_adapter *adapter,
 				kfree(jump);
 			}
 		}
-		return 0;
+		return err;
 	}
 
 	input = kzalloc_obj(*input);
-- 
2.52.0
