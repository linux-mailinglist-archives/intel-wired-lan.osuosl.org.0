Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C1BF169F9BF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:21 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5254841795;
	Wed, 22 Feb 2023 17:16:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5254841795
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086180;
	bh=KxSCfxzqgrEBqSz8QzzdEGHhWBjCcdM6NlQfzbRJ6ng=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JYtoH73tbGtPDBS0Ec6ij2Y0DCcrpERB+RAcvG+c5UTzyH1iSwgm2n7yPi6e7qSIK
	 0sgCyLDKvYaMhm7JznrNsPrmnH8xNA55J63p+6GtDgnEEa9b8NBpkJIHKheRlPkrr6
	 Ae3gTZZgn9ooRnpNZZnPkKTJavBR/iTmuthrIQKNuqkB2OClx/nFgPIE4UldwC3rhJ
	 fXaQp5kv4wgsgfv4ZNQst4gwcWMBXzQKe4bcQhLIX0iUmEx+/7QIF802IGcB6yw0PB
	 Da1C+h47lD90L/A+W9+xZbZ/5i3Fjx/DGbU8iaf2vRzZFA0H2nPhsNE1Aior+/Fi8f
	 MZ6ceI/Jvx/ow==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id AsSnKjhrVz16; Wed, 22 Feb 2023 17:16:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5005341717;
	Wed, 22 Feb 2023 17:16:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5005341717
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 1E3841BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:52 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 89D574173A
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 89D574173A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id c_3vN2xa8Ger for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:49 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E19114172E
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E19114172E
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466651"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466651"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980050"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980050"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:11 -0800
Message-Id: <20230222170920.1629293-6-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085788; x=1708621788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=dk59IuB1Pvb3Af8YJxuXRNJqLbYqYTqjCVLjYjShFQs=;
 b=gVq4WBe1yEZI1EIQ17EmjYvnh0PzEtFVpXCmSaZBPCAGgdjIuJ9/bti9
 6EN6WtXRnpTaTR1W5YE7ebJVzy+HIQFXPoIHqJ6xiciDXl/Q9UsCtJqfW
 rXCgeZboQ2KCnMC+W8f1r4bauxG0FY4JZJsErw39YVQKNT/S45Yhmp6wz
 NQ5mY0fJOlJkJhdyAWDkp9lE45Lbzkpu2cgEnQ2GnWvgK7eDHl8J/M9iT
 Mg6KZ8Etz4Y9thkca+g5VGgKYXPYlxT0EKLN3vQ3ib6g69LTekf2wFGqd
 rD4SzBwiWAmoZoDIAeX723eZrOch2osSTvicwrPiOK9kn4suyIaoQVTyc
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gVq4WBe1
Subject: [Intel-wired-lan] [intel-next PATCH 05/14] ice: remove
 ice_mbx_deinit_snapshot
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
Cc: Anthony Nguyen <anthony.l.nguyen@intel.com>,
 Jesse Brandeburg <jesse.brandeburg@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The ice_mbx_deinit_snapshot function's only remaining job is to clear the
previous snapshot data. This snapshot data is initialized when SR-IOV adds
VFs, so it is not necessary to clear this data when removing VFs. Since no
allocation occurs we no longer need to free anything and we can safely
remove this function.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  |  5 +----
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 14 --------------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.h |  1 -
 3 files changed, 1 insertion(+), 19 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 8820f269bfdf..b65025b51526 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -1014,7 +1014,6 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 	if (!num_vfs) {
 		if (!pci_vfs_assigned(pdev)) {
 			ice_free_vfs(pf);
-			ice_mbx_deinit_snapshot(&pf->hw);
 			if (pf->lag)
 				ice_enable_lag(pf->lag);
 			return 0;
@@ -1027,10 +1026,8 @@ int ice_sriov_configure(struct pci_dev *pdev, int num_vfs)
 	ice_mbx_init_snapshot(&pf->hw);
 
 	err = ice_pci_sriov_ena(pf, num_vfs);
-	if (err) {
-		ice_mbx_deinit_snapshot(&pf->hw);
+	if (err)
 		return err;
-	}
 
 	if (pf->lag)
 		ice_disable_lag(pf->lag);
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index 4bfed5fb3a88..1f332ab43b00 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -399,17 +399,3 @@ void ice_mbx_init_snapshot(struct ice_hw *hw)
 	INIT_LIST_HEAD(&snap->mbx_vf);
 	ice_mbx_reset_snapshot(snap);
 }
-
-/**
- * ice_mbx_deinit_snapshot - Free mailbox snapshot structure
- * @hw: pointer to the hardware structure
- *
- * Clear the mailbox snapshot structure and free the VF counter array.
- */
-void ice_mbx_deinit_snapshot(struct ice_hw *hw)
-{
-	struct ice_mbx_snapshot *snap = &hw->mbx_snapshot;
-
-	/* Clear mbx_buf in the mailbox snaphot structure */
-	memset(&snap->mbx_buf, 0, sizeof(snap->mbx_buf));
-}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
index a6d42f467dc5..e4bdd93ccef1 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
@@ -25,7 +25,6 @@ ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data *mbx_data,
 void ice_mbx_clear_malvf(struct ice_mbx_vf_info *vf_info);
 void ice_mbx_init_vf_info(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info);
 void ice_mbx_init_snapshot(struct ice_hw *hw);
-void ice_mbx_deinit_snapshot(struct ice_hw *hw);
 int
 ice_mbx_report_malvf(struct ice_hw *hw, struct ice_mbx_vf_info *vf_info,
 		     bool *report_malvf);
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
