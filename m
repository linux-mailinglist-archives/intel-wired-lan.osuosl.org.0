Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 78ED339D4DA
	for <lists+intel-wired-lan@lfdr.de>; Mon,  7 Jun 2021 08:19:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E38A40285;
	Mon,  7 Jun 2021 06:19:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DsMHpITofuBu; Mon,  7 Jun 2021 06:19:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8FC940147;
	Mon,  7 Jun 2021 06:19:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 332901BF328
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jun 2021 06:19:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2ECBD401CB
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jun 2021 06:19:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0oi_0yFyMkC0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  7 Jun 2021 06:19:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 0D4814019B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  7 Jun 2021 06:19:17 +0000 (UTC)
IronPort-SDR: nwe2ZPljQ9/rowksuOEPqbA47JpJi/FdLeBnLzuoG8LGwIzTm3yx7rmRor4wFl6KHvZ0aYtYwq
 qHPqm17oCDeQ==
X-IronPort-AV: E=McAfee;i="6200,9189,10007"; a="204590289"
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; d="scan'208";a="204590289"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2021 23:19:16 -0700
IronPort-SDR: ymRQu7XKvZOxqTV/LuSfFrf44i4fRYqmkJgWRIK3kzWzrxV+0c/Y3sesD/5YurNzQXXNBKUW77
 aVJ1lf3pSPuA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.83,254,1616482800"; d="scan'208";a="448981891"
Received: from ccdlinuxdev11.iil.intel.com ([143.185.162.13])
 by fmsmga008.fm.intel.com with ESMTP; 06 Jun 2021 23:19:15 -0700
From: Sasha Neftin <sasha.neftin@intel.com>
To: intel-wired-lan@lists.osuosl.org, dvorax.fuxbrumer@linux.intel.com,
 michael.edri@intel.com
Date: Mon,  7 Jun 2021 09:19:12 +0300
Message-Id: <20210607061912.2356057-1-sasha.neftin@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v1 1/1] e1000e: Check the PCIm state
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Complete to commit def4ec6dce393e ("e1000e: PCIm function state support")
Check the PCIm state only on CSME systems. There is no point to do this
check on none CSME systems.
This patch fixes a generation a false-positive warning:
"Error in exiting dmoff"

Signed-off-by: Sasha Neftin <sasha.neftin@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 24 ++++++++++++----------
 1 file changed, 13 insertions(+), 11 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index 781b751f066f..6a20c7f82fc9 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -5225,18 +5225,20 @@ static void e1000_watchdog_task(struct work_struct *work)
 			pm_runtime_resume(netdev->dev.parent);
 
 			/* Checking if MAC is in DMoff state*/
-			pcim_state = er32(STATUS);
-			while (pcim_state & E1000_STATUS_PCIM_STATE) {
-				if (tries++ == dmoff_exit_timeout) {
-					e_dbg("Error in exiting dmoff\n");
-					break;
-				}
-				usleep_range(10000, 20000);
+			if (er32(FWSM) & E1000_ICH_FWSM_FW_VALID) {
 				pcim_state = er32(STATUS);
-
-				/* Checking if MAC exited DMoff state */
-				if (!(pcim_state & E1000_STATUS_PCIM_STATE))
-					e1000_phy_hw_reset(&adapter->hw);
+				while (pcim_state & E1000_STATUS_PCIM_STATE) {
+					if (tries++ == dmoff_exit_timeout) {
+						e_dbg("Error in exiting dmoff\n");
+						break;
+					}
+					usleep_range(10000, 20000);
+					pcim_state = er32(STATUS);
+
+					/* Checking if MAC exited DMoff state */
+					if (!(pcim_state & E1000_STATUS_PCIM_STATE))
+						e1000_phy_hw_reset(&adapter->hw);
+				}
 			}
 
 			/* update snapshot of PHY registers on LSC */
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
