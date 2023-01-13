Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 84BBB66A60D
	for <lists+intel-wired-lan@lfdr.de>; Fri, 13 Jan 2023 23:38:11 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 1452E415CC;
	Fri, 13 Jan 2023 22:38:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 1452E415CC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673649490;
	bh=35eKFithxhDYpQ8T+PiLUpxvrVdg/4mEYBr05JaxBJE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=WYfUq4Lo1bIBtyuuOciRuZEh29y+Q3vm3IpS1Of8wpeIX6FXhkrR8yJ/2tcIiMKne
	 nRoEsnaLQNxyQEcrkgCpLFYhxuWztwuPHxuS+f2Rtx08jzMxwTa5zhOZeic5orgqK1
	 qLiY/fU2ruv7OtfXJPQ6C9ron71XKpIYRYwvzR2M2PfTzO/pMZeWW+wbxpnB7lXe5l
	 EO6OqDPYBu7XyKOmnHWdSlXZImRNctLhj+2v6leFPoQT3OtySVUCOov1FylFG4XafW
	 F9ObfeR+xPCt2xL0RogXHhyXkPtJHC/607mhBZrvonOAOTwnaTX1y7KZeDx8TXpxCc
	 G+dRA8YNpUgiQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5QcWCnAZzJD7; Fri, 13 Jan 2023 22:38:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 100F7404F1;
	Fri, 13 Jan 2023 22:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 100F7404F1
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 2CE8E1BF399
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4737941B61
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:46 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4737941B61
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 03exjX3cYnen for <intel-wired-lan@lists.osuosl.org>;
 Fri, 13 Jan 2023 22:37:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 675E441B5B
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 675E441B5B
 for <intel-wired-lan@lists.osuosl.org>; Fri, 13 Jan 2023 22:37:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="351354058"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="351354058"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:45 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10589"; a="726859776"
X-IronPort-AV: E=Sophos;i="5.97,215,1669104000"; d="scan'208";a="726859776"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga004-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jan 2023 14:37:44 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Fri, 13 Jan 2023 14:37:29 -0800
Message-Id: <20230113223735.2514364-8-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.38.1.420.g319605f8f00e
In-Reply-To: <20230113223735.2514364-1-jacob.e.keller@intel.com>
References: <20230113223735.2514364-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673649465; x=1705185465;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TT1MhXFCmbGtFh7vbCvkBIQgWd9UNQB5BVY/8qe7wt8=;
 b=lxfTqWM0F5oLxDbeLWJxwPOk84LM2tRlVDgANSYJZHmxmTwnKK2oHcjh
 rElco4iSK7trZCrTxndSrpV6Osn1dACONVZYWZmN60SKujQPb7LgopQiq
 yaSoL9/Nqteh4S7ddHKySwTnO0eui8zn4N1EzEE+KEeLXPrRYM4DJKDKg
 Z0bx9zrI9MT+n2m+6bi47BuiEKzXMoYpn92DoxoEeDxeiUQXO1pSNfDD1
 92V1rIQxDDIeLuxFGJdEBJcDksWysm9BroMW7u0WNjvYmZlSOo0/yThZD
 QjeDFk0Kl4taD9qo1Ijohs3pdnSsMijK7UW8H5Eb7ngyIrbsMsp4kMnVh
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lxfTqWM0
Subject: [Intel-wired-lan] [PATCH net-next 07/13] ice: Pull common tasks
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
 drivers/net/ethernet/intel/ice/ice_sriov.c  |  2 --
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 19 +++++++++++++++++--
 2 files changed, 17 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index c5129923001f..34d52e1b6f05 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -811,8 +811,6 @@ static int ice_sriov_vsi_rebuild(struct ice_vf *vf)
  */
 static void ice_sriov_post_vsi_rebuild(struct ice_vf *vf)
 {
-	ice_vf_rebuild_host_cfg(vf);
-	ice_vf_set_initialized(vf);
 	ice_ena_vf_mappings(vf);
 	wr32(&vf->pf->hw, VFGEN_RSTAT(vf->vf_id), VIRTCHNL_VFR_VFACTIVE);
 }
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 2ad905442ba8..e64f2afe0850 100644
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
2.38.1.420.g319605f8f00e

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
