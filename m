Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id cGqaJmV9gGnE8wIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 11:33:09 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id F166CCB080
	for <lists+intel-wired-lan@lfdr.de>; Mon, 02 Feb 2026 11:33:08 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A5709408BE;
	Mon,  2 Feb 2026 10:33:07 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 07cK3hm8r1Kd; Mon,  2 Feb 2026 10:33:07 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org DBBB64094A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1770028386;
	bh=+XjqaE/lb40MLmrZutH03eU0DaE/KQXUToSoQGCJ6a8=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ew/eagq3x7HDK4cRS3Y/jv/Hb3gez/hMj671NJXx0wqiQG60WFffDNEWkUSFQJQ2a
	 P9Z29RGQ2zEKzcdi5xKyUFKle7/of7CZe+ieZujBCRwpja1KBdbiTb7m+1UHB4Sgo0
	 QbUIayWLpDrnCFtKlhp5qqlrOleAUBkVWmtjDFGPaYuxMCYdnb1ZtuxUwXi/jwxN0t
	 nzR3uFnka8HKuvJkGmShuo1ITaF5jo3jFLSeQWGoiQNiNGmEueTVwxhli6wf2pSust
	 QqWXQ82QD/H5sGkKLqbDIau/amGWAOs7mCjix/L8x4FtOinC3gi6ES6V1VXcvSRRd6
	 RQJg2c+DD6DoQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id DBBB64094A;
	Mon,  2 Feb 2026 10:33:06 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id 3D966149
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:33:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 2C77283299
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:33:05 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JBkmUgYFCE-R for <intel-wired-lan@lists.osuosl.org>;
 Mon,  2 Feb 2026 10:33:04 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 45BA283276
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 45BA283276
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 45BA283276
 for <intel-wired-lan@lists.osuosl.org>; Mon,  2 Feb 2026 10:33:04 +0000 (UTC)
X-CSE-ConnectionGUID: gfYsm0JaSMyQoNYYMpS3Vg==
X-CSE-MsgGUID: //lyxmpCSjqjisMDN6DJkw==
X-IronPort-AV: E=McAfee;i="6800,10657,11689"; a="82291651"
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="82291651"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:33:04 -0800
X-CSE-ConnectionGUID: hovmfJNiQ96hPol8ooUhUg==
X-CSE-MsgGUID: sNxo52qbRmiribwhaeAfQQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,268,1763452800"; d="scan'208";a="214310336"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.70])
 by fmviesa004.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Feb 2026 02:33:01 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: marmarek@invisiblethingslab.com, timo.teras@iki.fi,
 jeremie.wenger@edu.ge.ch, Vitaly Lifshits <vitaly.lifshits@intel.com>
Date: Mon,  2 Feb 2026 12:32:57 +0200
Message-Id: <20260202103257.1972097-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1770028384; x=1801564384;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=P7XJ5BzIdc+omwsSKH3MoNPcGXQiwmdY2G+et4C7ouI=;
 b=esEsA8+NgjGJkP2SozLIsk+oubgjwprgctiqwZymTlRnVEbkXK5bxNZb
 fsIZMF/U8Qytr3eT6H0wamTe66aZhVQ0LYrngSX4AO72irp6dYBoNEF/A
 ovKRuQumN5yBilWnCAbQEsFBkEr96Od38T0WWOReyjaZtT+w8MSgffOmW
 uZwgcHJdP8plYOS1p0exjyjsBPSP2j/wvaE9JNy1acppaqzOwIMRNmVya
 kEUD/pwy6Y0Eo7lDsAwdpvx0Cxe+JD6p2ntoiqSWYYm7pk0gWCa7tgTHV
 SS/pPtNiAqlP9L0xFMmxq13FrFbJlioDlNUL10mdQWID/zdLA1Qs1vReg
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=esEsA8+N
Subject: [Intel-wired-lan] [PATCH iwl-net v2 1/1] e1000e: reconfigure PLL
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
	DBL_BLOCKED_OPENRESOLVER(0.00)[osuosl.org:dkim,intel.com:mid,intel.com:email,smtp4.osuosl.org:helo,smtp4.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[vitaly.lifshits@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:2605:bc80::/32, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: F166CCB080
X-Rspamd-Action: no action

Commit 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
disabled K1 by default on Meteor Lake and newer systems due to packet
loss observed on various platforms. However, disabling K1 caused an
increase in power consumption due to blocking PC10 state.

To mitigate this, reconfigure the PLL clock gate value so that K1 can
remain enabled without incurring the additional power consumption.

Link: https://bugzilla.kernel.org/show_bug.cgi?id=220954
Fixes: 3c7bf5af21960 ("e1000e: Introduce private flag to disable K1")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
v2: add comment for the PLL timeout value and revisit the commit message
v1: initial version
---
 drivers/net/ethernet/intel/e1000e/ich8lan.c | 6 ++++++
 drivers/net/ethernet/intel/e1000e/netdev.c  | 3 ---
 2 files changed, 6 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/ich8lan.c b/drivers/net/ethernet/intel/e1000e/ich8lan.c
index 13841daba399..8e88aa9048da 100644
--- a/drivers/net/ethernet/intel/e1000e/ich8lan.c
+++ b/drivers/net/ethernet/intel/e1000e/ich8lan.c
@@ -1594,6 +1594,12 @@ static s32 e1000_check_for_copper_link_ich8lan(struct e1000_hw *hw)
 			phy_reg &= ~I217_PLL_CLOCK_GATE_MASK;
 			if (speed == SPEED_100 || speed == SPEED_10)
 				phy_reg |= 0x3E8;
+			else if (hw->mac.type == e1000_pch_mtp ||
+				 hw->mac.type == e1000_pch_ptp)
+				/* Increase PLL clock gate timeout to avoid
+				 * packet loss
+				 */
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

