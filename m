Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id C45AC71F3D
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 20:24:48 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 7213884B89;
	Tue, 23 Jul 2019 18:24:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id DkVG++NJl1AI; Tue, 23 Jul 2019 18:24:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id E3ED784EE9;
	Tue, 23 Jul 2019 18:24:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id ECB801BF97A
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id E9260832C6
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 6WvMig7l6GiQ for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0E7FA83336
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:24:37 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga001.jf.intel.com ([10.7.209.18])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 11:24:35 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="253311778"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga001.jf.intel.com with ESMTP; 23 Jul 2019 11:24:35 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 06:03:36 -0400
Message-Id: <20190723100345.57522-3-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190723100345.57522-1-alice.michael@intel.com>
References: <20190723100345.57522-1-alice.michael@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S8 03/12] i40e: check_recovery_mode
 had wrong if statement
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
Cc: Adrian Podlawski <adrian.podlawski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Adrian Podlawski <adrian.podlawski@intel.com>

Function check_recovery_mode had wrong if statement.
Now we check proper FWS1B register values, which are responsible for
the recovery mode. Recovery mode has 4 values for FVL and 2 for FPK.
That's why we need 6 different flags which are defined in shared code.
Now in if statement we recognize type of mac address
and register value.
Without those changes driver could show wrong state.

Signed-off-by: Adrian Podlawski <adrian.podlawski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c     | 17 ++++++++++++++---
 drivers/net/ethernet/intel/i40e/i40e_register.h |  6 ++++++
 2 files changed, 20 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b807dd6b1417..4551d97771c9 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -14578,9 +14578,20 @@ void i40e_set_fec_in_flags(u8 fec_cfg, u32 *flags)
  **/
 static bool i40e_check_recovery_mode(struct i40e_pf *pf)
 {
-	u32 val = rd32(&pf->hw, I40E_GL_FWSTS);
-
-	if (val & I40E_GL_FWSTS_FWS1B_MASK) {
+	u32 val = rd32(&pf->hw, I40E_GL_FWSTS) & I40E_GL_FWSTS_FWS1B_MASK;
+	bool is_recovery_mode = false;
+
+	if (pf->hw.mac.type == I40E_MAC_XL710)
+		is_recovery_mode =
+		val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK ||
+		val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK ||
+		val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_TRANSITION_MASK ||
+		val == I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_NVM_MASK;
+	if (pf->hw.mac.type == I40E_MAC_X722)
+		is_recovery_mode =
+		val == I40E_X722_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK ||
+		val == I40E_X722_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK;
+	if (is_recovery_mode) {
 		dev_notice(&pf->pdev->dev, "Firmware recovery mode detected. Limiting functionality.\n");
 		dev_notice(&pf->pdev->dev, "Refer to the Intel(R) Ethernet Adapters and Devices User Guide for details on firmware recovery mode.\n");
 		set_bit(__I40E_RECOVERY_MODE, pf->state);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 330ac19a5dae..d35d690ca10f 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -363,6 +363,12 @@
 #define I40E_GL_FWSTS_FWRI_MASK I40E_MASK(0x1, I40E_GL_FWSTS_FWRI_SHIFT)
 #define I40E_GL_FWSTS_FWS1B_SHIFT 16
 #define I40E_GL_FWSTS_FWS1B_MASK I40E_MASK(0xFF, I40E_GL_FWSTS_FWS1B_SHIFT)
+#define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK I40E_MASK(0x30, I40E_GL_FWSTS_FWS1B_SHIFT)
+#define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK I40E_MASK(0x31, I40E_GL_FWSTS_FWS1B_SHIFT)
+#define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_TRANSITION_MASK I40E_MASK(0x32, I40E_GL_FWSTS_FWS1B_SHIFT)
+#define I40E_XL710_GL_FWSTS_FWS1B_REC_MOD_NVM_MASK I40E_MASK(0x33, I40E_GL_FWSTS_FWS1B_SHIFT)
+#define I40E_X722_GL_FWSTS_FWS1B_REC_MOD_CORER_MASK I40E_MASK(0xB, I40E_GL_FWSTS_FWS1B_SHIFT)
+#define I40E_X722_GL_FWSTS_FWS1B_REC_MOD_GLOBR_MASK I40E_MASK(0xC, I40E_GL_FWSTS_FWS1B_SHIFT)
 #define I40E_GLGEN_CLKSTAT 0x000B8184 /* Reset: POR */
 #define I40E_GLGEN_CLKSTAT_CLKMODE_SHIFT 0
 #define I40E_GLGEN_CLKSTAT_CLKMODE_MASK I40E_MASK(0x1, I40E_GLGEN_CLKSTAT_CLKMODE_SHIFT)
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
