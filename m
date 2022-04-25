Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 67A5050D98A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 25 Apr 2022 08:35:39 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 1336A60B2D;
	Mon, 25 Apr 2022 06:35:38 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id q-3jvoUTGtCV; Mon, 25 Apr 2022 06:35:37 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id EF0D660B1F;
	Mon, 25 Apr 2022 06:35:36 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 0579F1BF3BA
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id F03B881329
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:23 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Authentication-Results: smtp1.osuosl.org (amavisd-new);
 dkim=pass (2048-bit key) header.d=intel.com
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YNtkCbmUYn7b for <intel-wired-lan@lists.osuosl.org>;
 Mon, 25 Apr 2022 06:35:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 1EA1E8138A
 for <intel-wired-lan@lists.osuosl.org>; Mon, 25 Apr 2022 06:35:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1650868523; x=1682404523;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=nJiMvyhILDtZqgCranPFYLEIswsFhD6YMyL45P7FA98=;
 b=Or/89KQzIfZBuCXEu0pj/HQrl8wkGcZXsqecSR7n3iVv0M6EXsbQHRys
 9q6ve3nTczjGvmoxkuwW622a++692RwHkeqw6qlhLfpwYW+EVUDvgGEG+
 1LHfkGcpzHJo/YSsgIb9+QquRkhgmccl/jEyXwG6QWs8dKvMbSX2q+nI8
 EoV2dUPxjEn/Q6oU1LJTMws7jSEEsdQxaFHOlKdA33rQXVSRLUPqWdonJ
 zvXmL3CIisFOURsApNfG/zKry+nO/RlAwP09HZdspPfpSN1F11ykosZdI
 87jUn8JzggxqCYcyF8zuQtRtkc+CT3iNKC9u0b9rAqcSTQAY7kf56s5hX g==;
X-IronPort-AV: E=McAfee;i="6400,9594,10327"; a="264008419"
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="264008419"
Received: from orsmga007.jf.intel.com ([10.7.209.58])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 Apr 2022 23:35:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,287,1643702400"; d="scan'208";a="557568762"
Received: from wasp.igk.intel.com ([10.102.20.192])
 by orsmga007.jf.intel.com with ESMTP; 24 Apr 2022 23:35:20 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 25 Apr 2022 08:27:56 +0200
Message-Id: <20220425062756.14987-3-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20220425062756.14987-1-michal.swiatkowski@linux.intel.com>
References: <20220425062756.14987-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next 2/2] ice: remove VLAN representor
 specific ops
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
Cc: michal.wilczynski@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

As in switchdev mode VF VLAN caps will not be set there is no need
to have specific VLAN ops for representor that only returns not
supported error.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_virtchnl.c | 44 ++-----------------
 1 file changed, 4 insertions(+), 40 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 5d07e009bc84..ba38b76fd305 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -3520,42 +3520,6 @@ ice_vc_repr_del_mac(struct ice_vf __always_unused *vf, u8 __always_unused *msg)
 				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
 }
 
-static int ice_vc_repr_add_vlan(struct ice_vf *vf, u8 __always_unused *msg)
-{
-	dev_dbg(ice_pf_to_dev(vf->pf),
-		"Can't add VLAN in switchdev mode for VF %d\n", vf->vf_id);
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ADD_VLAN,
-				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
-}
-
-static int ice_vc_repr_del_vlan(struct ice_vf *vf, u8 __always_unused *msg)
-{
-	dev_dbg(ice_pf_to_dev(vf->pf),
-		"Can't delete VLAN in switchdev mode for VF %d\n", vf->vf_id);
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DEL_VLAN,
-				     VIRTCHNL_STATUS_SUCCESS, NULL, 0);
-}
-
-static int ice_vc_repr_ena_vlan_stripping(struct ice_vf *vf)
-{
-	dev_dbg(ice_pf_to_dev(vf->pf),
-		"Can't enable VLAN stripping in switchdev mode for VF %d\n",
-		vf->vf_id);
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_ENABLE_VLAN_STRIPPING,
-				     VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
-				     NULL, 0);
-}
-
-static int ice_vc_repr_dis_vlan_stripping(struct ice_vf *vf)
-{
-	dev_dbg(ice_pf_to_dev(vf->pf),
-		"Can't disable VLAN stripping in switchdev mode for VF %d\n",
-		vf->vf_id);
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_DISABLE_VLAN_STRIPPING,
-				     VIRTCHNL_STATUS_ERR_NOT_SUPPORTED,
-				     NULL, 0);
-}
-
 static int
 ice_vc_repr_cfg_promiscuous_mode(struct ice_vf *vf, u8 __always_unused *msg)
 {
@@ -3582,10 +3546,10 @@ static const struct ice_virtchnl_ops ice_virtchnl_repr_ops = {
 	.config_rss_lut = ice_vc_config_rss_lut,
 	.get_stats_msg = ice_vc_get_stats_msg,
 	.cfg_promiscuous_mode_msg = ice_vc_repr_cfg_promiscuous_mode,
-	.add_vlan_msg = ice_vc_repr_add_vlan,
-	.remove_vlan_msg = ice_vc_repr_del_vlan,
-	.ena_vlan_stripping = ice_vc_repr_ena_vlan_stripping,
-	.dis_vlan_stripping = ice_vc_repr_dis_vlan_stripping,
+	.add_vlan_msg = ice_vc_add_vlan_msg,
+	.remove_vlan_msg = ice_vc_remove_vlan_msg,
+	.ena_vlan_stripping = ice_vc_ena_vlan_stripping,
+	.dis_vlan_stripping = ice_vc_dis_vlan_stripping,
 	.handle_rss_cfg_msg = ice_vc_handle_rss_cfg,
 	.add_fdir_fltr_msg = ice_vc_add_fdir_fltr,
 	.del_fdir_fltr_msg = ice_vc_del_fdir_fltr,
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
