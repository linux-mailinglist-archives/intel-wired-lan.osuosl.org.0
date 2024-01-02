Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id E5D13821D76
	for <lists+intel-wired-lan@lfdr.de>; Tue,  2 Jan 2024 15:14:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 308A0408F1;
	Tue,  2 Jan 2024 14:14:29 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 308A0408F1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1704204869;
	bh=S0zyTAeD3IJRuOchdMCZm2vx2UhlaXXa+NIF6CXublc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=KlRDjWjT+F9qc9fkBzKKR+U9SW+BI5/5zDkGydi3xWNtjVLxZTvniEXXEGAp5+YgT
	 yl76lMwlfphHgtiwQ5Y6hXYNjeK6ojh341v7upUIUGJEwEO4MGHBSNT/Rdq5s3QMxu
	 t5muinrZV7HDidONfx+Z0kVQmxdGyIeNqwLlmwT5ZMuMq3jX7xY45I9minelIRiYIA
	 oa0k6AVg3nJduWwqhLfv2PjBxq2fP/gdZrPgFJ8HfcvDswyKf+WbttYzGfPC/yWiZ4
	 znSOL90ir9iGYR4QmYIfOu4tg+5bYOgRdOvo78XV2j2gU24xr2ZTwG2vNlEh3eXxOF
	 pzagW/VHD4aNg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 35EmvJJgmYqI; Tue,  2 Jan 2024 14:14:28 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1F345408D8;
	Tue,  2 Jan 2024 14:14:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1F345408D8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2ADB71BF842
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 14:14:23 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0206E405C8
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 14:14:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0206E405C8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id hI5QmKJrt3cg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  2 Jan 2024 14:14:22 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 26B93401FB
 for <intel-wired-lan@lists.osuosl.org>; Tue,  2 Jan 2024 14:14:22 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 26B93401FB
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="399647940"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="399647940"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 06:14:19 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10941"; a="923228971"
X-IronPort-AV: E=Sophos;i="6.04,325,1695711600"; d="scan'208";a="923228971"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.160.232])
 by fmsmga001.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 02 Jan 2024 06:14:18 -0800
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  2 Jan 2024 16:14:09 +0200
Message-Id: <20240102141409.4000776-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1704204862; x=1735740862;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=0qoMltt5UE00dzb3uH71GGiaATIdjGhKPvY/4hKR7l0=;
 b=KdUoYZfyJdQI4jvNjPlBeLgKabuQPiavhnGgVPxQyfvUEpYPlSHc76jL
 3e+xnFu7unjB3nvaahquUZogyW/Kl6vZ6pmopqTC4WXrJZxkfzVpbKbNF
 373v89MTQ536f7xK4rhjby/569wM9WRNMpMxz8IlkupjISlYguFhGdUnA
 qGjxvc7ntabkOmIBf7cODwBA0d+eyF68IbhJ1pX6GJ7BB/gqOowmp+ts8
 0sPRemUaP22h+KpktM2n68oCCXxb8N9hiwVAJQsR+sPjNxOT/40lyRMb0
 S+0iiDgkeaUzcVwHCLxvYpr7Xh6MDKRWv3L1Wr31w9BoT/XtQiZZtwbix
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KdUoYZfy
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: fix
 non-deterministic behavior in e1000_shutdown
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.29
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
Cc: david.m.ertman@intel.com, Vitaly Lifshits <vitaly.lifshits@intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

A non-deterministic behavior was found in e1000_shutdown function.
In it, the variable retval is being evaluated according to the
configurations in the hardware. Sometimes, it might be validated
for a previous assignment, where it is wrong.

Therefore curly braces were added at that part of the code.

Fixes: 74f350ee08e2 ("e1000e: Feature Enable PHY Ultra Low Power Mode (ULP)")
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index f536c856727c..e51d79d8a7d7 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6691,14 +6691,14 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 	if (adapter->hw.phy.type == e1000_phy_igp_3) {
 		e1000e_igp3_phy_powerdown_workaround_ich8lan(&adapter->hw);
 	} else if (hw->mac.type >= e1000_pch_lpt) {
-		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC)))
+		if (wufc && !(wufc & (E1000_WUFC_EX | E1000_WUFC_MC | E1000_WUFC_BC))) {
 			/* ULP does not support wake from unicast, multicast
 			 * or broadcast.
 			 */
 			retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
-
-		if (retval)
-			return retval;
+			if (retval)
+				return retval;
+		}
 	}
 
 	/* Ensure that the appropriate bits are set in LPI_CTRL
-- 
2.34.1

