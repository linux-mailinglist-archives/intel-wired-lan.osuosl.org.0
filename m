Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id aKKtH2pK82ngzAEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:26:18 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4DB504A2BDF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 30 Apr 2026 14:26:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1DD0F6179B;
	Thu, 30 Apr 2026 12:26:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xrI-1o1pZqoN; Thu, 30 Apr 2026 12:26:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 965C061C1A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1777551970;
	bh=TKDljZ5Zu2iCNLZber9hYnJTEZa7j4BMIymWcM6yW9Y=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7UQ4hLl8FQJ7PsNiD9zeGG8K20UixYbdOKg3dnM0MOeOu14EsNc5fkVL3uVvlGiAu
	 lNBpwaybyGEEnF+Kidmc3NNTNw1OsBK24qaeQp8Wikadr9XQ2FjfYLNfPN76YyjsWu
	 aYIG8zyxFWvvzqsLQcIxR0lxqX2BF9HpOFXKQg5dPRKNQBSLikYphpr3z5LaF4IVtB
	 iZjjNOsdZse5wiULVZf+t/NgAiJIDIunStOpMsjvWV8GsXgTx4+PoMz93T2IjCKP1U
	 VlrfBQXqCbKP6d9/URa+cxNT3cs1GVFtyxsJTJCMQIt9YavWej1r6YLqYPYS+qCrtN
	 vWgkrr+lw2aaw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 965C061C1A;
	Thu, 30 Apr 2026 12:26:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id D8D5B18F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id BF3AC4073C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:08 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id mlwUHGMoiqGf for <intel-wired-lan@lists.osuosl.org>;
 Thu, 30 Apr 2026 12:26:07 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.16;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org C957E403D6
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C957E403D6
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.16])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C957E403D6
 for <intel-wired-lan@lists.osuosl.org>; Thu, 30 Apr 2026 12:26:07 +0000 (UTC)
X-CSE-ConnectionGUID: 2CvoTBj2SK20e8XQhm+YdQ==
X-CSE-MsgGUID: uFBgeATMT8CZxxjC/maqpg==
X-IronPort-AV: E=McAfee;i="6800,10657,11771"; a="78689186"
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="78689186"
Received: from orviesa006.jf.intel.com ([10.64.159.146])
 by orvoesa108.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 30 Apr 2026 05:26:07 -0700
X-CSE-ConnectionGUID: MAPtY//6SAC9yo/g4nHqNA==
X-CSE-MsgGUID: KMYtALv/QB+btlJa445l+Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,208,1770624000"; d="scan'208";a="233538429"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa006.jf.intel.com with ESMTP; 30 Apr 2026 05:26:06 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org
Date: Thu, 30 Apr 2026 14:25:59 +0200
Message-ID: <20260430122602.126722-3-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
In-Reply-To: <20260430122602.126722-1-aleksandr.loktionov@intel.com>
References: <20260430122602.126722-1-aleksandr.loktionov@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1777551968; x=1809087968;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=WmUk/hzZFJcKObTRWjUXnGHFK9+dUHG3QByEE5jydN8=;
 b=PCe9/GJJpZWaa9+ShBlk3xpBCGXvj73i6/pnu3bdNbawmxyaGU+XK+fz
 BzTHT2RvaJjFM6iplWaUalaVJmy3iJdeOwM41QiWSuZMCXp7EqimPJiGI
 xcfp9IxapYV/ft7Py20ivHgYxwKJz4mLyXAq3ZSQozRJVEzSbCdrh7jpd
 qaEaTMwpHJ7jWc3o/qHN0cUXjPXILaW2uMx31ZX49P5n1JasyHWtsSWZn
 KOVZrY/a988Lt4Z+Qj0SCaLz80HpSkd1ZYr52fFKw3rdkbWv/MpjQENTY
 rsSEnODJdv+99P+AxKPz2dItphaR+BeLIEqnG3ly6zw9dqClDQFHRUsqU
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=PCe9/GJJ
Subject: [Intel-wired-lan] [PATCH 2/5] ice: remove unnecessary
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
X-Rspamd-Queue-Id: 4DB504A2BDF
X-Rspamd-Action: no action
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
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email];
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

