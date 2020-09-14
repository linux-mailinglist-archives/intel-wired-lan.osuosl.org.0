Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id AF3A6268933
	for <lists+intel-wired-lan@lfdr.de>; Mon, 14 Sep 2020 12:24:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 655A98108C;
	Mon, 14 Sep 2020 10:24:17 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id KB0573jmytkW; Mon, 14 Sep 2020 10:24:17 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 86439869A2;
	Mon, 14 Sep 2020 10:24:16 +0000 (UTC)
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id C89D71BF3BB
 for <intel-wired-lan@osuosl.org>; Mon, 14 Sep 2020 10:24:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id C447985B09
 for <intel-wired-lan@osuosl.org>; Mon, 14 Sep 2020 10:24:14 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id fvALhDndtzLi for <intel-wired-lan@osuosl.org>;
 Mon, 14 Sep 2020 10:24:14 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 1E71D85B04
 for <intel-wired-lan@osuosl.org>; Mon, 14 Sep 2020 10:24:14 +0000 (UTC)
IronPort-SDR: 0qu+zahpsP3bmsVqi4WSMkJx7FS5JhFvdIIIj0fN/S+v81t5IgvT9PE/EtSTDGgxIFdFCLr897
 J26kSpZSui6w==
X-IronPort-AV: E=McAfee;i="6000,8403,9743"; a="146747227"
X-IronPort-AV: E=Sophos;i="5.76,425,1592895600"; d="scan'208";a="146747227"
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 14 Sep 2020 03:24:13 -0700
IronPort-SDR: EzOxqNdEKOq+UMaLjQ9qJmvvAE+/Cv3PIgg7Gt0FgUueyPoZKOmOj8svpeCDbNbbwWbGbiiNho
 oO1a/LNeq1SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.76,425,1592895600"; d="scan'208";a="408818472"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.160.195])
 by fmsmga001.fm.intel.com with ESMTP; 14 Sep 2020 03:24:12 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@osuosl.org
Date: Mon, 14 Sep 2020 13:24:09 +0300
Message-Id: <20200914102409.6464-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: fix S0ix flow to allow
 S0i3.2 subset entry
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Changed a configuration in the flows to align with
architecture requirements to achieve S0i3.2 substate.

Also fixed a typo in the previous patch- e1000e: fix S0ix flows for
cable connected case (632fbd5eb5b).

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index a77d39723d8d..2f224478a0c3 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -6479,13 +6479,13 @@ static void e1000e_s0ix_entry_flow(struct e1000_adapter *adapter)
 
 	/* Ungate PGCB clock */
 	mac_data = er32(FEXTNVM9);
-	mac_data |= BIT(28);
+	mac_data &= ~BIT(28);
 	ew32(FEXTNVM9, mac_data);
 
 	/* Enable K1 off to enable mPHY Power Gating */
 	mac_data = er32(FEXTNVM6);
 	mac_data |= BIT(31);
-	ew32(FEXTNVM12, mac_data);
+	ew32(FEXTNVM6, mac_data);
 
 	/* Enable mPHY power gating for any link and speed */
 	mac_data = er32(FEXTNVM8);
@@ -6529,11 +6529,11 @@ static void e1000e_s0ix_exit_flow(struct e1000_adapter *adapter)
 	/* Disable K1 off */
 	mac_data = er32(FEXTNVM6);
 	mac_data &= ~BIT(31);
-	ew32(FEXTNVM12, mac_data);
+	ew32(FEXTNVM6, mac_data);
 
 	/* Disable Ungate PGCB clock */
 	mac_data = er32(FEXTNVM9);
-	mac_data &= ~BIT(28);
+	mac_data |= BIT(28);
 	ew32(FEXTNVM9, mac_data);
 
 	/* Cancel not waking from dynamic
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
