Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id COgaNuEO4mkg1AAAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 12:43:45 +0200
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 53D1A41A56C
	for <lists+intel-wired-lan@lfdr.de>; Fri, 17 Apr 2026 12:43:41 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BD8F140D75;
	Fri, 17 Apr 2026 10:43:39 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ajiUf-BMqBqp; Fri, 17 Apr 2026 10:43:39 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 02FF240D72
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1776422619;
	bh=hD0iIOsekbFdjmMGxSyobIALwE1Jv4PwczLp6vbX8uA=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=BcQdNhp/Np4SUqFnaYRt6aioC3c8s2pzYg4GgN3Nz1H3hS7jGaD0F/a1zNYluXGZ2
	 GrIwgNvbk2KzWQojh8fLUrOXWezc2Lq0LW2DMUNAu2MOvHRBFcwyYymIOyBSc7dbcd
	 6ctjIG4bKES9ZIrzmhBkoRpunx80XBTCgFRAZpZA7WwAYaXPmn4mSaMXDW9/PSWdZa
	 +rO+QXg8OBZ9Q8bWglsKjaNd/TtjVUjIXUa6+imk5gpLsK17EmxhNuMCwioxZyC3hP
	 MMmaxAScz1R4AGVLQwn4UnlW9w4xBkZOndEKamzG6R2Rzan7SLrzBgz08YVcWLUi2r
	 BJBKshwx+uI7A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 02FF240D72;
	Fri, 17 Apr 2026 10:43:39 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by lists1.osuosl.org (Postfix) with ESMTP id F30A5396
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 10:43:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E4B9460DA9
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 10:43:37 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ehjFVB6wfhyf for <intel-wired-lan@lists.osuosl.org>;
 Fri, 17 Apr 2026 10:43:37 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=dima.ruinskiy@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org B5DB660DA8
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B5DB660DA8
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp3.osuosl.org (Postfix) with ESMTPS id B5DB660DA8
 for <intel-wired-lan@lists.osuosl.org>; Fri, 17 Apr 2026 10:43:36 +0000 (UTC)
X-CSE-ConnectionGUID: 5dhsaFAMSgOXsz7Z7UsmbQ==
X-CSE-MsgGUID: CQY/VmnWQcGy9LrAcmT1hg==
X-IronPort-AV: E=McAfee;i="6800,10657,11761"; a="77345070"
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="77345070"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 03:43:35 -0700
X-CSE-ConnectionGUID: JNHpL6itSEOgZlmPjevUhA==
X-CSE-MsgGUID: OL4Xq2aNSqOG6IYxIuUVlw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,184,1770624000"; d="scan'208";a="232753130"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Apr 2026 03:43:33 -0700
From: Dima Ruinskiy <dima.ruinskiy@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: dima.ruinskiy@intel.com, jacob.e.keller@intel.com,
 anthony.l.nguyen@intel.com
Date: Fri, 17 Apr 2026 13:43:30 +0300
Message-Id: <20260417104330.3031987-1-dima.ruinskiy@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1776422616; x=1807958616;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=fRuQIXqhsbOQMTb42D8DXk6rSYHKKRtcebu0kZMZOkI=;
 b=dJYv7oIQ/BdT1WEalnrmcQo0cUAp15oj/RiKCiwPzr8fz7fZoslIQ4o+
 Q7DziaJ4IXSaY93urwyEl9hHposSJ4JIyqZcAtojVK7y/Rwgmg6Nb8vbg
 zv6xt5YIQMwgWrX318kGKt8R0ahYKB9PaP1BhoLoztDv0NLvQoXpHjeKZ
 IvyiMctvjKzU9vywodpNxmccPi1E8ChLMAih8LAQnE09BndCfCvwAmXEV
 4DIAZCS8nL8fJTeOG/KMVYO8urtXXJ8OOdKWn8uxR4kNuD/dg5lgT81uQ
 3s7AswQxiDnduH/5/uKhnwioIwInolbWZM36d/vKWAepi/NDocaZasA/x
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=dJYv7oIQ
Subject: [Intel-wired-lan] [PATCH iwl-net v3] e1000e: Reconfigure PLL clock
 gate timeout and re-enable K1 on Meteor Lake
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
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	HAS_LIST_UNSUB(-0.01)[];
	RCPT_COUNT_THREE(0.00)[4];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	FORGED_SENDER_MAILLIST(0.00)[];
	TO_DN_NONE(0.00)[];
	FROM_NEQ_ENVFROM(0.00)[dima.ruinskiy@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	NEURAL_HAM(-0.00)[-1.000];
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,osuosl.org:url,intel.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 53D1A41A56C
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
disabled K1 by default on Meteor Lake and newer systems due to packet
loss observed on various platforms. However, disabling K1 caused an
increase in power consumption.

To mitigate this, reconfigure the PLL clock gate value so that K1 can
remain enabled without incurring the additional power consumption.
Re-enable K1 by default, but keep the private flag to support disabling
it via ethtool. Additionally, introduce a DMI quirk table, so that K1 may
be disabled by default on known problematic systems. Currently, this
includes the Dell Pro 16 Plus, where the issue has been reported to persist
despite the changes to the PLL lock timeout.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20250623/048860.html
Link: https://lists.osuosl.org/pipermail/intel-wired-lan/Week-of-Mon-20260330/054059.html
Signed-off-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Co-developed-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
---
v3: add DMI quirk
v2: add comment for the PLL timeout value and revisit the commit message
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c |  3 +++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 15 ++++++++++++++-
 2 files changed, 17 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index dea208db1be5..aa90e0ce8aca 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1594,6 +1594,9 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
 			phy_reg &= ~I217_PLL_CLOCK_GATE_MASK;
 			if (speed == SPEED_100 || speed == SPEED_10)
 				phy_reg |= 0x3E8;
+			else if (hw->mac.type == e1000_pch_mtp ||
+				 hw->mac.type == e1000_pch_ptp)
+				phy_reg |= 0x1D5;
 			else
 				phy_reg |= 0xFA;
 			e1e_wphy_locked(hw, I217_PLL_CLOCK_GATE_REG, phy_reg);
diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 4d553c6edd98..a7605e453382 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -25,6 +25,7 @@
 #include <linux/pm_runtime.h>
 #include <linux/prefetch.h>
 #include <linux/suspend.h>
+#include <linux/dmi.h>
 
 #include "e1000.h"
 #define CREATE_TRACE_POINTS
@@ -58,6 +59,17 @@ static const struct e1000_info *e1000_info_tbl[] = {
 	[board_pch_ptp]		= &e1000_pch_ptp_info,
 };
 
+static const struct dmi_system_id disable_k1_list[] = {
+	{
+		.ident = "Dell Pro 16 Plus PB16250",
+		.matches = {
+			DMI_MATCH(DMI_SYS_VENDOR, "Dell Inc."),
+			DMI_MATCH(DMI_PRODUCT_NAME, "Dell Pro 16 Plus PB16250"),
+		},
+	},
+	{}
+};
+
 struct e1000_reg_info {
 	u32 ofs;
 	char *name;
@@ -7748,7 +7760,8 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* init PTP hardware clock */
 	e1000e_ptp_init(adapter);
 
-	if (hw->mac.type >= e1000_pch_mtp)
+	/* disable K1 by default on known problematic systems */
+	if (hw->mac.type >= e1000_pch_mtp && dmi_check_system(disable_k1_list))
 		adapter->flags2 |= FLAG2_DISABLE_K1;
 
 	/* reset the hardware with the new settings */
-- 
2.34.1

