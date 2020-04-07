Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 242F51A17CD
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Apr 2020 00:11:52 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id D308186931;
	Tue,  7 Apr 2020 22:11:50 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 88cUyVTPwAtV; Tue,  7 Apr 2020 22:11:49 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 4A62086966;
	Tue,  7 Apr 2020 22:11:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 939861BF40D
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 22:11:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 8E981221D5
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 22:11:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id OSnIJ5w19yPK for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 Apr 2020 22:11:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id 30319221C6
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 Apr 2020 22:11:44 +0000 (UTC)
IronPort-SDR: 49jAmxWqRYOyaDbCXyshumGXRv5xZl8wohmDQe1q5KVvnmlNwXwXhCf3/0NklaF8qehUmsV6jj
 WwC8ARYmPwdg==
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Apr 2020 15:11:42 -0700
IronPort-SDR: 0KfA5QrSMJLOlTf9B/rr3Fq57HbW8nUW0qm8S1lcCtnxs/c29PPQFZqYEZhzisxSvSbwfchtT3
 h0+T+vH7fh6w==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.72,356,1580803200"; d="scan'208";a="286357438"
Received: from jtkirshe-desk1.jf.intel.com ([134.134.177.86])
 by fmsmga002.fm.intel.com with ESMTP; 07 Apr 2020 15:11:42 -0700
From: Jeff Kirsher <jeffrey.t.kirsher@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 Apr 2020 15:11:39 -0700
Message-Id: <20200407221139.2233977-1-jeffrey.t.kirsher@intel.com>
X-Mailer: git-send-email 2.25.2
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next-queue v2] i40e: Add a check to see if MFS
 is set
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

From: Todd Fujinaka <todd.fujinaka@intel.com>

A customer was chain-booting to provision his systems and one of the
steps was setting MFS. MFS isn't cleared by normal warm reboots
(clearing requires a GLOBR) and there was no indication of why Jumbo
Frame receives were failing.

Add a warning if MFS is set to anything lower than the default.

Signed-off-by: Todd Fujinaka <todd.fujinaka@intel.com>
Reviewed-by: Jesse Brandeburg <jesse.brandeburg@intel.com>
---
v2: added missing defines

 drivers/net/ethernet/intel/i40e/i40e_main.c     | 9 +++++++++
 drivers/net/ethernet/intel/i40e/i40e_register.h | 8 ++++++++
 2 files changed, 17 insertions(+)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index b08dccbe6ef2..75189c16604e 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -15344,6 +15344,15 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 			i40e_stat_str(&pf->hw, err),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 
+	/* make sure the MFS hasn't been set lower than the default */
+#define MAX_FRAME_SIZE_DEFAULT 0x2600
+	for (i = 0; i < 4; i++) {
+		val = ((rd32(&pf->hw, I40E_PRTGL_SAH) & I40E_PRTGL_SAH_MFS_MASK)
+			>> I40E_PRTGL_SAH_MFS_SHIFT);
+		if (val < MAX_FRAME_SIZE_DEFAULT)
+			dev_warn(&pdev->dev, "MFS for port %x has been set below the default: %x\n", i, val);
+	}
+
 	/* Add a filter to drop all Flow control frames from any VSI from being
 	 * transmitted. By doing so we stop a malicious VF from sending out
 	 * PAUSE or PFC frames and potentially controlling traffic for other
diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 0653b3bed2f2..4eeedcdee342 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -349,6 +349,14 @@
 #define I40E_VSILAN_QBASE_VSIQTABLE_ENA_SHIFT 11
 #define I40E_VSILAN_QBASE_VSIQTABLE_ENA_MASK I40E_MASK(0x1, I40E_VSILAN_QBASE_VSIQTABLE_ENA_SHIFT)
 #define I40E_VSILAN_QTABLE(_i, _VSI) (0x00200000 + ((_i) * 2048 + (_VSI) * 4)) /* _i=0...7, _VSI=0...383 */ /* Reset: PFR */
+#define I40E_PRTGL_SAH			0x001E2140 /* Reset: GLOBR */
+#define I40E_PRTGL_SAH_FC_SAH_SHIFT	0
+#define I40E_PRTGL_SAH_FC_SAH_MASK	I40E_MASK(0xFFFF, I40E_PRTGL_SAH_FC_SAH_SHIFT)
+#define I40E_PRTGL_SAH_MFS_SHIFT	16
+#define I40E_PRTGL_SAH_MFS_MASK		I40E_MASK(0xFFFF, I40E_PRTGL_SAH_MFS_SHIFT)
+#define I40E_PRTGL_SAL			0x001E2120 /* Reset: GLOBR */
+#define I40E_PRTGL_SAL_FC_SAL_SHIFT	0
+#define I40E_PRTGL_SAL_FC_SAL_MASK	I40E_MASK(0xFFFFFFFF, I40E_PRTGL_SAL_FC_SAL_SHIFT)
 #define I40E_GLNVM_FLA 0x000B6108 /* Reset: POR */
 #define I40E_GLNVM_FLA_LOCKED_SHIFT 6
 #define I40E_GLNVM_FLA_LOCKED_MASK I40E_MASK(0x1, I40E_GLNVM_FLA_LOCKED_SHIFT)
-- 
2.25.2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
