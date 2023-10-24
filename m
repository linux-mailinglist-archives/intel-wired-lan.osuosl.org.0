Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id A39BF7D543C
	for <lists+intel-wired-lan@lfdr.de>; Tue, 24 Oct 2023 16:45:31 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 34AB54EE25;
	Tue, 24 Oct 2023 14:45:30 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 34AB54EE25
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1698158730;
	bh=LEkZcFDiIbpGieMXceGzzjBnQC5Tn5WYLapjrlNXrwU=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=c66Fnjh3QwaZvGjdKm8ltXSegBnuatk/spJMQXj/iqaVK4nZto3if1F+pw2SefPo+
	 x5YZHAxW8PY0gLMHBRelAx82yR6PI7WXHN1nl4fh+F1cgGdhib93VN74/vxpwF3qCu
	 Xp/PZSAa/M6kcJxfuf74b3rFsrx+wpai5pIpfWdd+eCon7r4vd23V2T98di2WRQzjA
	 Y/ODT4PHpFuVIqtLSM7cZTSYReWVkyo7bUvNuVRo7roOGoAWq1SQAsSUPEo7CVCa4N
	 osrnNOguCZqlRPTaWcMlUDGCogy7dUQqBUZXzu4I+j9lLjghM9xSyMpag+8IwafB4R
	 ZHnZ5G/Qgbg0g==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zemYcUhYmQXu; Tue, 24 Oct 2023 14:45:29 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F1AC54EDC0;
	Tue, 24 Oct 2023 14:45:28 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F1AC54EDC0
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 6485F1BF2C4
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 14:45:24 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 3BD5E846FE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 14:45:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3BD5E846FE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id MlOpfGygTqu7 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 24 Oct 2023 14:45:23 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.7])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 4B2E6846FD
 for <intel-wired-lan@lists.osuosl.org>; Tue, 24 Oct 2023 14:45:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 4B2E6846FD
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="8624654"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; 
   d="scan'208";a="8624654"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by fmvoesa101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Oct 2023 07:45:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10873"; a="758495717"
X-IronPort-AV: E=Sophos;i="6.03,248,1694761200"; d="scan'208";a="758495717"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga002.jf.intel.com with ESMTP; 24 Oct 2023 07:45:19 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 24 Oct 2023 16:20:10 +0200
Message-ID: <20231024142010.175592-1-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1698158723; x=1729694723;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=uikVPsf4VnPWDd3+XJU1LuQp8HEviAEs9MF9PJcjl4w=;
 b=f0hE2GUsjyOmUUTpJiPzEOLSBqjtxIKM8ucM0nQNp6WRroPcpDAiNoey
 SkwQGIoUtKqhs3dnNy+Vt3hzlMAkKn5Fh44tihVPOcwPDNfOQoRdPiKjT
 bjtlV4jEq7LTV2ni8oJX56wQFSyQ385EdloFmDrBF4nLIUjvcOLJ9CLFq
 ellLQb7SsIpKu74nAm1wuUUMAFK9Y0bKAAUvVaXQlUr64t2gF4IgVpZdW
 f2bJ0hKbZ35qxZ7KbDucBAsXXM407fZm8nnzta5fZAiLQ79IkppWbfD4J
 uySzrZ393XXuAwIdPNgwpNNHqldMwz71HD08hP/+WkvnJXA5jPPyosUaj
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=f0hE2GUs
Subject: [Intel-wired-lan] [PATCH iwl-next v1] ice: change vfs.num_msix_per
 to vf->num_msix
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
Cc: netdev@vger.kernel.org, yahui.cao@intel.com, marcin.szycik@linux.intel.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

vfs::num_msix_per should be only used as default value for
vf->num_msix. For other use cases vf->num_msix should be used, as VF can
have different MSI-X amount values.

Fix incorrect register index calculation. vfs::num_msix_per and
pf->sriov_base_vector shouldn't be used after implementation of changing
MSI-X amount on VFs. Instead vf->first_vector_idx should be used, as it
is storing value for first irq index.

Fixes: fe1c5ca2fe76 ("ice: implement num_msix field per VF")
Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_sriov.c    | 7 +------
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 5 ++---
 2 files changed, 3 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index 2a5e6616cc0a..e1494f24f661 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -374,16 +374,11 @@ static void ice_ena_vf_mappings(struct ice_vf *vf)
  */
 int ice_calc_vf_reg_idx(struct ice_vf *vf, struct ice_q_vector *q_vector)
 {
-	struct ice_pf *pf;
-
 	if (!vf || !q_vector)
 		return -EINVAL;
 
-	pf = vf->pf;
-
 	/* always add one to account for the OICR being the first MSIX */
-	return pf->sriov_base_vector + pf->vfs.num_msix_per * vf->vf_id +
-		q_vector->v_idx + 1;
+	return vf->first_vector_idx + q_vector->v_idx + 1;
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index cdf17b1e2f25..5261ba802c36 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -1523,7 +1523,6 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 	u16 num_q_vectors_mapped, vsi_id, vector_id;
 	struct virtchnl_irq_map_info *irqmap_info;
 	struct virtchnl_vector_map *map;
-	struct ice_pf *pf = vf->pf;
 	struct ice_vsi *vsi;
 	int i;
 
@@ -1535,7 +1534,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 	 * there is actually at least a single VF queue vector mapped
 	 */
 	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states) ||
-	    pf->vfs.num_msix_per < num_q_vectors_mapped ||
+	    vf->num_msix < num_q_vectors_mapped ||
 	    !num_q_vectors_mapped) {
 		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		goto error_param;
@@ -1557,7 +1556,7 @@ static int ice_vc_cfg_irq_map_msg(struct ice_vf *vf, u8 *msg)
 		/* vector_id is always 0-based for each VF, and can never be
 		 * larger than or equal to the max allowed interrupts per VF
 		 */
-		if (!(vector_id < pf->vfs.num_msix_per) ||
+		if (!(vector_id < vf->num_msix) ||
 		    !ice_vc_isvalid_vsi_id(vf, vsi_id) ||
 		    (!vector_id && (map->rxq_map || map->txq_map))) {
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
