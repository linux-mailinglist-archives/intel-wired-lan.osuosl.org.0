Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id OFe9MECs+Gn2xgIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:04 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 93F954BF547
	for <lists+intel-wired-lan@lfdr.de>; Mon, 04 May 2026 16:25:04 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id B3959819B4;
	Mon,  4 May 2026 14:25:00 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id B8iTh6_aSGxV; Mon,  4 May 2026 14:25:00 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org F02AC81E19
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777904700;
	bh=TKDljZ5Zu2iCNLZber9hYnJTEZa7j4BMIymWcM6yW9Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=V8sVPvWVClcM5RzfHoA/1MLiesrxh3uhktSvfVjOygY9wrQ/zuDHVjdCl+gdyMSer
	 EMIutQN5Is2yHHKZsZEJ3NMUNvfoxIjs8Yo3h7BczjSseK0k6DMzCvUYRWIQ8I8dLc
	 Lpkk4rpk9+63fcidmZEMuEvrmQtiEWLlhYQUx6BoNkANp+FY0hgEfXxtxJu735QLBV
	 ZK20yKZAbNfVZA0nEXkeuMjr+5lH/v0MtX3WrDqAaEXIhOfJS/kRx0lqdFV+vY/wpb
	 Q+pyV7qjvE7S34vmh29jyH8m7xODmSIG0WamTP2Uoma4UBiJl68LKaV1wE22o4xGYz
	 0jur0clMzDFKg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id F02AC81E19;
	Mon,  4 May 2026 14:24:59 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 87FC4204
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:58 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 6EB2C40907
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1t3eQ3e55Cqu for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 May 2026 14:24:57 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 6F7E940892
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6F7E940892
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6F7E940892
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 May 2026 14:24:57 +0000 (UTC)
X-CSE-ConnectionGUID: Ikh/gEUpSdGNYaOe5hU0Aw==
X-CSE-MsgGUID: gkilx/RaTE2EVMix/3fu0g==
X-IronPort-AV: E=McAfee;i="6800,10657,11776"; a="78691610"
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="78691610"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2026 07:24:57 -0700
X-CSE-ConnectionGUID: VBk4SrbnTsaPlsmSDBRsKQ==
X-CSE-MsgGUID: +SxbCFl4SLurZhG/Bu45iA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,215,1770624000"; d="scan'208";a="230935401"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by fmviesa006.fm.intel.com with ESMTP; 04 May 2026 07:24:55 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Mon,  4 May 2026 16:24:48 +0200
Message-ID: <20260504142451.4161845-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
References: <20260504142451.4161845-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777904698; x=1809440698;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WmUk/hzZFJcKObTRWjUXnGHFK9+dUHG3QByEE5jydN8=;
 b=csKEEbLJPpknZcFiBT9VQai8qsjX1lSdn4/Xxt1yoAE8GzO/+SqV9QKV
 YoZbPeY4tfIae67oIi+sWm78EQEKAID9kmkAYxIxP6kQHYpJSHzdGfQJ/
 scBgG5KyECPOpk0R9DK9KFvuGfIO1o4K94HGlVAFB5/7lfFTAko7YnFl6
 Ip5UWXC3O2dj72G06/UoEyoLE1oEF7GvRYLN4ttlbkGA4egwkIyqxwFZS
 k9KR+Ay3P5CPUFyeNq4IymB5f4UqyoJ38TiDErMwceQi1Y+XZwECjixQn
 7SWG3iCZi4HasvfJ3eDlGTJpVu+x5CRjdWvDKUDGrcupvasRnt531qz9p
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=csKEEbLJ
Subject: [Intel-wired-lan] [PATCH iwl-next v2 2/5] ice: remove unnecessary
 PF_SB_REM_DEV_CTL write for E82X
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
X-Rspamd-Queue-Id: 93F954BF547
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx:c];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.138:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	RCPT_COUNT_THREE(0.00)[4];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-0.999];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email,osuosl.org:dkim,smtp1.osuosl.org:helo,smtp1.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]

From: Karol Kolacinski <karol.kolacinski@intel.com>

Remove the PF_SB_REM_DEV_CTL register write from ice_ptp_init_phc_e82x().
PHY access is enabled by default on E82X devices and the driver does not
need to configure switch device access. The register write was a
remnant of an earlier SWITCH_MODE workaround for a FIFO issue and is
no longer needed.

Also update the kernel-doc comment to refer to the E82X family rather than
E822.

Signed-off-by: Karol Kolacinski <karol.kolacinski@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 13 ++-----------
 1 file changed, 2 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index 61c0a0d..7b1b402 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -2767,22 +2767,13 @@ static int ice_ptp_set_vernier_wl(struct ice_hw *hw)
 }
 
 /**
- * ice_ptp_init_phc_e82x - Perform E822 specific PHC initialization
+ * ice_ptp_init_phc_e82x - Perform E82X specific PHC initialization
  * @hw: pointer to HW struct
  *
- * Perform PHC initialization steps specific to E822 devices.
+ * Perform PHC initialization steps specific to E82X devices.
  */
 static int ice_ptp_init_phc_e82x(struct ice_hw *hw)
 {
-	u32 val;
-
-	/* Enable reading switch and PHY registers over the sideband queue */
-#define PF_SB_REM_DEV_CTL_SWITCH_READ BIT(1)
-#define PF_SB_REM_DEV_CTL_PHY0 BIT(2)
-	val = rd32(hw, PF_SB_REM_DEV_CTL);
-	val |= (PF_SB_REM_DEV_CTL_SWITCH_READ | PF_SB_REM_DEV_CTL_PHY0);
-	wr32(hw, PF_SB_REM_DEV_CTL, val);
-
 	/* Set window length for all the ports */
 	return ice_ptp_set_vernier_wl(hw);
 }
-- 
2.52.0

