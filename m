Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E8285949125
	for <lists+intel-wired-lan@lfdr.de>; Tue,  6 Aug 2024 15:24:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id A06B0405C7;
	Tue,  6 Aug 2024 13:24:02 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gZ8tw4TDjEKN; Tue,  6 Aug 2024 13:24:01 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4909040643
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1722950641;
	bh=odNNU9btDiw6liKr5rOv6Yyn7xa9kgObt6+npRwdydI=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ewh+wd1VgQqFmL5Z1r2iRTu219e7sgFa0kS443x19iJ2DC+M+YOBDasB8Tidr7Scl
	 ntavJo3/DxDBfRTlQA/Yy62ZczKJyonSByFAMTaFr4iN4Ph1NO2fb0NRvb9zDI2ISC
	 oCX8EQlZzGQH7xS6tjqzotaaqbW8NhQbgLZIZGx50O2QMp9WYfVqMIhDKtFtaUxBYt
	 Wzmg0l+grQdT/ijJyK/hC470WlA0+f9EBacIn19GKa0c+GcI1EZ20C/rvWRjteMjhW
	 xaBI9ejl5g3yt3VsJ6i85Kdw6+ReMLDfLxV4u9bR2x0dZWb9JOZPlD916OEDX46ITO
	 wIwFKrljMCHSw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4909040643;
	Tue,  6 Aug 2024 13:24:01 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 58DFD1BF300
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:23:59 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 5239A606B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:23:59 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id PjjZiOL_PXPG for <intel-wired-lan@lists.osuosl.org>;
 Tue,  6 Aug 2024 13:23:58 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=vitaly.lifshits@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 72AF36068A
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 72AF36068A
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 72AF36068A
 for <intel-wired-lan@lists.osuosl.org>; Tue,  6 Aug 2024 13:23:57 +0000 (UTC)
X-CSE-ConnectionGUID: 6FZw+0y7QIKBiZeSqc61xQ==
X-CSE-MsgGUID: aouFDwklQNmJSI3RvX7nvw==
X-IronPort-AV: E=McAfee;i="6700,10204,11156"; a="31599516"
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="31599516"
Received: from orviesa005.jf.intel.com ([10.64.159.145])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:23:55 -0700
X-CSE-ConnectionGUID: Z3EAISw2RCq89N9oTwFqRA==
X-CSE-MsgGUID: M+dfW9enShaKvZtKn3/IvQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,267,1716274800"; d="scan'208";a="61372611"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.51])
 by orviesa005.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Aug 2024 06:23:53 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  6 Aug 2024 16:23:48 +0300
Message-Id: <20240806132348.880744-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1722950638; x=1754486638;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=dEwb2dUg5L5gsYdNywpWdSIo0ug1hqNm0WFzDzVJGvg=;
 b=IOUCeTrGqEuohTRUNPBC+ksyjCGtfwvxaSQFBlNAxi5g835pj6h1z305
 s/1x9SDRgwKKn0iXFbNf67Tas2/8AVlxe3ICkkW8XxdJt+24AnLbX4f5c
 Vwd9HKcwkqNlWBpvaGxhMtPFBxEAEBw44Rii2KabwijsYh7ngyFgehUbj
 +4rqetDjz6HuKTguQMvepU5kg5O/Qtbw7O422D0Ikj0bOhFRzWRMOc/6L
 ACUdghd+xWKi/bMTp/Cd5ZqTwVqonMqjtqxRQ6sYB9QGGVJDAPFREt+gv
 nv8QwLtg/IVdj5GDbRN1ihbGM95uwsb2Pqc6CescVHLlcrfyNpUR306Ej
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=IOUCeTrG
Subject: [Intel-wired-lan] [PATCH iwl-net v1 1/1] e1000e: avoid failing the
 system during pm_suspend
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
Cc: Dima Ruinskiy <dima.ruinskiy@intel.com>, venkateswara.rao@intel.com,
 todd.e.brandt@intel.com, Vitaly Lifshits <vitaly.lifshits@intel.com>,
 rui.zhang@intel.com, lenb@kernel.org, yu.c.chen@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Occasionally when the system goes into pm_suspend, the suspend might fail
due to a PHY access error on the network adapter. Previously, this would
have caused the whole system to fail to go to a low power state.
An example of this was reported in the following Bugzilla:
https://bugzilla.kernel.org/show_bug.cgi?id=205015

[ 1663.694828] e1000e 0000:00:19.0 eth0: Failed to disable ULP
[ 1664.731040] asix 2-3:1.0 eth1: link up, 100Mbps, full-duplex, lpa 0xC1E1
[ 1665.093513] e1000e 0000:00:19.0 eth0: Hardware Error
[ 1665.596760] e1000e 0000:00:19.0: pci_pm_resume+0x0/0x80 returned 0 after 2975399 usecs
and then the system never recovers from it, and all the following suspend failed due to this
[22909.393854] PM: pci_pm_suspend(): e1000e_pm_suspend+0x0/0x760 [e1000e] returns -2
[22909.393858] PM: dpm_run_callback(): pci_pm_suspend+0x0/0x160 returns -2
[22909.393861] PM: Device 0000:00:1f.6 failed to suspend async: error -2

This can be avoided by changing the return values of __e1000_shutdown and
e1000e_pm_suspend functions so that they always return 0 (success). This
is consistent with what other drivers do.
If the e1000e deiver encounters a hardware error during suspend, potential
side effects include slightly higher power draw or non-working wake on
LAN. This is preferred to a system-level suspend failure, and a warning
message is written to the system log, so that the user can be aware that
the LAN controller experienced a problem during suspend.

Suggested-by: Dima Ruinskiy <dima.ruinskiy@intel.com>
Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
Link: https://bugzilla.kernel.org/show_bug.cgi?id=205015
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 19 +++++++++++--------
 1 file changed, 11 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 360ee26557f7..f103249b12fa 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6671,8 +6671,10 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 		if (adapter->flags2 & FLAG2_HAS_PHY_WAKEUP) {
 			/* enable wakeup by the PHY */
 			retval = e1000_init_phy_wakeup(adapter, wufc);
-			if (retval)
-				return retval;
+			if (retval) {
+				e_err("Failed to enable wakeup\n");
+				goto skip_phy_configurations;
+			}
 		} else {
 			/* enable wakeup by the MAC */
 			ew32(WUFC, wufc);
@@ -6693,8 +6695,10 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 			 * or broadcast.
 			 */
 			retval = e1000_enable_ulp_lpt_lp(hw, !runtime);
-			if (retval)
-				return retval;
+			if (retval) {
+				e_err("Failed to enable ULP\n");
+				goto skip_phy_configurations;
+			}
 		}
 	}
 
@@ -6726,6 +6730,7 @@ static int __e1000_shutdown(struct pci_dev *pdev, bool runtime)
 		hw->phy.ops.release(hw);
 	}
 
+skip_phy_configurations:
 	/* Release control of h/w to f/w.  If f/w is AMT enabled, this
 	 * would have already happened in close and is redundant.
 	 */
@@ -6968,15 +6973,13 @@ static int e1000e_pm_suspend(struct device *dev)
 	e1000e_pm_freeze(dev);
 
 	rc = __e1000_shutdown(pdev, false);
-	if (rc) {
-		e1000e_pm_thaw(dev);
-	} else {
+	if (!rc) {
 		/* Introduce S0ix implementation */
 		if (adapter->flags2 & FLAG2_ENABLE_S0IX_FLOWS)
 			e1000e_s0ix_entry_flow(adapter);
 	}
 
-	return rc;
+	return 0;
 }
 
 static int e1000e_pm_resume(struct device *dev)
-- 
2.34.1

