Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id C8B8E58E51
	for <lists+intel-wired-lan@lfdr.de>; Fri, 28 Jun 2019 01:08:42 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 8918420421;
	Thu, 27 Jun 2019 23:08:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id v38uaX-ipT38; Thu, 27 Jun 2019 23:08:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 76494226CF;
	Thu, 27 Jun 2019 23:08:40 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 111FA1BF859
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:32 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id BFE3F880D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:31 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id uo73V6XD3j7G for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2019 23:08:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 2E1B68807B
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2019 23:08:27 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 27 Jun 2019 16:08:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,425,1557212400"; d="scan'208";a="156396181"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 27 Jun 2019 16:08:25 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2019 07:40:59 -0700
Message-Id: <20190627144101.24280-13-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
References: <20190627144101.24280-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S23 13/15] ice: Move VF resources
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
index 261714ff2553..eb0efcaf7807 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -92,16 +92,6 @@ extern const char ice_drv_ver[];
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
