Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id glxgGCnydWnMJwEAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jan 2026 11:36:25 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 518E1801D5
	for <lists+intel-wired-lan@lfdr.de>; Sun, 25 Jan 2026 11:36:24 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 64841606C1;
	Sun, 25 Jan 2026 10:36:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id k7CERYBsqKCt; Sun, 25 Jan 2026 10:36:21 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CF75460AB4
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1769337381;
	bh=DNzwZIEh/U6y/ceRCg8wymeKrzidmssmjNUOLRXA5UQ=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=vUa0xdhcB9Jdm158RXDwUkCGIOLR5lRJZVrEHnCXnkD/Ras/TZ7DvwkJ9XT8hR6Wo
	 arb8h2B578+E0vfBt/RRRSylDPknEVGtI8gQo8deIIr0o3UrG/GmWEwifYZ7K0+BPs
	 UO9F8HvTCJlAnEB8/+pO+78G6R4gh2wcL85Ap2N3abAX5blv2IggZpDrYemZw0sHFB
	 OG1kkOx2dT33TI0HeZTRl5ArECCGQknaSqgJss/7a3qhLpkzW0bXfX6xGZYhvO6xa/
	 wphbV/+vWER6mn1wSBfndEr9zzvCiPOm6MgrZAxbXpt4H4W/sMLoLa1/0DSRoHS5Ce
	 KgASMiUtST1Cg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id CF75460AB4;
	Sun, 25 Jan 2026 10:36:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 0FD901CE
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 10:36:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id E872182249
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 10:36:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id yHtGDWQdT453 for <intel-wired-lan@lists.osuosl.org>;
 Sun, 25 Jan 2026 10:36:20 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 0650D82223
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 0650D82223
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 0650D82223
 for <intel-wired-lan@lists.osuosl.org>; Sun, 25 Jan 2026 10:36:19 +0000 (UTC)
X-CSE-ConnectionGUID: JRpyHoF3Tni4OWctmRc5hg==
X-CSE-MsgGUID: QU3mXMrjS8ON2yEtr7anMA==
X-IronPort-AV: E=McAfee;i="6800,10657,11681"; a="70251815"
X-IronPort-AV: E=Sophos;i="6.21,252,1763452800"; d="scan'208";a="70251815"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2026 02:36:19 -0800
X-CSE-ConnectionGUID: XE3i7rDQSJerw39bD/VeWg==
X-CSE-MsgGUID: h/G8zW4LTpyDaJk6W2hA1g==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,252,1763452800"; d="scan'208";a="212419852"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 25 Jan 2026 02:36:17 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: marmarek@invisiblethingslab.com, timo.teras@iki.fi,
 jeremie.wenger@edu.ge.ch, Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Sun, 25 Jan 2026 12:36:13 +0200
Message-Id: <20260125103613.1843742-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1769337380; x=1800873380;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=Z+++sp0aNN7uXOeLtag36yrcv03doWwLT7dMuLRIfSA=;
 b=L8Xq58rYN+lF9A7c4/LO6coC1uKtHX9SUGTQ0LOrVzPsSVW3bwUA/xej
 q+h7VLGORvtdIOL5F3b5VsVKxo0GMTy5XlrSIB3nuv3+3uJKktQO3tf04
 VydX1Da4O8gO/sWI2n9FQRDv0/A64WGkyK0TIznSi2PT8CuyUbimAw20E
 sleI1Ddm+qGW1haYBTYywwzH+iyv6OR4XBUiL3EIySHsIH3jzBkuv/k6V
 jKWLwtF8WupCW8TmjRRVT2o1K6XuokQuYEb0PnFgLqVtw2uRyQsjAHDfe
 uP2FU7yIQ0SmS8OfM81oF/bG20+gle4tztLRWkAyzwl/mKmyGClk6bWmH
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=L8Xq58rY
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: reconfigure PLL
 clock gate value and re-enable K1 on Meteor Lake
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
X-Spamd-Result: default: False [0.89 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	MIME_GOOD(-0.10)[text/plain];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_SENDER_MAILLIST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	MIME_TRACE(0.00)[0:+];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCPT_COUNT_FIVE(0.00)[5];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:mid,intel.com:email];
	FROM_NEQ_ENVFROM(0.00)[vitaly.lifshits@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-1.000];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: 518E1801D5
X-Rspamd-Action: no action

Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
disabled K1 by default on Meteor Lake and newer systems due to packet
loss observed on various platforms. However, disabling K1 caused an
increase in power consumption.

To mitigate this, reconfigure the PLL clock gate value so that K1 can
remain enabled without incurring the additional power consumption.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 3 +++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 3 ---
 2 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 13841daba399..4b42b28354d0 100644
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
index 82d1d5fe51d5..8f0eb822610b 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -7755,9 +7755,6 @@ static int e1000_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* init PTP hardware clock */
 	e1000e_ptp_init(adapter);
 
-	if (hw->mac.type >= e1000_pch_mtp)
-		adapter->flags2 |= FLAG2_DISABLE_K1;
-
 	/* reset the hardware with the new settings */
 	e1000e_reset(adapter);
 
-- 
2.34.1

