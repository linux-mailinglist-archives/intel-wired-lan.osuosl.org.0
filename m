Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2689871F11
	for <lists+intel-wired-lan@lfdr.de>; Tue, 23 Jul 2019 20:22:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id C8531204E2;
	Tue, 23 Jul 2019 18:22:44 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id TlLGIZ22nVu2; Tue, 23 Jul 2019 18:22:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id BF19E203F0;
	Tue, 23 Jul 2019 18:22:41 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 0BE2A1BF2A5
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 091B485AE9
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:40 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 8wMCnDJub50X for <intel-wired-lan@lists.osuosl.org>;
 Tue, 23 Jul 2019 18:22:39 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 37701857D8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 23 Jul 2019 18:22:39 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga105.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 23 Jul 2019 11:22:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,299,1559545200"; d="scan'208";a="172037669"
Received: from alicemic-1.jf.intel.com ([10.166.17.62])
 by orsmga003.jf.intel.com with ESMTP; 23 Jul 2019 11:22:35 -0700
From: Alice Michael <alice.michael@intel.com>
To: alice.michael@intel.com,
	intel-wired-lan@lists.osuosl.org
Date: Tue, 23 Jul 2019 06:01:33 -0400
Message-Id: <20190723100144.57435-1-alice.michael@intel.com>
X-Mailer: git-send-email 2.21.0
MIME-Version: 1.0
Subject: [Intel-wired-lan] [next PATCH S8 01/12] i40e: fix shifts of signed
 values
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
Cc: Beilei Xing <beilei.xing@intel.com>, Ferruh Yigit <ferruh.yigit@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Beilei Xing <beilei.xing@intel.com>

This patch fixes following error reported by cppcheck:
(error) Shifting signed 32-bit value by 31 bits is undefined behaviour

Signed-off-by: Ferruh Yigit <ferruh.yigit@intel.com>
---
 .../net/ethernet/intel/i40e/i40e_register.h   | 24 +++++++++----------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_register.h b/drivers/net/ethernet/intel/i40e/i40e_register.h
index 52e3680c57f8..330ac19a5dae 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_register.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_register.h
@@ -58,7 +58,7 @@
 #define I40E_PF_ARQLEN_ARQCRIT_SHIFT 30
 #define I40E_PF_ARQLEN_ARQCRIT_MASK I40E_MASK(0x1, I40E_PF_ARQLEN_ARQCRIT_SHIFT)
 #define I40E_PF_ARQLEN_ARQENABLE_SHIFT 31
-#define I40E_PF_ARQLEN_ARQENABLE_MASK I40E_MASK(0x1, I40E_PF_ARQLEN_ARQENABLE_SHIFT)
+#define I40E_PF_ARQLEN_ARQENABLE_MASK I40E_MASK(0x1u, I40E_PF_ARQLEN_ARQENABLE_SHIFT)
 #define I40E_PF_ARQT 0x00080480 /* Reset: EMPR */
 #define I40E_PF_ARQT_ARQT_SHIFT 0
 #define I40E_PF_ARQT_ARQT_MASK I40E_MASK(0x3FF, I40E_PF_ARQT_ARQT_SHIFT)
@@ -81,7 +81,7 @@
 #define I40E_PF_ATQLEN_ATQCRIT_SHIFT 30
 #define I40E_PF_ATQLEN_ATQCRIT_MASK I40E_MASK(0x1, I40E_PF_ATQLEN_ATQCRIT_SHIFT)
 #define I40E_PF_ATQLEN_ATQENABLE_SHIFT 31
-#define I40E_PF_ATQLEN_ATQENABLE_MASK I40E_MASK(0x1, I40E_PF_ATQLEN_ATQENABLE_SHIFT)
+#define I40E_PF_ATQLEN_ATQENABLE_MASK I40E_MASK(0x1u, I40E_PF_ATQLEN_ATQENABLE_SHIFT)
 #define I40E_PF_ATQT 0x00080400 /* Reset: EMPR */
 #define I40E_PF_ATQT_ATQT_SHIFT 0
 #define I40E_PF_ATQT_ATQT_MASK I40E_MASK(0x3FF, I40E_PF_ATQT_ATQT_SHIFT)
@@ -108,7 +108,7 @@
 #define I40E_VF_ARQLEN_ARQCRIT_SHIFT 30
 #define I40E_VF_ARQLEN_ARQCRIT_MASK I40E_MASK(0x1, I40E_VF_ARQLEN_ARQCRIT_SHIFT)
 #define I40E_VF_ARQLEN_ARQENABLE_SHIFT 31
-#define I40E_VF_ARQLEN_ARQENABLE_MASK I40E_MASK(0x1, I40E_VF_ARQLEN_ARQENABLE_SHIFT)
+#define I40E_VF_ARQLEN_ARQENABLE_MASK I40E_MASK(0x1u, I40E_VF_ARQLEN_ARQENABLE_SHIFT)
 #define I40E_VF_ARQT(_VF) (0x00082C00 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
 #define I40E_VF_ARQT_MAX_INDEX 127
 #define I40E_VF_ARQT_ARQT_SHIFT 0
@@ -136,7 +136,7 @@
 #define I40E_VF_ATQLEN_ATQCRIT_SHIFT 30
 #define I40E_VF_ATQLEN_ATQCRIT_MASK I40E_MASK(0x1, I40E_VF_ATQLEN_ATQCRIT_SHIFT)
 #define I40E_VF_ATQLEN_ATQENABLE_SHIFT 31
-#define I40E_VF_ATQLEN_ATQENABLE_MASK I40E_MASK(0x1, I40E_VF_ATQLEN_ATQENABLE_SHIFT)
+#define I40E_VF_ATQLEN_ATQENABLE_MASK I40E_MASK(0x1u, I40E_VF_ATQLEN_ATQENABLE_SHIFT)
 #define I40E_VF_ATQT(_VF) (0x00082800 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: EMPR */
 #define I40E_VF_ATQT_MAX_INDEX 127
 #define I40E_VF_ATQT_ATQT_SHIFT 0
@@ -259,7 +259,7 @@
 #define I40E_PRTDCB_RETSTCC_UPINTC_MODE_SHIFT 30
 #define I40E_PRTDCB_RETSTCC_UPINTC_MODE_MASK I40E_MASK(0x1, I40E_PRTDCB_RETSTCC_UPINTC_MODE_SHIFT)
 #define I40E_PRTDCB_RETSTCC_ETSTC_SHIFT 31
-#define I40E_PRTDCB_RETSTCC_ETSTC_MASK I40E_MASK(0x1, I40E_PRTDCB_RETSTCC_ETSTC_SHIFT)
+#define I40E_PRTDCB_RETSTCC_ETSTC_MASK I40E_MASK(0x1u, I40E_PRTDCB_RETSTCC_ETSTC_SHIFT)
 #define I40E_PRTDCB_RPPMC 0x001223A0 /* Reset: CORER */
 #define I40E_PRTDCB_RPPMC_LANRPPM_SHIFT 0
 #define I40E_PRTDCB_RPPMC_LANRPPM_MASK I40E_MASK(0xFF, I40E_PRTDCB_RPPMC_LANRPPM_SHIFT)
@@ -503,7 +503,7 @@
 #define I40E_GLGEN_MSCA_MDICMD_SHIFT 30
 #define I40E_GLGEN_MSCA_MDICMD_MASK I40E_MASK(0x1, I40E_GLGEN_MSCA_MDICMD_SHIFT)
 #define I40E_GLGEN_MSCA_MDIINPROGEN_SHIFT 31
-#define I40E_GLGEN_MSCA_MDIINPROGEN_MASK I40E_MASK(0x1, I40E_GLGEN_MSCA_MDIINPROGEN_SHIFT)
+#define I40E_GLGEN_MSCA_MDIINPROGEN_MASK I40E_MASK(0x1u, I40E_GLGEN_MSCA_MDIINPROGEN_SHIFT)
 #define I40E_GLGEN_MSRWD(_i) (0x0008819C + ((_i) * 4)) /* _i=0...3 */ /* Reset: POR */
 #define I40E_GLGEN_MSRWD_MAX_INDEX 3
 #define I40E_GLGEN_MSRWD_MDIWRDATA_SHIFT 0
@@ -1242,14 +1242,14 @@
 #define I40E_GLLAN_TXPRE_QDIS_SET_QDIS_SHIFT 30
 #define I40E_GLLAN_TXPRE_QDIS_SET_QDIS_MASK I40E_MASK(0x1, I40E_GLLAN_TXPRE_QDIS_SET_QDIS_SHIFT)
 #define I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_SHIFT 31
-#define I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_MASK I40E_MASK(0x1, I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_SHIFT)
+#define I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_MASK I40E_MASK(0x1u, I40E_GLLAN_TXPRE_QDIS_CLEAR_QDIS_SHIFT)
 #define I40E_PFLAN_QALLOC 0x001C0400 /* Reset: CORER */
 #define I40E_PFLAN_QALLOC_FIRSTQ_SHIFT 0
 #define I40E_PFLAN_QALLOC_FIRSTQ_MASK I40E_MASK(0x7FF, I40E_PFLAN_QALLOC_FIRSTQ_SHIFT)
 #define I40E_PFLAN_QALLOC_LASTQ_SHIFT 16
 #define I40E_PFLAN_QALLOC_LASTQ_MASK I40E_MASK(0x7FF, I40E_PFLAN_QALLOC_LASTQ_SHIFT)
 #define I40E_PFLAN_QALLOC_VALID_SHIFT 31
-#define I40E_PFLAN_QALLOC_VALID_MASK I40E_MASK(0x1, I40E_PFLAN_QALLOC_VALID_SHIFT)
+#define I40E_PFLAN_QALLOC_VALID_MASK I40E_MASK(0x1u, I40E_PFLAN_QALLOC_VALID_SHIFT)
 #define I40E_QRX_ENA(_Q) (0x00120000 + ((_Q) * 4)) /* _i=0...1535 */ /* Reset: PFR */
 #define I40E_QRX_ENA_MAX_INDEX 1535
 #define I40E_QRX_ENA_QENA_REQ_SHIFT 0
@@ -1658,7 +1658,7 @@
 #define I40E_GLNVM_SRCTL_START_SHIFT 30
 #define I40E_GLNVM_SRCTL_START_MASK I40E_MASK(0x1, I40E_GLNVM_SRCTL_START_SHIFT)
 #define I40E_GLNVM_SRCTL_DONE_SHIFT 31
-#define I40E_GLNVM_SRCTL_DONE_MASK I40E_MASK(0x1, I40E_GLNVM_SRCTL_DONE_SHIFT)
+#define I40E_GLNVM_SRCTL_DONE_MASK I40E_MASK(0x1u, I40E_GLNVM_SRCTL_DONE_SHIFT)
 #define I40E_GLNVM_SRDATA 0x000B6114 /* Reset: POR */
 #define I40E_GLNVM_SRDATA_WRDATA_SHIFT 0
 #define I40E_GLNVM_SRDATA_WRDATA_MASK I40E_MASK(0xFFFF, I40E_GLNVM_SRDATA_WRDATA_SHIFT)
@@ -3025,7 +3025,7 @@
 #define I40E_PF_VT_PFALLOC_LASTVF_SHIFT 8
 #define I40E_PF_VT_PFALLOC_LASTVF_MASK I40E_MASK(0xFF, I40E_PF_VT_PFALLOC_LASTVF_SHIFT)
 #define I40E_PF_VT_PFALLOC_VALID_SHIFT 31
-#define I40E_PF_VT_PFALLOC_VALID_MASK I40E_MASK(0x1, I40E_PF_VT_PFALLOC_VALID_SHIFT)
+#define I40E_PF_VT_PFALLOC_VALID_MASK I40E_MASK(0x1u, I40E_PF_VT_PFALLOC_VALID_SHIFT)
 #define I40E_VP_MDET_RX(_VF) (0x0012A000 + ((_VF) * 4)) /* _i=0...127 */ /* Reset: CORER */
 #define I40E_VP_MDET_RX_MAX_INDEX 127
 #define I40E_VP_MDET_RX_VALID_SHIFT 0
@@ -3161,7 +3161,7 @@
 #define I40E_VF_ARQLEN1_ARQCRIT_SHIFT 30
 #define I40E_VF_ARQLEN1_ARQCRIT_MASK I40E_MASK(0x1, I40E_VF_ARQLEN1_ARQCRIT_SHIFT)
 #define I40E_VF_ARQLEN1_ARQENABLE_SHIFT 31
-#define I40E_VF_ARQLEN1_ARQENABLE_MASK I40E_MASK(0x1, I40E_VF_ARQLEN1_ARQENABLE_SHIFT)
+#define I40E_VF_ARQLEN1_ARQENABLE_MASK I40E_MASK(0x1u, I40E_VF_ARQLEN1_ARQENABLE_SHIFT)
 #define I40E_VF_ARQT1 0x00007000 /* Reset: EMPR */
 #define I40E_VF_ARQT1_ARQT_SHIFT 0
 #define I40E_VF_ARQT1_ARQT_MASK I40E_MASK(0x3FF, I40E_VF_ARQT1_ARQT_SHIFT)
@@ -3184,7 +3184,7 @@
 #define I40E_VF_ATQLEN1_ATQCRIT_SHIFT 30
 #define I40E_VF_ATQLEN1_ATQCRIT_MASK I40E_MASK(0x1, I40E_VF_ATQLEN1_ATQCRIT_SHIFT)
 #define I40E_VF_ATQLEN1_ATQENABLE_SHIFT 31
-#define I40E_VF_ATQLEN1_ATQENABLE_MASK I40E_MASK(0x1, I40E_VF_ATQLEN1_ATQENABLE_SHIFT)
+#define I40E_VF_ATQLEN1_ATQENABLE_MASK I40E_MASK(0x1u, I40E_VF_ATQLEN1_ATQENABLE_SHIFT)
 #define I40E_VF_ATQT1 0x00008400 /* Reset: EMPR */
 #define I40E_VF_ATQT1_ATQT_SHIFT 0
 #define I40E_VF_ATQT1_ATQT_MASK I40E_MASK(0x3FF, I40E_VF_ATQT1_ATQT_SHIFT)
-- 
2.21.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
