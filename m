Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id KKw4IMoAwWlUPgQAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 09:58:50 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 9BB372EE8EE
	for <lists+intel-wired-lan@lfdr.de>; Mon, 23 Mar 2026 09:58:49 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2122E40CC6;
	Mon, 23 Mar 2026 08:58:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id md-0GP-Au-mt; Mon, 23 Mar 2026 08:58:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9763B40CD7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1774256327;
	bh=vGWjCjT2/IyeDAXpJb4fdI82mX3Di2xsLwGZO2xpYi8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=QePRq0gViwOcI/YZLDjpKs7iX5ROQtvPvrQKDEYVe8KMdiCaWeJDiV+L/WfB25XQt
	 d+3USPdC/Ob9n4XZgqN1eg8CH+74is/+vGTFNjcFDvEwRVzhwVzLQUyhORbJ1jXoR5
	 C3E2pXMYqo+5a+i3AKRyxdEiuC8vOJNOIZdPg8folX0NmWKRJnOk3aPZxu0phALrbV
	 Iq6KxZT+7t6pqb5UGn3Tj23M65DjZy4u5ei7bzDs+N8Os1judk7kQH531AbQkKMqQy
	 5nRzY31VKlwukA3S8sjPAy9Re+DJNMQZmTQ25tqtCVMBfb026mwAVm4JBn2FoMByET
	 AUKGX0FoWhNnA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 9763B40CD7;
	Mon, 23 Mar 2026 08:58:47 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by lists1.osuosl.org (Postfix) with ESMTP id 7D098F4
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 08:58:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5976A8229A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 08:58:45 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id x5xhprrsPTl4 for <intel-wired-lan@lists.osuosl.org>;
 Mon, 23 Mar 2026 08:58:44 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=aleksandr.loktionov@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 96E7481EA7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 96E7481EA7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 96E7481EA7
 for <intel-wired-lan@lists.osuosl.org>; Mon, 23 Mar 2026 08:58:43 +0000 (UTC)
X-CSE-ConnectionGUID: nLmE1i3XSXWagHWBtdiutQ==
X-CSE-MsgGUID: 9EZDDWYhSfuCwWFtk96MIw==
X-IronPort-AV: E=McAfee;i="6800,10657,11737"; a="75155296"
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; d="scan'208";a="75155296"
Received: from orviesa004.jf.intel.com ([10.64.159.144])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 23 Mar 2026 01:58:43 -0700
X-CSE-ConnectionGUID: l4NqCTdSTKyHbpLxX7OrBA==
X-CSE-MsgGUID: eLXjps3STVqluZfiBAM6aA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,136,1770624000"; d="scan'208";a="228434191"
Received: from amlin-019-225.igk.intel.com ([10.102.19.225])
 by orviesa004.jf.intel.com with ESMTP; 23 Mar 2026 01:58:42 -0700
From: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
To: intel-wired-lan@lists.osuosl.org, anthony.l.nguyen@intel.com,
 aleksandr.loktionov@intel.com
Cc: netdev@vger.kernel.org,
	Paul Greenwalt <paul.greenwalt@intel.com>
Date: Mon, 23 Mar 2026 09:58:40 +0100
Message-ID: <20260323085840.3272274-1-aleksandr.loktionov@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1774256325; x=1805792325;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=jHgelXS5yU++pr9hsze+xt6bI8CoqB6u6b129+DDlTw=;
 b=YAvXQv7mx3ZA9XPiXjpYxbo13Jnvb5wmahxCfI02Nr6BaGaZ9n57PcsB
 WziSrEDxUOdOZ6W5VOyX3gCWTe3ZcU7Qheo6C5LnS2x7HWASOhxxcIEoY
 1sNRcasxYspR84VC3Oz9DToq056zflsatZWNZpsxrEZj1G9LRmtowBwyi
 MADgb9PF6R0ut0Jp4bWemmzdWsQkbo2k0SuB1dlvpPOIPjYk7QLv6o7EJ
 5tL3vmqehTQ7gr9MUizGs+BL+fojr/R75bJwZbuVcAr5ZuHF/rugr4REh
 YfShYPl1hpZzlvgCIakkOsRIKW819niMG8hVTl+HAZx4Gc2B0sOHgs1MT
 Q==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=YAvXQv7m
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: update
 ice_link_mode_str_high() with 200G
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
	R_SPF_ALLOW(-0.20)[+mx];
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid];
	FROM_NEQ_ENVFROM(0.00)[aleksandr.loktionov@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 9BB372EE8EE
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

From: Paul Greenwalt <paul.greenwalt@intel.com>

Update ice_link_mode_str_high() with strings for 200G PHY types.
Without these entries the ice_dump_phy_type() debug helper prints
nothing for phy_type_high bits [5..15], covering all 200G and
400GBASE-FR8 PHY types supported by E825C hardware.

Also add the corresponding ICE_PHY_TYPE_HIGH_* bit definitions for
indices 13-15 (200G_AUI8_AOC_ACC, 200G_AUI8, 400GBASE_FR8) that were
missing from ice_adminq_cmd.h, and update ICE_PHY_TYPE_HIGH_MAX_INDEX
from 12 to 15.  Without these definitions ice_get_phy_type_high() would
stop iterating at index 12, leaving the new PHY types invisible to all
code that bounds-checks against MAX_INDEX.

Fixes: none (new hardware support)
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
---
v1 -> v2 update ICE_PHY_TYPE_HIGH_MAX_INDEX 
---
 drivers/net/ethernet/intel/ice/ice_adminq_cmd.h |  5 ++++-
 drivers/net/ethernet/intel/ice/ice_common.c     | 11 +++++++++++
 2 files changed, 15 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
index 859e9c6..f64d2ef 100644
--- a/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
+++ b/drivers/net/ethernet/intel/ice/ice_adminq_cmd.h
@@ -1044,7 +1044,10 @@ struct ice_aqc_get_phy_caps {
 #define ICE_PHY_TYPE_HIGH_200G_KR4_PAM4		BIT_ULL(10)
 #define ICE_PHY_TYPE_HIGH_200G_AUI4_AOC_ACC	BIT_ULL(11)
 #define ICE_PHY_TYPE_HIGH_200G_AUI4		BIT_ULL(12)
-#define ICE_PHY_TYPE_HIGH_MAX_INDEX		12
+#define ICE_PHY_TYPE_HIGH_200G_AUI8_AOC_ACC	BIT_ULL(13)
+#define ICE_PHY_TYPE_HIGH_200G_AUI8		BIT_ULL(14)
+#define ICE_PHY_TYPE_HIGH_400GBASE_FR8		BIT_ULL(15)
+#define ICE_PHY_TYPE_HIGH_MAX_INDEX		15
 
 struct ice_aqc_get_phy_caps_data {
 	__le64 phy_type_low; /* Use values from ICE_PHY_TYPE_LOW_* */
diff --git a/drivers/net/ethernet/intel/ice/ice_common.c b/drivers/net/ethernet/intel/ice/ice_common.c
index 2cebe4e..c6727c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_common.c
+++ b/drivers/net/ethernet/intel/ice/ice_common.c
@@ -84,6 +84,17 @@ static const char * const ice_link_mode_str_high[] = {
 	[2] = "100G_CAUI2",
 	[3] = "100G_AUI2_AOC_ACC",
 	[4] = "100G_AUI2",
+	[5] = "200G_CR4_PAM4",
+	[6] = "200G_SR4",
+	[7] = "200G_FR4",
+	[8] = "200G_LR4",
+	[9] = "200G_DR4",
+	[10] = "200G_KR4_PAM4",
+	[11] = "200G_AUI4_AOC_ACC",
+	[12] = "200G_AUI4",
+	[13] = "200G_AUI8_AOC_ACC",
+	[14] = "200G_AUI8",
+	[15] = "400GBASE_FR8",
 };
 
 /**
-- 
2.52.0

