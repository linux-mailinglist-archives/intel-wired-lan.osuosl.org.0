Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 82A8F4C0611
	for <lists+intel-wired-lan@lfdr.de>; Wed, 23 Feb 2022 01:28:22 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 343D14061F;
	Wed, 23 Feb 2022 00:28:21 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id IykoP8Gezaw4; Wed, 23 Feb 2022 00:28:20 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id C25CE405EF;
	Wed, 23 Feb 2022 00:28:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 2ED7D1BF9C8
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 5EDC74026A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:22 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 09dzDJUt5eIt for <intel-wired-lan@lists.osuosl.org>;
 Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9333240608
 for <intel-wired-lan@lists.osuosl.org>; Wed, 23 Feb 2022 00:27:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1645576040; x=1677112040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=x0tjlXotgGUN/yvjsSs8sY/lk11GK8FXZ9dqJQO40Ms=;
 b=U6EIpDWXQe6MoaMDOIwO7ibZ2BJyEs1K12jo8nzH8oiq9LxIWrQt4ceQ
 Oe3OtyQ4rU15ZSKKY0aSAvqWpmPc2CV804kMo7Vtzdps2VJ1y/ECode1+
 x6q1nut7X3C/1zamCnAQnwdjNlicMNMkvJ5IxbP+C0mrEmW/HeK/I0Ery
 2IO0vP4DKrwpiO/WbV7SWmScme245B3GDPfj8nwFLYB/Ir8mJf1bI/f4i
 GJhKaXZHTeyIc1g+JMl39ZqHGo5YYPAQiCO2HZwYN4RA7joKY5qCrYlOF
 PBtPyAmlLExTA5Xjp4XXh7EzQfjnRrPtg6TP4oUHahCYA3fHfmgduZEAF A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10266"; a="232468970"
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="232468970"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:19 -0800
X-IronPort-AV: E=Sophos;i="5.88,389,1635231600"; d="scan'208";a="505728011"
Received: from jekeller-desk.amr.corp.intel.com ([10.166.241.10])
 by orsmga002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2022 16:27:18 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 22 Feb 2022 16:26:53 -0800
Message-Id: <20220223002712.2771809-7-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.35.1.129.gb80121027d12
In-Reply-To: <20220223002712.2771809-1-jacob.e.keller@intel.com>
References: <20220223002712.2771809-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [net-next PATCH 06/25] ice: rename
 ICE_MAX_VF_COUNT to avoid confusion
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

The ICE_MAX_VF_COUNT field is defined in ice_sriov.h. This count is true
for SR-IOV but will not be true for all VF implementations, such as when
the ice driver supports Scalable IOV.

Rename this definition to clearly indicate ICE_MAX_SRIOV_VFS.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c  | 2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c | 8 ++++----
 drivers/net/ethernet/intel/ice/ice_sriov.h | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 133860071174..a628fa9f1442 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -3868,7 +3868,7 @@ static void ice_set_pf_caps(struct ice_pf *pf)
 	if (func_caps->common_cap.sr_iov_1_1) {
 		set_bit(ICE_FLAG_SRIOV_CAPABLE, pf->flags);
 		pf->vfs.num_supported = min_t(int, func_caps->num_allocd_vfs,
-					      ICE_MAX_VF_COUNT);
+					      ICE_MAX_SRIOV_VFS);
 	}
 	clear_bit(ICE_FLAG_RSS_ENA, pf->flags);
 	if (func_caps->common_cap.rss_table_size)
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 205d7e5003d8..7cd910bb7a7a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -661,7 +661,7 @@ void ice_free_vfs(struct ice_pf *pf)
 
 		/* clear malicious info since the VF is getting released */
 		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-					ICE_MAX_VF_COUNT, vf->vf_id))
+					ICE_MAX_SRIOV_VFS, vf->vf_id))
 			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
 				vf->vf_id);
 
@@ -1591,7 +1591,7 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	/* clear all malicious info if the VFs are getting reset */
 	ice_for_each_vf(pf, bkt, vf)
 		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-					ICE_MAX_VF_COUNT, vf->vf_id))
+					ICE_MAX_SRIOV_VFS, vf->vf_id))
 			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
 				vf->vf_id);
 
@@ -1805,7 +1805,7 @@ bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 
 	/* if the VF has been reset allow it to come up again */
 	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-				ICE_MAX_VF_COUNT, vf->vf_id))
+				ICE_MAX_SRIOV_VFS, vf->vf_id))
 		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n", i);
 
 	return true;
@@ -6624,7 +6624,7 @@ ice_is_malicious_vf(struct ice_pf *pf, struct ice_rq_event_info *event,
 		 * know about it, then let them know now
 		 */
 		status = ice_mbx_report_malvf(&pf->hw, pf->vfs.malvfs,
-					      ICE_MAX_VF_COUNT, vf_id,
+					      ICE_MAX_SRIOV_VFS, vf_id,
 					      &report_vf);
 		if (status)
 			dev_dbg(dev, "Error reporting malicious VF\n");
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.h b/drivers/net/ethernet/intel/ice/ice_sriov.h
index 525e3f0819e8..28a544c09894 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.h
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.h
@@ -22,7 +22,7 @@
 #define ICE_PCI_CIAD_WAIT_DELAY_US	1
 
 /* VF resource constraints */
-#define ICE_MAX_VF_COUNT		256
+#define ICE_MAX_SRIOV_VFS		256
 #define ICE_MIN_QS_PER_VF		1
 #define ICE_NONQ_VECS_VF		1
 #define ICE_MAX_RSS_QS_PER_VF		16
@@ -147,7 +147,7 @@ struct ice_vfs {
 	u16 num_qps_per;		/* number of queue pairs per VF */
 	u16 num_msix_per;		/* number of MSi-X vectors per VF */
 	unsigned long last_printed_mdd_jiffies;	/* MDD message rate limit */
-	DECLARE_BITMAP(malvfs, ICE_MAX_VF_COUNT); /* malicious VF indicator */
+	DECLARE_BITMAP(malvfs, ICE_MAX_SRIOV_VFS); /* malicious VF indicator */
 };
 
 /* VF information structure */
-- 
2.35.1.129.gb80121027d12

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
