Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id uP0pKjoyxmnzHQUAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:31:06 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 570B23406ED
	for <lists+intel-wired-lan@lfdr.de>; Fri, 27 Mar 2026 08:31:06 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8F5AE827AF;
	Fri, 27 Mar 2026 07:31:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4RKz95-iAwa; Fri, 27 Mar 2026 07:31:03 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0FAE483C2E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774596663;
	bh=kVIaHAa4uaRA0Itr5dFO3XCQ/gulNkxlSsAb0NK53Dg=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=CLLnFTMVUCndf4kC74tUtPx8wtmaJM1vPc3Fz0GfCm6PZZb6G0mKdheUyIzj52IP9
	 ytVVE6ZTgjSWc+0PCsyIlhqdNLdAy0z5p4+h5Z+d1VsoP6QBh40I+BIYmvHvX6IZ61
	 FGtIlx1UEKYCXSdxEqAIHiSdDpLZpZJyDZH6RixUqxkvd60jUKIPamzOpftMO3X7Uo
	 j9d/QaRuXQlmxVZ10BT3jSsYLMC6AVVIVpLSWGraPOehmuThwOhHebmyrVhaDSK7sa
	 Ao9y8TbmdJ9CFGZol4IhlpWHGrZ47k2+1NSci6Fjj6tczuDx9lcd1ZNXY5zqfnfgCW
	 jnwfs8GlVxbjw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 0FAE483C2E;
	Fri, 27 Mar 2026 07:31:03 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id E6242249
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:31:00 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id D8A58415C8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:31:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KXPrgyHDDg6B for <intel-wired-lan@lists.osuosl.org>;
 Fri, 27 Mar 2026 07:31:00 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.14;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 12BEE41598
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 12BEE41598
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.14])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 12BEE41598
 for <intel-wired-lan@lists.osuosl.org>; Fri, 27 Mar 2026 07:30:59 +0000 (UTC)
X-CSE-ConnectionGUID: q9sEOLgUQlqDgrgR+akypA==
X-CSE-MsgGUID: TDCxDuhdR1+xu3DsnKkivg==
X-IronPort-AV: E=McAfee;i="6800,10657,11741"; a="75734326"
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="75734326"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa108.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Mar 2026 00:30:59 -0700
X-CSE-ConnectionGUID: HlMc/K/cRtG7tuq41lPEKQ==
X-CSE-MsgGUID: ANQZfXGWT+CTad4XqS9ztQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,143,1770624000"; d="scan'208";a="255740394"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa002.jf.intel.com with ESMTP; 27 Mar 2026 00:30:57 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Marcin Szycik <marcin.szycik@linux.intel.com>
Date: Fri, 27 Mar 2026 08:30:42 +0100
Message-ID: <20260327073046.134085-8-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
References: <20260327073046.134085-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774596660; x=1806132660;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=w3FMcVYaCrwrpfwoeEHl6nNRYb9VqqgyYnHsaVgefjc=;
 b=ClVvjAFyYFT0NBjkSkQORYpvl0+mgQglgOyA0dYBkmCkGpnI4gdghYUK
 B1BM78j7Blz5xyWK8/ynC7WFrPrv+lXoHNhuYEO9D6ufAXtWCxvewxhGX
 5Ifw96LsbyinqNGBurbU/HVm2JbaVkQekvB5w5opl3A2UnF+0JhkDL87j
 BKc/H6XYlpLxQF2YLJykeLB2TV7miGrww+N29R6pojJswYjO5iMukw/tN
 WUsJg9tWQsJ5sDi+fIQ95Xvb1qFr6gwqHwgM6lJaRXBdZ0MrTeCgSRjJ9
 HOvV9aBoDypi1D8GEtvLQbVt26KjHId8UQJGWk4zAJrNiULouMQ9LN09y
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=ClVvjAFy
Subject: [Intel-wired-lan] [PATCH iwl-next] ixgbe: fix cls_u32 nexthdr path
 returning success when no entry installed
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns,intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 570B23406ED
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

Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Marcin Szycik <marcin.szycik@linux.intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_main.c
index db954e9..8ac80ff 100644
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

