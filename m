Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 6858175571
	for <lists+intel-wired-lan@lfdr.de>; Thu, 25 Jul 2019 19:24:16 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 1153F8735E;
	Thu, 25 Jul 2019 17:24:15 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 2mVpI-X8tsxA; Thu, 25 Jul 2019 17:24:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id D4A0E8732C;
	Thu, 25 Jul 2019 17:24:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 3E6CC1BF312
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 3A7B62044E
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:24:03 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id DNeDPAHpgQC2 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 25 Jul 2019 17:23:59 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
 by silver.osuosl.org (Postfix) with ESMTPS id AB4C522640
 for <intel-wired-lan@lists.osuosl.org>; Thu, 25 Jul 2019 17:23:58 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 25 Jul 2019 10:23:56 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,307,1559545200"; d="scan'208";a="160973714"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga007.jf.intel.com with ESMTP; 25 Jul 2019 10:23:56 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 25 Jul 2019 01:55:39 -0700
Message-Id: <20190725085541.55104-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
References: <20190725085541.55104-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 v4 13/15] ice: Move VF resources
 definition to SR-IOV specific file
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

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

In order to use some of the VF resources definition in the SR-IOV specific
virtchnl header file, this patch moves applicable code to
ice_virtchnl_pf.h file accordingly... and they should have been defined in
the destination file originally.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h             | 10 ----------
 drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h | 13 +++++++++++++
 2 files changed, 13 insertions(+), 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 36a8ee873ae1..8398dd45a8a2 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -87,16 +87,6 @@ extern const char ice_drv_ver[];
 #define ICE_RES_MISC_VEC_ID	(ICE_RES_VALID_BIT - 1)
 #define ICE_INVAL_Q_INDEX	0xffff
 #define ICE_INVAL_VFID		256
-#define ICE_MAX_VF_COUNT	256
-#define ICE_MAX_QS_PER_VF		256
-#define ICE_MIN_QS_PER_VF		1
-#define ICE_DFLT_QS_PER_VF		4
-#define ICE_NONQ_VECS_VF		1
-#define ICE_MAX_SCATTER_QS_PER_VF	16
-#define ICE_MAX_BASE_QS_PER_VF		16
-#define ICE_MAX_INTR_PER_VF		65
-#define ICE_MIN_INTR_PER_VF		(ICE_MIN_QS_PER_VF + 1)
-#define ICE_DFLT_INTR_PER_VF		(ICE_DFLT_QS_PER_VF + 1)
 
 #define ICE_MAX_RESET_WAIT		20
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
index 79bb47f73879..4d94853f119a 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.h
@@ -26,6 +26,19 @@
 #define ICE_PCI_CIAD_WAIT_COUNT		100
 #define ICE_PCI_CIAD_WAIT_DELAY_US	1
 
+/* VF resources default values and limitation */
+#define ICE_MAX_VF_COUNT		256
+#define ICE_MAX_QS_PER_VF		256
+#define ICE_MIN_QS_PER_VF		1
+#define ICE_DFLT_QS_PER_VF		4
+#define ICE_NONQ_VECS_VF		1
+#define ICE_MAX_SCATTER_QS_PER_VF	16
+#define ICE_MAX_BASE_QS_PER_VF		16
+#define ICE_MAX_INTR_PER_VF		65
+#define ICE_MAX_POLICY_INTR_PER_VF	33
+#define ICE_MIN_INTR_PER_VF		(ICE_MIN_QS_PER_VF + 1)
+#define ICE_DFLT_INTR_PER_VF		(ICE_DFLT_QS_PER_VF + 1)
+
 /* Specific VF states */
 enum ice_vf_states {
 	ICE_VF_STATE_INIT = 0,
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
