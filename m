Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cLPrE4d8+GkowAIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 13:01:27 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DECFD4BC145
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 13:01:24 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 7B83684521;
	Mon,  4 May 2026 11:01:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id UbK_JqTMa1Qj; Mon,  4 May 2026 11:01:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F02A184523
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777892467;
	bh=CejRnIOSXG7TH6lOmpRYm3VtCiFL2GlkRfG+lsH49MA=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=gxRvuk5i7hGLnEwwIJZ0z/t6oYl7FdsE9QxN6eUQWSHxuwtQ5rCSdeHVkap/Lu0D3
	 g023eLyAdra/dKwf219uXi4owF7hq2Tppr4xT5+zyC5cC6edibbk3XYqI8vnoQ0YiM
	 eHRqr67V/AAzsiO3oDT2rxMPo7zbg46oi1td4gzlqyjUgTxhSUeWMW8B9OAE6GbMOw
	 9UhqbdLFTA+r0egzUmaxg5U6RsztoIDTHYDa5z6qMRiXo9kePgTDUpslDqGyCon6S3
	 EUUXX8GUygafzNBBBEwK/m1lSU538H8lSR9iouoOeGH1l2ztxCmqWE1WnfezPLwqWC
	 lP45oHDvAZzqw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F02A184523;
	Mon,  4 May 2026 11:01:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id 22164190
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:01:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 0C3B06139D
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:01:03 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZAz9AzadZv7C for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 11:01:02 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=sergey.temerkhanov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 6821D6139A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6821D6139A
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 6821D6139A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 11:01:02 +0000 (UTC)
X-CSE-ConnectionGUID: 79LRunjCSD2U9ZLy9o0CjQ==
X-CSE-MsgGUID: iv4QTy+JQz2vi0cMwd740Q==
X-IronPort-AV: E=McAfee;i="6800,10657,11775"; a="78939690"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78939690"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 04:01:03 -0700
X-CSE-ConnectionGUID: 1Jr09M9ZRjCWXsJ9erLfmQ==
X-CSE-MsgGUID: X24t4QpYRCS3srp9wepcXQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="239792124"
Received: from gnrd8.igk.intel.com (HELO GNRD8) ([10.123.232.137])
 by orviesa004.jf.intel.com with ESMTP; 04 May 2026 04:01:01 -0700
From: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 May 2026 11:00:58 +0000
Message-ID: <20260504110058.2373236-4-sergey.temerkhanov@intel.com>
X-Mailer: git-send-email 2.53.0
In-Reply-To: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
References: <20260504110058.2373236-1-sergey.temerkhanov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777892463; x=1809428463;
 h=from:to:subject:date:message-id:in-reply-to:references:
 mime-version:content-transfer-encoding;
 bh=NYS+R40mOjYf6fmrJkydT5fr4ckbVWfdyHgaoqz5wAk=;
 b=hvco6sQHC/4mnw+3P6+DjZqbtH660IjkDVnB6cUHV1joM/gVzGELnAf0
 sKUqKuWm45MtnvIdfxGhaMGRMzQ8YKt6dMnQYK4FGCkZCMAUMK4mJ+dv/
 fX/3nxUqE25n0o3u9H2z4eyK0pZTKP5n7Q4R8h3S9iPqM1If4uRrJyfJ7
 VQD0TDwEs9ksOjYJjN8BSMf+/h3rkOkg0talv4uDC+AM/ZdeUMoDo/C6H
 +BnNYAkPBYkmESV8kkTqBUhw6Sc6+nZlIjiFXmn8ivHoLhs9FTZMQoXs1
 ++X1Mai9j4qR4sUA2nLyso+LA0J5I4X8geom4WXkgIubuCtxG+rX69jw8
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=hvco6sQH
Subject: [Intel-wired-lan] [PATCH iwl-net v1 3/3] ice: Cache struct ice_hw
 pointer for split register reads
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
X-Rspamd-Queue-Id: DECFD4BC145
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	RCVD_COUNT_SEVEN(0.00)[9];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[sergey.temerkhanov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.998];
	RCPT_COUNT_ONE(0.00)[1];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim]

Cache the primary ice_hw pointer to ensure consistency between
calls (both parts of a value will be read from the same NAC).
ice_get_primary_hw() will never return NULL, but during the
ctrl_pf cleanup there may be a case when one call will return
the pointer to the ctrl_pf->hw and the subsequent one - to the
pf->hw which generally are not the same.
Struct ice_hw is embedded in the struct ice_pf so it is protected
by the same critical section - no additional synchronization is
needed.

Fixes: e2193f9f9ec9 ("ice: enable timesync operation on 2xNAC E825 devices")

Signed-off-by: Sergey Temerkhanov <sergey.temerkhanov@intel.com>
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Arkadiusz Kubalewski <arkadiusz.kubalewski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 17 +++++++++++++----
 1 file changed, 13 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 892bcc50e82f..95238224b59a 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4,6 +4,7 @@
 #include <linux/cleanup.h>
 #include <linux/delay.h>
 #include <linux/iopoll.h>
+#include "ice.h"
 #include "ice_common.h"
 #include "ice_ptp_hw.h"
 #include "ice_ptp_consts.h"
@@ -1988,10 +1989,14 @@ static int ice_read_phy_and_phc_time_eth56g(struct ice_hw *hw, u8 port,
 		zo = rd32(hw, GLTSYN_SHTIME_0(tmr_idx));
 		lo = rd32(hw, GLTSYN_SHTIME_L(tmr_idx));
 	} else {
+		struct ice_hw *pri_hw;
+
 		guard(rcu)();
 
-		zo = rd32(ice_get_primary_hw(pf), GLTSYN_SHTIME_0(tmr_idx));
-		lo = rd32(ice_get_primary_hw(pf), GLTSYN_SHTIME_L(tmr_idx));
+		pri_hw = ice_get_primary_hw(pf);
+
+		zo = rd32(pri_hw, GLTSYN_SHTIME_0(tmr_idx));
+		lo = rd32(pri_hw, GLTSYN_SHTIME_L(tmr_idx));
 	}
 	*phc_time = (u64)lo << 32 | zo;
 
@@ -2159,10 +2164,14 @@ int ice_start_phy_timer_eth56g(struct ice_hw *hw, u8 port)
 		lo = rd32(hw, GLTSYN_INCVAL_L(tmr_idx));
 		hi = rd32(hw, GLTSYN_INCVAL_H(tmr_idx));
 	} else {
+		struct ice_hw *pri_hw;
+
 		guard(rcu)();
 
-		lo = rd32(ice_get_primary_hw(pf), GLTSYN_INCVAL_L(tmr_idx));
-		hi = rd32(ice_get_primary_hw(pf), GLTSYN_INCVAL_H(tmr_idx));
+		pri_hw = ice_get_primary_hw(pf);
+
+		lo = rd32(pri_hw, GLTSYN_INCVAL_L(tmr_idx));
+		hi = rd32(pri_hw, GLTSYN_INCVAL_H(tmr_idx));
 	}
 	incval = (u64)hi << 32 | lo;
 
-- 
2.53.0

