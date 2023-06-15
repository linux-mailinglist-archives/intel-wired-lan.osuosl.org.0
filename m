Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A426731966
	for <lists+intel-wired-lan@lfdr.de>; Thu, 15 Jun 2023 14:59:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 266EA41FC2;
	Thu, 15 Jun 2023 12:59:38 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 266EA41FC2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686833978;
	bh=YuL0fjAG5wYe/eCfzvtOfADCKv5Af23sdokRLzEJYvM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=8NqY2B3DVh5qAVDI2a8BsyfakyLsFazrUPGYTeCz6uy/9PxXCm6FPde9VneyBl3zY
	 oYDyAW4UU46nWDE0nrg1HbdsRnt6whRzDdzRt5/XVR3w2ru5QTzO5LgEfcL9rNwg/g
	 HIZEtbd2QJsgLDzy+iFUsv2ShuLyflUkViKs3imV3akgulhE1AlK3y8zOyBaHfCNp3
	 N9FTLavoROtxxs/fpIgzK4Ni/dAMLLRk2t5c6usSd7YMcPfn5Cppat578z9ykfLn9x
	 FGOoF/kvpY0uI0ba7HRlxaWgwMT6f7NTx3q09WyakF2XyozDDG6oxpGrn29d+cQG8D
	 IAQwsgBudDADg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 6IyUD9ppo3MQ; Thu, 15 Jun 2023 12:59:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 85AEB41EF6;
	Thu, 15 Jun 2023 12:59:36 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 85AEB41EF6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 53AF91BF275
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:27 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2D997400D8
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2D997400D8
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id jvvsZE-qp82Q for <intel-wired-lan@lists.osuosl.org>;
 Thu, 15 Jun 2023 12:59:26 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5D178404E9
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5D178404E9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 15 Jun 2023 12:59:26 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="424794820"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="424794820"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 15 Jun 2023 05:59:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10742"; a="825259726"
X-IronPort-AV: E=Sophos;i="6.00,244,1681196400"; d="scan'208";a="825259726"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by fmsmga002.fm.intel.com with ESMTP; 15 Jun 2023 05:59:24 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 15 Jun 2023 14:38:27 +0200
Message-Id: <20230615123830.155927-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
References: <20230615123830.155927-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686833966; x=1718369966;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=NiiWT+BDOFQeSUG4kha3v8eMlHaZiSvv0Mp4zmH8UuM=;
 b=SS2nfhw+CJ8jC/mk55wqyMhVi9SZHRORPCGh8umo/1cVqjKMn0i2bLzE
 n/m+hmPGs7Gilg4xjvvfQEyT0wj2Gyuj7SfxgWnCbPrqxFojcyIffyDxb
 /cfTiLjBp5/zS2lgu6mzJ47DIYr1AiUgSMfmc7WC9tUtbxtE0/dxBblHU
 si4DjPDg3gTjZj6zJZFeODofNchPni7boei0vB/N1VBp5eLoCSlRCjjxS
 FycqsYWUlFpmbKoS3K+gjipiOldnuEtdtDxUhyJTWXxkjwhxmPBNHj8lq
 uMeX/A23K2ZWOMj6RiICGuPh5KkW9wEjwRnnC1b1NrQ6jzEpQqRh4O+uZ
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SS2nfhw+
Subject: [Intel-wired-lan] [PATCH iwl-next v1 1/4] ice: implement num_msix
 field per VF
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
Cc: netdev@vger.kernel.org, przemyslaw.kitszel@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Store the amount of MSI-X per VF instead of storing it in pf struct. It
is used to calculate number of q_vectors (and queues) for VF VSI.

Calculate vector indexes based on this new field.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c      |  2 +-
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 13 +++++++++----
 drivers/net/ethernet/intel/ice/ice_vf_lib.h   |  4 +++-
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  2 +-
 4 files changed, 14 insertions(+), 7 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index e8142bea2eb2..24a0bf403445 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -229,7 +229,7 @@ static void ice_vsi_set_num_qs(struct ice_vsi *vsi)
 		 * of queues vectors, subtract 1 (ICE_NONQ_VECS_VF) from the
 		 * original vector count
 		 */
-		vsi->num_q_vectors = pf->vfs.num_msix_per - ICE_NONQ_VECS_VF;
+		vsi->num_q_vectors = vf->num_msix - ICE_NONQ_VECS_VF;
 		break;
 	case ICE_VSI_CTRL:
 		vsi->alloc_txq = 1;
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 2ea6d24977a6..3137e772a64b 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -64,7 +64,7 @@ static void ice_free_vf_res(struct ice_vf *vf)
 		vf->num_mac = 0;
 	}
 
-	last_vector_idx = vf->first_vector_idx + pf->vfs.num_msix_per - 1;
+	last_vector_idx = vf->first_vector_idx + vf->num_msix - 1;
 
 	/* clear VF MDD event information */
 	memset(&vf->mdd_tx_events, 0, sizeof(vf->mdd_tx_events));
@@ -102,7 +102,7 @@ static void ice_dis_vf_mappings(struct ice_vf *vf)
 	wr32(hw, VPINT_ALLOC_PCI(vf->vf_id), 0);
 
 	first = vf->first_vector_idx;
-	last = first + pf->vfs.num_msix_per - 1;
+	last = first + vf->num_msix - 1;
 	for (v = first; v <= last; v++) {
 		u32 reg;
 
@@ -280,12 +280,12 @@ static void ice_ena_vf_msix_mappings(struct ice_vf *vf)
 
 	hw = &pf->hw;
 	pf_based_first_msix = vf->first_vector_idx;
-	pf_based_last_msix = (pf_based_first_msix + pf->vfs.num_msix_per) - 1;
+	pf_based_last_msix = (pf_based_first_msix + vf->num_msix) - 1;
 
 	device_based_first_msix = pf_based_first_msix +
 		pf->hw.func_caps.common_cap.msix_vector_first_id;
 	device_based_last_msix =
-		(device_based_first_msix + pf->vfs.num_msix_per) - 1;
+		(device_based_first_msix + vf->num_msix) - 1;
 	device_based_vf_id = vf->vf_id + hw->func_caps.vf_base_id;
 
 	reg = (((device_based_first_msix << VPINT_ALLOC_FIRST_S) &
@@ -814,6 +814,11 @@ static int ice_create_vf_entries(struct ice_pf *pf, u16 num_vfs)
 
 		vf->vf_sw_id = pf->first_sw;
 
+		/* set default number of MSI-X */
+		vf->num_msix = pf->vfs.num_msix_per;
+		vf->num_vf_qs = pf->vfs.num_qps_per;
+		ice_vc_set_default_allowlist(vf);
+
 		hash_add_rcu(vfs->table, &vf->entry, vf_id);
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_vf_lib.h b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
index 67172fdd9bc2..4dbfb7e26bfa 100644
--- a/drivers/net/ethernet/intel/ice/ice_vf_lib.h
+++ b/drivers/net/ethernet/intel/ice/ice_vf_lib.h
@@ -72,7 +72,7 @@ struct ice_vfs {
 	struct mutex table_lock;	/* Lock for protecting the hash table */
 	u16 num_supported;		/* max supported VFs on this PF */
 	u16 num_qps_per;		/* number of queue pairs per VF */
-	u16 num_msix_per;		/* number of MSI-X vectors per VF */
+	u16 num_msix_per;		/* default MSI-X vectors per VF */
 	unsigned long last_printed_mdd_jiffies;	/* MDD message rate limit */
 };
 
@@ -133,6 +133,8 @@ struct ice_vf {
 
 	/* devlink port data */
 	struct devlink_port devlink_port;
+
+	u16 num_msix;			/* num of MSI-X configured on this VF */
 };
 
 /* Flags for controlling behavior of ice_reset_vf */
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index efbc2968a7bf..37b588774ac1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -498,7 +498,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	vfres->num_vsis = 1;
 	/* Tx and Rx queue are equal for VF */
 	vfres->num_queue_pairs = vsi->num_txq;
-	vfres->max_vectors = vf->pf->vfs.num_msix_per;
+	vfres->max_vectors = vf->num_msix;
 	vfres->rss_key_size = ICE_VSIQF_HKEY_ARRAY_SIZE;
 	vfres->rss_lut_size = ICE_VSIQF_HLUT_ARRAY_SIZE;
 	vfres->max_mtu = ice_vc_get_max_frame_size(vf);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
