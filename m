Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id VxSVLNgwRmrVLQsAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:20 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 1AF9F6F5519
	for <lists+intel-wired-lan@lfdr.de>; Thu, 02 Jul 2026 11:35:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=XjLVKgRX;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 140.211.166.137 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id DE7314134C;
	Thu,  2 Jul 2026 09:35:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id R7sBIASoVQXZ; Thu,  2 Jul 2026 09:35:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 68DC8413C4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1782984917;
	bh=FwlUiOIDz5K/1rTXFu+35Riwq8vikxmlIOXSpl1geCw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=XjLVKgRX+gk8sXiNDJO3xnI0KjSWFwN7NHzElBv9siU80NMVUzsyGTTMt17bJRBxC
	 xhPvHyX8+j5WDERwnwOPY0KQkph+XkReM1QSdCTt+AfT45qkwJ/7GT6+RZqktl26fX
	 X3WG0UpLwre6x+7rzVWmKjJQIIE7Gc/G+UGbIuKlbg7u6p2ccehMeUND/h+FfkStun
	 C/fO/Y/Ut7z5bEYq87phq0kYWIY8ZiH2cDhjYmDfN7f3K4PwjK4t7b+EzC1Fl6lSSC
	 xTZHvZKWVFK4WrShpgL2VqzzkUo6ugq3AsT1U5EWFY5ozHa83pTkKwd8xwz7GhPOdL
	 htMK2n3iGOK1A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 68DC8413C4;
	Thu,  2 Jul 2026 09:35:17 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 709FA127
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:15 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 56DB081E6B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:15 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id TYSMy9wSn_FV for <intel-wired-lan@lists.osuosl.org>;
 Thu,  2 Jul 2026 09:35:14 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.14;
 helo=mgamail.intel.com; envelope-from=jedrzej.jagielski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 5383881E37
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5383881E37
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.14])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 5383881E37
 for <intel-wired-lan@lists.osuosl.org>; Thu,  2 Jul 2026 09:35:14 +0000 (UTC)
X-CSE-ConnectionGUID: DWdbCbH7SdymVsz3kZSynA==
X-CSE-MsgGUID: 0wQOTB8XSA+mnPAci35bPw==
X-IronPort-AV: E=McAfee;i="6800,10657,11834"; a="87649805"
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="87649805"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jul 2026 02:35:14 -0700
X-CSE-ConnectionGUID: zQWOpmhmSGuj2zZvvjH0uA==
X-CSE-MsgGUID: pE8vijKhRQy4JwKpFSNtwQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.25,143,1779174000"; d="scan'208";a="253476409"
Received: from os-delivery.igk.intel.com ([10.102.18.218])
 by orviesa009.jf.intel.com with ESMTP; 02 Jul 2026 02:35:13 -0700
From: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: anthony.l.nguyen@intel.com, netdev@vger.kernel.org,
 Jedrzej Jagielski <jedrzej.jagielski@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Date: Thu,  2 Jul 2026 11:15:49 +0200
Message-Id: <20260702091553.57112-3-jedrzej.jagielski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
References: <20260702091553.57112-1-jedrzej.jagielski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1782984914; x=1814520914;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=P9Br3KZ4AxYc5qdHysl9fMf0MwuoW9MBAdipkCi8Oes=;
 b=WejxZ+1OBOlHk/EZVvHSpfcTjKBWaiyi9ZAvUMxHQBf0ZuDrE5+GbwOa
 +RHWUXgUK7C1xwwfOoGSBKAPe6FcEs0VxBiPZtqCDZS+HqIWRjOtWIXDM
 0NpQ44LGHGcMA1hgKennFPdr6QpC5zqE/bd2MlAz/HVtbt180UfNWRy0i
 VrLS39iMfz5yItfkCcLLalAR1RgIxlTlRGKfoPxkn03uA66yb6avXejjI
 C0oXG79PN3jdQKm2JmIUFkbGCKXFJ2rpV2LmuWO7ZobDGxCjnfqwloJXs
 Q71SBBCAJCK5eG0CPQ178qUpkI365zFy6OP3hWjIARBa5IZ36WcW50nR5
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=WejxZ+1O
Subject: [Intel-wired-lan] [PATCH iwl-next v1 2/6] ixgbe: E610: prevent from
 disabling LSE
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
X-Rspamd-Action: no action
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_SPF_ALLOW(-0.20)[+mx:c];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	MIME_TRACE(0.00)[0:+];
	RCVD_TLS_LAST(0.00)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	ARC_NA(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,intel.com:from_mime,smtp4.osuosl.org:rdns,smtp4.osuosl.org:helo];
	FROM_NEQ_ENVFROM(0.00)[jedrzej.jagielski@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	ALIAS_RESOLVED(0.00)[];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: 1AF9F6F5519

LSE is not allowed to be switched off while the ixgbe driver is running.
Some of the ixgbe_aci_get_link_info() callers called it with @ena_lse
equal to false what was causing issues.

There was a known issue when FW after being called by Redfish MGMT request
to disable an interface wasn't able to notify the driver about link status
change due to disabled LSE reception on the driver side. As a result driver
exposed incorrect link status.

There's no any requirement forcing to disable LSE either during configuring
FC, either during setting PHY params.

Force calling ixgbe_aci_get_link_info() with @ena_lse == true.

Fixes: 4600cdf9f5ac ("ixgbe: Enable link management in E610 device")
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
---
 drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
index d451da68fd6d..54cc0f116e88 100644
--- a/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
+++ b/drivers/net/ethernet/intel/ixgbe/ixgbe_e610.c
@@ -1913,7 +1913,7 @@ void ixgbe_fc_autoneg_e610(struct ixgbe_hw *hw)
 	/* Get current link err.
 	 * Current FC mode will be stored in the hw context.
 	 */
-	err = ixgbe_aci_get_link_info(hw, false, NULL);
+	err = ixgbe_aci_get_link_info(hw, true, NULL);
 	if (err)
 		goto no_autoneg;
 
@@ -2219,7 +2219,7 @@ int ixgbe_setup_phy_link_e610(struct ixgbe_hw *hw)
 	u64 phy_type_low = 0, phy_type_high = 0;
 	int err;
 
-	err = ixgbe_aci_get_link_info(hw, false, NULL);
+	err = ixgbe_aci_get_link_info(hw, true, NULL);
 	if (err)
 		return err;
 
-- 
2.31.1

