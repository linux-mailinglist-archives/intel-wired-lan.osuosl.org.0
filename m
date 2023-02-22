Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F0E6969F9BD
	for <lists+intel-wired-lan@lfdr.de>; Wed, 22 Feb 2023 18:16:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 83A33417C7;
	Wed, 22 Feb 2023 17:16:12 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 83A33417C7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1677086172;
	bh=2Y1PpLY8Oh12NgF2Ns9xwxuDHJe2kIWZJwJoFS27kOE=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=qpeQcdNZUjbwFGIcFaVVWtuQXDzyPeH5VmpACj1BczM5PVqMmr/BrTtmw1KQQZ6ER
	 iW8VZu40VM0RmaNhAOB1cvcRKjO4Kgz3UIBPXh7vJQaC2uIQkDdrOZNLucmKuWufnQ
	 Oq3pF1523V2hoOAgrBOpYjBdZWrNyS6GRmiTksgipVJkDbE7y/2FR+jBUtE3tLarti
	 YWhmp0Yz/FTEKudSccfwpjNEKMhtYAIQhCbECf5L8zcuVJeS7p3JSquHvBrnFLWTyB
	 Sk0LE8mogcxj6SW5lDtB/WOudBjPu9GwJHZbrhRlBM3sf6oA4Vc7yXFP4eVgqBEL6P
	 l8NS2//C/1ZHA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Mapl4r1IL9Fw; Wed, 22 Feb 2023 17:16:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6202841758;
	Wed, 22 Feb 2023 17:16:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6202841758
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 0DDD91BF364
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:51 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id E11984170B
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E11984170B
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7B9Cr8g4K2A4 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Feb 2023 17:09:48 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E3B9341733
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E3B9341733
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Feb 2023 17:09:47 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="360466647"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="360466647"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:25 -0800
X-IronPort-AV: E=McAfee;i="6500,9779,10629"; a="735980040"
X-IronPort-AV: E=Sophos;i="5.97,319,1669104000"; d="scan'208";a="735980040"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.1])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Feb 2023 09:09:24 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 22 Feb 2023 09:09:08 -0800
Message-Id: <20230222170920.1629293-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.39.1.405.gd4c25cc71f83
In-Reply-To: <20230222170920.1629293-1-jacob.e.keller@intel.com>
References: <20230222170920.1629293-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1677085788; x=1708621788;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=iYR38KqutWxtr/HzhEQGFlOiRko1iBOk1o5G8AdT7kw=;
 b=O5vTucGRaDs0M+cEmymq/9VOA1kTcMxkVUvix8f4Sc9yFVnb3UuuApyJ
 T4Dh7adtXDVWzurptYS8fjU2rueezGDkfP6dcOcH24NsnAH6pZplZhKeI
 +mwJ/Z5XhDuDx+MUqiUw7cpkeX+lsl/xHufuca/jrDbUO4fm6gj1Zn4Ud
 R9MJSPl8hkXDUYJ1XUJRKVBhjMaGC8aTvE2H0O4E3lhC77MFGYRSLWXqQ
 /mdtn16AYA2OiNkGLNl+WyYWz1NxxiL7lgjR+uH7qoTogA8he6CiVc7KA
 KQXEgcCYev0U+dru1k+1EVNwwJkK/NEKr+K28BCzRLTAGhv3FhS5lDpvR
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=O5vTucGR
Subject: [Intel-wired-lan] [intel-next PATCH 02/14] ice: convert
 ice_mbx_clear_malvf to void and use WARN
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

The ice_mbx_clear_malvf function checks for a few error conditions before
clearing the appropriate data. These error conditions are really warnings
that should never occur in a properly initialized driver. Every caller of
ice_mbx_clear_malvf just prints a dev_dbg message on failure which will
generally be ignored.

Convert this function to void and switch the error return values to
WARN_ON. This will make any potentially misconfiguration more visible and
makes future refactors that involve changing how we store the malicious VF
data easier.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c  |  6 ++----
 drivers/net/ethernet/intel/ice/ice_vf_lib.c | 12 ++++--------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.c | 16 +++++++---------
 drivers/net/ethernet/intel/ice/ice_vf_mbx.h |  2 +-
 4 files changed, 14 insertions(+), 22 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 96a64c25e2ef..7107c279752a 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -204,10 +204,8 @@ void ice_free_vfs(struct ice_pf *pf)
 		}
 
 		/* clear malicious info since the VF is getting released */
-		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-					ICE_MAX_SRIOV_VFS, vf->vf_id))
-			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
-				vf->vf_id);
+		ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
+				    ICE_MAX_SRIOV_VFS, vf->vf_id);
 
 		mutex_unlock(&vf->cfg_lock);
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.c b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
index 0e57bd1b85fd..116b43588389 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.c
@@ -496,10 +496,8 @@ void ice_reset_all_vfs(struct ice_pf *pf)
 
 	/* clear all malicious info if the VFs are getting reset */
 	ice_for_each_vf(pf, bkt, vf)
-		if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-					ICE_MAX_SRIOV_VFS, vf->vf_id))
-			dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
-				vf->vf_id);
+		ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
+				    ICE_MAX_SRIOV_VFS, vf->vf_id);
 
 	/* If VFs have been disabled, there is no need to reset */
 	if (test_and_set_bit(ICE_VF_DIS, pf->state)) {
@@ -705,10 +703,8 @@ int ice_reset_vf(struct ice_vf *vf, u32 flags)
 	ice_eswitch_replay_vf_mac_rule(vf);
 
 	/* if the VF has been reset allow it to come up again */
-	if (ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
-				ICE_MAX_SRIOV_VFS, vf->vf_id))
-		dev_dbg(dev, "failed to clear malicious VF state for VF %u\n",
-			vf->vf_id);
+	ice_mbx_clear_malvf(&hw->mbx_snapshot, pf->vfs.malvfs,
+			    ICE_MAX_SRIOV_VFS, vf->vf_id);
 
 out_unlock:
 	if (flags & ICE_VF_RESET_LOCK)
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
index 2fe9a9504914..9f6acfeb0fc6 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.c
@@ -392,19 +392,19 @@ ice_mbx_report_malvf(struct ice_hw *hw, unsigned long *all_malvfs,
  * that the new VF loaded is not considered malicious before going
  * through the overflow detection algorithm.
  */
-int
+void
 ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
 		    u16 bitmap_len, u16 vf_id)
 {
-	if (!snap || !all_malvfs)
-		return -EINVAL;
+	if (WARN_ON(!snap || !all_malvfs))
+		return;
 
-	if (bitmap_len < snap->mbx_vf.vfcntr_len)
-		return -EINVAL;
+	if (WARN_ON(bitmap_len < snap->mbx_vf.vfcntr_len))
+		return;
 
 	/* Ensure VF ID value is not larger than bitmap or VF counter length */
-	if (vf_id >= bitmap_len || vf_id >= snap->mbx_vf.vfcntr_len)
-		return -EIO;
+	if (WARN_ON(vf_id >= bitmap_len || vf_id >= snap->mbx_vf.vfcntr_len))
+		return;
 
 	/* Clear VF ID bit in the bitmap tracking malicious VFs attached to PF */
 	clear_bit(vf_id, all_malvfs);
@@ -416,8 +416,6 @@ ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
 	 * values in the mailbox overflow detection algorithm.
 	 */
 	snap->mbx_vf.vf_cntr[vf_id] = 0;
-
-	return 0;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
index 582716e6d5f9..be593b951642 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_mbx.h
@@ -22,7 +22,7 @@ u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed);
 int
 ice_mbx_vf_state_handler(struct ice_hw *hw, struct ice_mbx_data *mbx_data,
 			 u16 vf_id, bool *is_mal_vf);
-int
+void
 ice_mbx_clear_malvf(struct ice_mbx_snapshot *snap, unsigned long *all_malvfs,
 		    u16 bitmap_len, u16 vf_id);
 int ice_mbx_init_snapshot(struct ice_hw *hw, u16 vf_count);
-- 
2.39.1.405.gd4c25cc71f83

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
