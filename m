Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2085F1C973D
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 May 2020 19:14:14 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 85E6889619;
	Thu,  7 May 2020 17:14:12 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id XHcrkXzGlxuw; Thu,  7 May 2020 17:14:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id D40B08961F;
	Thu,  7 May 2020 17:14:11 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 2F32F1BF3FB
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 17:14:11 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 279648821C
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 17:14:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lTJbu+e4QF1R for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 May 2020 17:14:09 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by whitealder.osuosl.org (Postfix) with ESMTPS id C892A87657
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 May 2020 17:14:09 +0000 (UTC)
IronPort-SDR: 4mJWDnTaZqHunYcivZm3YJk+TNEPNSXTSk1Bk4ylTHH5XPb5qddyv5PlJ1FpjtasAn2Fj0p8O7
 TLPZK78t1znA==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2020 10:14:08 -0700
IronPort-SDR: u1YtYqtSHDHoAkROu7cVcz/77wgd4MHWh9AGIiEvSDjIboa3EudiA7pDi4V8ZqL0xVcF2zV9pz
 EmhTCNPjvZhg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.73,364,1583222400"; d="scan'208";a="435365762"
Received: from ccdlinuxdev08.iil.intel.com ([143.185.160.195])
 by orsmga005.jf.intel.com with ESMTP; 07 May 2020 10:14:07 -0700
From: Vitaly Lifshits <vitaly.lifshits@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  7 May 2020 20:14:06 +0300
Message-Id: <20200507171406.6883-1-vitaly.lifshits@intel.com>
X-Mailer: git-send-email 2.11.0
Subject: [Intel-wired-lan] [PATCH v1] e1000e: disable s0ix entry and exit
 flows for ME systems
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

Since ME systems do not support SLP_S0 in S0ix state, and S0ix entry
and exit flows may cause errors on them it is best to avoid using
e1000e_s0ix_entry_flow and e1000e_s0ix_exit_flow functions.

This was done by creating a struct of all devices that comes with ME
and by checking if the current device has ME.

Signed-off-by: Vitaly Lifshits <vitaly.lifshits@intel.com>
---
 drivers/net/ethernet/intel/e1000e/netdev.c | 45 ++++++++++++++++++++++++++++--
 1 file changed, 43 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/e1000e/netdev.c b/drivers/net/ethernet/intel/e1000e/netdev.c
index e0b074820b47..57af6b81d79d 100644
--- a/drivers/net/ethernet/intel/e1000e/netdev.c
+++ b/drivers/net/ethernet/intel/e1000e/netdev.c
@@ -107,6 +107,45 @@ static const struct e1000_reg_info e1000_reg_info_tbl[] = {
 	{0, NULL}
 };
 
+struct e1000e_me_supported {
+	u16 device_id;		/* supported device ID */
+};
+
+static const struct e1000e_me_supported me_supported[] = {
+	{E1000_DEV_ID_PCH_LPT_I217_LM},
+	{E1000_DEV_ID_PCH_LPTLP_I218_LM},
+	{E1000_DEV_ID_PCH_I218_LM2},
+	{E1000_DEV_ID_PCH_I218_LM3},
+	{E1000_DEV_ID_PCH_SPT_I219_LM},
+	{E1000_DEV_ID_PCH_SPT_I219_LM2},
+	{E1000_DEV_ID_PCH_LBG_I219_LM3},
+	{E1000_DEV_ID_PCH_SPT_I219_LM4},
+	{E1000_DEV_ID_PCH_SPT_I219_LM5},
+	{E1000_DEV_ID_PCH_CNP_I219_LM6},
+	{E1000_DEV_ID_PCH_CNP_I219_LM7},
+	{E1000_DEV_ID_PCH_ICP_I219_LM8},
+	{E1000_DEV_ID_PCH_ICP_I219_LM9},
+	{E1000_DEV_ID_PCH_CMP_I219_LM10},
+	{E1000_DEV_ID_PCH_CMP_I219_LM11},
+	{E1000_DEV_ID_PCH_CMP_I219_LM12},
+	{E1000_DEV_ID_PCH_TGP_I219_LM13},
+	{E1000_DEV_ID_PCH_TGP_I219_LM14},
+	{E1000_DEV_ID_PCH_TGP_I219_LM15},
+	{0}
+};
+
+static bool e1000e_check_me(u16 device_id)
+{
+	struct e1000e_me_supported *id;
+
+	for (id = (struct e1000e_me_supported *)me_supported;
+	     id->device_id; id++)
+		if (device_id == id->device_id)
+			return true;
+
+	return false;
+}
+
 /**
  * __ew32_prepare - prepare to write to MAC CSR register on certain parts
  * @hw: pointer to the HW structure
@@ -6912,7 +6951,8 @@ static int e1000e_pm_suspend(struct device *dev)
 		e1000e_pm_thaw(dev);
 
 	/* Introduce S0ix implementation */
-	if (hw->mac.type >= e1000_pch_cnp)
+	if (hw->mac.type >= e1000_pch_cnp &&
+	    !e1000e_check_me(hw->adapter->pdev->device))
 		e1000e_s0ix_entry_flow(adapter);
 
 	return rc;
@@ -6927,7 +6967,8 @@ static int e1000e_pm_resume(struct device *dev)
 	int rc;
 
 	/* Introduce S0ix implementation */
-	if (hw->mac.type >= e1000_pch_cnp)
+	if (hw->mac.type >= e1000_pch_cnp &&
+	    !e1000e_check_me(hw->adapter->pdev->device))
 		e1000e_s0ix_exit_flow(adapter);
 
 	rc = __e1000_resume(pdev);
-- 
2.11.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
