Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by mail.lfdr.de with LMTP
	id X5LtLYG7ImqHcwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 14:05:21 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id BC7A2647EE3
	for <lists+intel-wired-lan@lfdr.de>; Fri, 05 Jun 2026 14:05:20 +0200 (CEST)
Authentication-Results: mail.lfdr.de;
	dkim=pass header.d=osuosl.org header.s=default header.b=6eQjp8TR;
	spf=pass (mail.lfdr.de: domain of intel-wired-lan-bounces@osuosl.org designates 2605:bc80:3010::136 as permitted sender) smtp.mailfrom=intel-wired-lan-bounces@osuosl.org;
	dmarc=fail reason="SPF not aligned (relaxed), DKIM not aligned (relaxed)" header.from=intel.com (policy=none)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6D4260A3B;
	Fri,  5 Jun 2026 12:05:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MnFqQo-AouKz; Fri,  5 Jun 2026 12:05:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B6E5D60A3E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1780661115;
	bh=yWiotVEMvQoVQsi2t0rFbbHTAoaOzQFGfu91Qf79cuk=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=6eQjp8TRts+G7STevLuV2qqYRO/y/T5dSev/1To75V3c3tv1IPyhlmq+HH9q5cVH5
	 KrY+WJdv0UQZjjttKuwUiv0qVQT3am4YcV30qfZi+Uu2gnnd3d4TKeamdoq4nG5v/9
	 uT9keYQKjKTXKJ2OyYBSJhwa0ht7l+JMfKAL6Ln/KM3GO2Zp0zdQQ9WLz8nmTSdbRr
	 PMRBXdd5tOQOQwQxKwlGk5AHJz8rW5TUx4c3IbcgEYSi4DIfNYmmb2xkZmX7wTKxzl
	 bz5UD59jefk/pxrZLuifoEIuxJQ9zw9ctF/2+MU2hf8YSQqrrsHE3k96awJPrFvUBM
	 LJWzLGjDq+Rog==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B6E5D60A3E;
	Fri,  5 Jun 2026 12:05:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 07A2926A
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 12:05:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id DA15040E7F
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 12:05:13 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id DZ4SgjN9Mulu for <intel-wired-lan@lists.osuosl.org>;
 Fri,  5 Jun 2026 12:05:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.9;
 helo=mgamail.intel.com; envelope-from=przemyslaw.korba@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 0D52C40E7E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D52C40E7E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.9])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 0D52C40E7E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  5 Jun 2026 12:05:12 +0000 (UTC)
X-CSE-ConnectionGUID: VIE9dDQSTeO13SIiLMzIXg==
X-CSE-MsgGUID: /qp5EhQzSI2zrfpRG5xTTw==
X-IronPort-AV: E=McAfee;i="6800,10657,11807"; a="92178248"
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="92178248"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Jun 2026 05:05:12 -0700
X-CSE-ConnectionGUID: HJyVO94lTFOQoQX/Ra6/bw==
X-CSE-MsgGUID: XL0Nxp4UQBKcuTttpnfLMw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.24,188,1774335600"; d="scan'208";a="268759073"
Received: from pae-d-dell-r7525-263.igk.intel.com ([172.28.191.240])
 by fmviesa001.fm.intel.com with ESMTP; 05 Jun 2026 05:05:11 -0700
From: Przemyslaw Korba <przemyslaw.korba@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, anthony.l.nguyen@intel.com,
 przemyslaw.kitszel@intel.com, konstantin.ilichev@intel.com,
 aleksander.lobakin@intel.com, Przemyslaw Korba <przemyslaw.korba@intel.com>
Date: Fri,  5 Jun 2026 14:06:26 +0200
Message-ID: <20260605120734.1462847-1-przemyslaw.korba@intel.com>
X-Mailer: git-send-email 2.43.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1780661113; x=1812197113;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=PspPcxZj4eK+HGP+IlvV4ikRRIBQqslU9MXOR2NDmWk=;
 b=K/Uz1CEWn3ZcCfZqwErFgpCoKm64zDTnRBLN8hHfa9o4UlWlhHO9Avy6
 kHi7CvhNqQUufQTfS6WaKbsrIDUhR8eZkJvl0xGOf04EV4HGqQftg6gu/
 aTGXyM7bIk2EZfUWFLsbEVEiyr7gYylueJ02s2AXTOI1YQb8CrXDjrIhD
 bMymwPJ1f9W9KnFFFzbDutF4WQhfE8Ne5omgBR+qYugOGa0d9KU07qzG2
 Gbxgv8uWlVEWoQU1E3jmmfvdqxcCKxBtqZeXAg4RPv1p0zSOsujC70LI1
 9yETYwpCf3SrbkQ3Lgr7e7Qoy6Iyn+Bv20wQN269A9lLLaEO8T6OlybBG
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=K/Uz1CEW
Subject: [Intel-wired-lan] [PATCH iwl-net v3] ice: fall back to SBQ when LL
 PHY timer interface times out
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+ip6:2605:bc80:3010::/48];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCVD_TLS_LAST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[przemyslaw.korba@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	RCPT_COUNT_SEVEN(0.00)[7];
	ALIAS_RESOLVED(0.00)[];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Server: lfdr
X-Rspamd-Queue-Id: BC7A2647EE3

The low-latency (LL) PHY timer interface relies on a tight, atomic poll
of the PF_SB_ATQBAL register with a 2ms timeout. After an NVM update /
EMPR, FW may need significantly longer than 2ms to start responding to
ATQBAL commands. The first PHY adjust or incval write issued by
ice_ptp_rebuild_owner() fails with -ETIMEDOUT.

Fix this by falling back to the existing SBQ-based PHY register write
path when LL times out. This makes sure PTP is initialized when FW takes
longer than expected to come back online.

Steps to reproduce:
./nvmupdate64e -if devlink -f
Update E810 card with nvmupdate64e, and observe dmesg errors:
  Failed to write PHC increment value, status -110
  PTP reset failed, error: -110 (-ETIMEDOUT)

Fixes: ef9a64c07294 ("ice: implement low latency PHY timer updates")
Signed-off-by: Przemyslaw Korba <przemyslaw.korba@intel.com>
---
v3:
* actually add TIMEDOUT check in ice_prep_phy_adj_e810 (did do it)
v2:
* add TIMEDOUT check in ice_prep_phy_adj_e810 (did not do it)
https://lore.kernel.org/intel-wired-lan/20260603114904.1297713-1-przemyslaw.korba@intel.com/
v1:
https://lore.kernel.org/intel-wired-lan/20260511095830.1095984-1-przemyslaw.korba@intel.com/
---
 drivers/net/ethernet/intel/ice/ice_ptp_hw.c | 38 +++++++++++----------
 1 file changed, 20 insertions(+), 18 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
index d47d5baf3281..e77c7f2b5575 100644
--- a/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
+++ b/drivers/net/ethernet/intel/ice/ice_ptp_hw.c
@@ -4789,15 +4789,12 @@ static int ice_ptp_prep_phy_adj_ll_e810(struct ice_hw *hw, s32 adj)
 				       !FIELD_GET(REG_LL_PROXY_H_EXEC, val),
 				       10, REG_LL_PROXY_H_TIMEOUT_US, false, hw,
 				       REG_LL_PROXY_H);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer adjustment using low latency interface\n");
-		spin_unlock_irq(&params->atqbal_wq.lock);
-		return err;
-	}
-
 	spin_unlock_irq(&params->atqbal_wq.lock);
 
-	return 0;
+	if (err)
+		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer adjustment using low latency interface\n");
+
+	return err;
 }
 
 /**
@@ -4818,8 +4815,12 @@ static int ice_ptp_prep_phy_adj_e810(struct ice_hw *hw, s32 adj)
 	u8 tmr_idx;
 	int err;
 
-	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update)
-		return ice_ptp_prep_phy_adj_ll_e810(hw, adj);
+	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update) {
+		err = ice_ptp_prep_phy_adj_ll_e810(hw, adj);
+		if (err != -ETIMEDOUT)
+			return err;
+		ice_debug(hw, ICE_DBG_PTP, "LL adj timed out, falling back to SBQ\n");
+	}
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 
@@ -4882,15 +4883,12 @@ static int ice_ptp_prep_phy_incval_ll_e810(struct ice_hw *hw, u64 incval)
 				       !FIELD_GET(REG_LL_PROXY_H_EXEC, val),
 				       10, REG_LL_PROXY_H_TIMEOUT_US, false, hw,
 				       REG_LL_PROXY_H);
-	if (err) {
-		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer increment using low latency interface\n");
-		spin_unlock_irq(&params->atqbal_wq.lock);
-		return err;
-	}
-
 	spin_unlock_irq(&params->atqbal_wq.lock);
 
-	return 0;
+	if (err)
+		ice_debug(hw, ICE_DBG_PTP, "Failed to prepare PHY timer increment using low latency interface\n");
+
+	return err;
 }
 
 /**
@@ -4908,8 +4906,12 @@ static int ice_ptp_prep_phy_incval_e810(struct ice_hw *hw, u64 incval)
 	u8 tmr_idx;
 	int err;
 
-	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update)
-		return ice_ptp_prep_phy_incval_ll_e810(hw, incval);
+	if (hw->dev_caps.ts_dev_info.ll_phy_tmr_update) {
+		err = ice_ptp_prep_phy_incval_ll_e810(hw, incval);
+		if (err != -ETIMEDOUT)
+			return err;
+		ice_debug(hw, ICE_DBG_PTP, "LL incval timed out, falling back to SBQ\n");
+	}
 
 	tmr_idx = hw->func_caps.ts_func_info.tmr_index_owned;
 	low = lower_32_bits(incval);

base-commit: 2d72c95ac8e2d1abccf671d95b94532a8b2abb24
-- 
2.43.0

