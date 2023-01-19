Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 3323E672DF6
	for <lists+intel-wired-lan@lfdr.de>; Thu, 19 Jan 2023 02:17:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B578D610C0;
	Thu, 19 Jan 2023 01:17:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B578D610C0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1674091065;
	bh=EXxQ7QqTrD9alSVJ4OKdZ4hhVdszeY6JHGrTxTGmUoQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=DnnRquBjgk7CbmJZ4uY6uXfjW6KpernWQjKPlKDHHrrpdvnys26dGFzHLqXtPmp06
	 AHeCfMahRgFaclqXBu5iEYjjPQwwVZl45y+bdzwgekUOQvydvjCxizIA8sI85G030l
	 E4NJ/WBvicXXnAmJk3QfdhQPC/0oZPs2Bm16Xk5EDv/OqMQ9ohC2cRnqOMTMixpPmp
	 FEDVvis4z7Njxn0qjZVyQ53FKW4TFnG1sG6hqbaSnTlMmeo5MOvrELWwf7KU0J3NNv
	 bQCaXO8WzMobsknnL0p/X3p3Yntqwdc3OxisnRkWoLOSazit79JA5JxJjODPXciH/h
	 gozj9ci4BoZrQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 86PJDQjst6ka; Thu, 19 Jan 2023 01:17:44 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9F38C6107E;
	Thu, 19 Jan 2023 01:17:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9F38C6107E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8AED51BF95F
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4E65341922
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4E65341922
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 0Bq6M2TfOoL6 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 19 Jan 2023 01:17:06 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 23CC241923
Received: from mga12.intel.com (mga12.intel.com [192.55.52.136])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 23CC241923
 for <intel-wired-lan@lists.osuosl.org>; Thu, 19 Jan 2023 01:17:05 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="304840727"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="304840727"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by fmsmga106.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:03 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10594"; a="783881876"
X-IronPort-AV: E=Sophos;i="5.97,226,1669104000"; d="scan'208";a="783881876"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Jan 2023 17:17:02 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 18 Jan 2023 17:16:47 -0800
Message-Id: <20230119011653.311675-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230119011653.311675-1-jacob.e.keller@intel.com>
References: <20230119011653.311675-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1674091025; x=1705627025;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gVDDRXYe6VILOMv9qusLAC5k/hg0VQ8iO06+bWLABLY=;
 b=IwdFyn4rkrMYHJP/3Y/yX3Qs+I5gMP19hA0o7Jwws+QKWKiJcymmFjim
 C4TxtGe6VtTNHvbvSDnF8Rmlqhf1+68DsteWQ7/fVcAA8YNR6WvMPoFx9
 33AIB7dltvEbPebvRQS3oBgPk1yesHilOHQU8Qo6nL80XZ3v/0XKthBGw
 Fg4L2PN0xO/fJcpcunBu8SHJqWdVDsRurptZG3kbfORYIpdNaPLH+KON6
 eTL2w693nU0ivq3B3N1OnBpKr50KYDuVDy2K5QYoWc1kwMOtafQBxRtoM
 hJEZ/8BadZcC03bPqjrY2C28ctPSSndUjF41xiVJi8/1YVj3qTw/YLenP
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IwdFyn4r
Subject: [Intel-wired-lan] [PATCH net-next v2 07/13] ice: Pull common tasks
 into ice_vf_post_vsi_rebuild
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The Single Root IOV implementation of .post_vsi_rebuild performs some tasks
that will ultimately need to be shared with the Scalable IOV implementation
such as rebuilding the host configuration.

Refactor by introducing a new wrapper function, ice_vf_post_vsi_rebuild
which performs the tasks that will be shared between SR-IOV and Scalable
IOV. Move the ice_vf_rebuild_host_cfg and ice_vf_set_initialized calls into
this wrapper. Then call the implementation specific post_vsi_rebuild
handler afterwards.

This ensures that we will properly re-initialize filters and expected
settings for both SR-IOV and Scalable IOV.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
No Changes since v1.

 drivers/net/ethernet/intel/ice/ice_sriov.c  |  2 --
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 19 +++++++++++++++++--
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index de20e50623d7..6ff29be974c5 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -816,8 +816,6 @@ static int ice_sriov_vsi_rebuild(struct ice_vf *vf)
  */
 static void ice_sriov_post_vsi_rebuild(struct ice_vf *vf)
 {
-	ice_vf_rebuild_host_cfg(vf);
-	ice_vf_set_initialized(vf);
 	ice_ena_vf_mappings(vf);
 	wr32(&vf->pf->hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 5fecbec55f54..624c7de8b205 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -270,6 +270,21 @@ static int ice_vf_rebuild_vsi(struct ice_vf *vf)
 	return 0;
 }
 
+/**
+ * ice_vf_post_vsi_rebuild - Reset tasks that occur after VSI rebuild
+ * @vf: the VF being reset
+ *
+ * Perform reset tasks which must occur after the VSI has been re-created or
+ * rebuilt during a VF reset.
+ */
+static void ice_vf_post_vsi_rebuild(struct ice_vf *vf)
+{
+	ice_vf_rebuild_host_cfg(vf);
+	ice_vf_set_initialized(vf);
+
+	vf->vf_ops->post_vsi_rebuild(vf);
+}
+
 /**
  * ice_is_any_vf_in_unicast_promisc - check if any VF(s)
  * are in unicast promiscuous mode
@@ -495,7 +510,7 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 
 		ice_vf_pre_vsi_rebuild(vf);
 		ice_vf_rebuild_vsi(vf);
-		vf->vf_ops->post_vsi_rebuild(vf);
+		ice_vf_post_vsi_rebuild(vf);
 
 		mutex_unlock(&vf->cfg_lock);
 	}
@@ -646,7 +661,7 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 		goto out_unlock;
 	}
 
-	vf->vf_ops->post_vsi_rebuild(vf);
+	ice_vf_post_vsi_rebuild(vf);
 	vsi = ice_get_vf_vsi(vf);
 	if (WARN_ON(!vsi)) {
 		err = -EINVAL;
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
