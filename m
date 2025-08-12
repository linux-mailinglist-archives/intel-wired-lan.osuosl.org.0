Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id C24BCB228FF
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Aug 2025 15:46:18 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 83BEA61462;
	Tue, 12 Aug 2025 13:46:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J9Yojo5RtwCh; Tue, 12 Aug 2025 13:46:16 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 9209B61503
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1755006376;
	bh=2HH4trm36Gi2K+NX5iSKMP+TgakE2Qi0ceGiUdHWcWI=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=rP46KYb7ubhxAYh0m2BJcJy2BVs5QMaveS8q6PptPLc4/25pahJZ+Nl2OLzk6fog6
	 g2iXIDMCPCkH5Fe52Z3A14zyWHav1ftR0/Je8EQwaZfbWjKhn5G3KCI4hN4h/W84SM
	 iKWG+MiuEt2cYKPuxV44a82kLjE+QCyO9xhtg5ZSJxcRXbbQIPY3ARbVbmVz00nlG6
	 BYOLDUfVrrb1sA8TA+YiPG/Duh0baV7Pevb9C+/oPK62F2iQmQz4ztYJbc8wr11Z9V
	 x1bdFM8ofcK+4VpyTdHY5cGpCTRaUlqMeGiIONYgNnpXGKgpcSO3PvnGPd1T3KwlJa
	 oJcyq6eBLhCgA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 9209B61503;
	Tue, 12 Aug 2025 13:46:16 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by lists1.osuosl.org (Postfix) with ESMTP id 29F3B183
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id B01D141309
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:12 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 7HeISy3MuiC5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Aug 2025 13:46:12 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.20;
 helo=mgamail.intel.com; envelope-from=przemyslaw.kitszel@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 00D86415AB
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 00D86415AB
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 00D86415AB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Aug 2025 13:46:11 +0000 (UTC)
X-CSE-ConnectionGUID: +lz1+tYrQmWd9Umrz5FvTQ==
X-CSE-MsgGUID: uZrGu9D+RC6EHIEyPMLj8A==
X-IronPort-AV: E=McAfee;i="6800,10657,11520"; a="56994328"
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="56994328"
Received: from fmviesa005.fm.intel.com ([10.60.135.145])
 by orvoesa112.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Aug 2025 06:39:06 -0700
X-CSE-ConnectionGUID: pCcQQRn5QLCSokgAIMtXGQ==
X-CSE-MsgGUID: DhBp8UUbTLiLZfXEaqmCJw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.17,284,1747724400"; d="scan'208";a="170416070"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmviesa005.fm.intel.com with ESMTP; 12 Aug 2025 06:39:03 -0700
Received: from vecna.igk.intel.com (vecna.igk.intel.com [10.123.220.17])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A4A2C32CB9;
 Tue, 12 Aug 2025 14:39:02 +0100 (IST)
From: Przemek Kitszel <przemyslaw.kitszel@intel.com>
To: intel-wired-lan@lists.osuosl.org, Tony Nguyen <anthony.l.nguyen@intel.com>
Cc: netdev@vger.kernel.org,
	Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Tue, 12 Aug 2025 15:29:02 +0200
Message-Id: <20250812132910.99626-5-przemyslaw.kitszel@intel.com>
X-Mailer: git-send-email 2.39.3
In-Reply-To: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
References: <20250812132910.99626-1-przemyslaw.kitszel@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1755006373; x=1786542373;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=gOWghwsPVbmAb5+OMOFwbIOTGyGJZN582YrTaUFzRMM=;
 b=U9rMfjRhRXoGjwHXSpvVfANOgRYkGyFL94+D9T5gi1OyPxrx7fi/RrbX
 QkjiCbtknil3XI/zvN2kQecYpaNymDB+JWkwfLx3IarnfCfTc0Aj9UTBJ
 2vkOrbCNtpHOh6oLnkrYvA4OY1wWccyLxoKZPg7X0ZfDWTQEReSsmuohO
 9H9E1dRezcqGadVrly4Zva36miABjjckSa1hRJ90xXfLlzhUFl3jkwzY5
 Vsfs4lDhn2eUikj125I4e8rAuwRuGk4kznUQXmbIgsBgfwzZSG/2fTgkG
 9pBs0vHRIB7kcDaNTR0U5k26PNtONAmA1mSdzjKhdLemEjPgoYfGHNEGw
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=U9rMfjRh
Subject: [Intel-wired-lan] [PATCH 04/12] ice: extract ice_virtchnl_queues.c:
 cleanup - p2
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove next piece of the content that stays in ice_virtchnl.c,
(separate commits to have nicer git history).

Signed-off-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
---
 .../ethernet/intel/ice/ice_virtchnl_queues.c  | 181 ------------------
 1 file changed, 181 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
index 9ee7ec92e331..0600151ebee1 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_queues.c
@@ -161,187 +161,6 @@ static int ice_vf_cfg_q_quanta_profile(struct ice_vf *vf, u16 quanta_size,
 	return 0;
 }
 
-/**
- * ice_vc_cfg_promiscuous_mode_msg
- * @vf: pointer to the VF info
- * @msg: pointer to the msg buffer
- *
- * called from the VF to configure VF VSIs promiscuous mode
- */
-static int ice_vc_cfg_promiscuous_mode_msg(struct ice_vf *vf, u8 *msg)
-{
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	bool rm_promisc, alluni = false, allmulti = false;
-	struct virtchnl_promisc_info *info =
-	    (struct virtchnl_promisc_info *)msg;
-	struct ice_vsi_vlan_ops *vlan_ops;
-	int mcast_err = 0, ucast_err = 0;
-	struct ice_pf *pf = vf->pf;
-	struct ice_vsi *vsi;
-	u8 mcast_m, ucast_m;
-	struct device *dev;
-	int ret = 0;
-
-	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!ice_vc_isvalid_vsi_id(vf, info->vsi_id)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	dev = ice_pf_to_dev(pf);
-	if (!ice_is_vf_trusted(vf)) {
-		dev_err(dev, "Unprivileged VF %d is attempting to configure promiscuous mode\n",
-			vf->vf_id);
-		/* Leave v_ret alone, lie to the VF on purpose. */
-		goto error_param;
-	}
-
-	if (info->flags & FLAG_VF_UNICAST_PROMISC)
-		alluni = true;
-
-	if (info->flags & FLAG_VF_MULTICAST_PROMISC)
-		allmulti = true;
-
-	rm_promisc = !allmulti && !alluni;
-
-	vlan_ops = ice_get_compat_vsi_vlan_ops(vsi);
-	if (rm_promisc)
-		ret = vlan_ops->ena_rx_filtering(vsi);
-	else
-		ret = vlan_ops->dis_rx_filtering(vsi);
-	if (ret) {
-		dev_err(dev, "Failed to configure VLAN pruning in promiscuous mode\n");
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	ice_vf_get_promisc_masks(vf, vsi, &ucast_m, &mcast_m);
-
-	if (!test_bit(ICE_FLAG_VF_TRUE_PROMISC_ENA, pf->flags)) {
-		if (alluni) {
-			/* in this case we're turning on promiscuous mode */
-			ret = ice_set_dflt_vsi(vsi);
-		} else {
-			/* in this case we're turning off promiscuous mode */
-			if (ice_is_dflt_vsi_in_use(vsi->port_info))
-				ret = ice_clear_dflt_vsi(vsi);
-		}
-
-		/* in this case we're turning on/off only
-		 * allmulticast
-		 */
-		if (allmulti)
-			mcast_err = ice_vf_set_vsi_promisc(vf, vsi, mcast_m);
-		else
-			mcast_err = ice_vf_clear_vsi_promisc(vf, vsi, mcast_m);
-
-		if (ret) {
-			dev_err(dev, "Turning on/off promiscuous mode for VF %d failed, error: %d\n",
-				vf->vf_id, ret);
-			v_ret = VIRTCHNL_STATUS_ERR_ADMIN_QUEUE_ERROR;
-			goto error_param;
-		}
-	} else {
-		if (alluni)
-			ucast_err = ice_vf_set_vsi_promisc(vf, vsi, ucast_m);
-		else
-			ucast_err = ice_vf_clear_vsi_promisc(vf, vsi, ucast_m);
-
-		if (allmulti)
-			mcast_err = ice_vf_set_vsi_promisc(vf, vsi, mcast_m);
-		else
-			mcast_err = ice_vf_clear_vsi_promisc(vf, vsi, mcast_m);
-
-		if (ucast_err || mcast_err)
-			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-	}
-
-	if (!mcast_err) {
-		if (allmulti &&
-		    !test_and_set_bit(ICE_VF_STATE_MC_PROMISC, vf->vf_states))
-			dev_info(dev, "VF %u successfully set multicast promiscuous mode\n",
-				 vf->vf_id);
-		else if (!allmulti &&
-			 test_and_clear_bit(ICE_VF_STATE_MC_PROMISC,
-					    vf->vf_states))
-			dev_info(dev, "VF %u successfully unset multicast promiscuous mode\n",
-				 vf->vf_id);
-	} else {
-		dev_err(dev, "Error while modifying multicast promiscuous mode for VF %u, error: %d\n",
-			vf->vf_id, mcast_err);
-	}
-
-	if (!ucast_err) {
-		if (alluni &&
-		    !test_and_set_bit(ICE_VF_STATE_UC_PROMISC, vf->vf_states))
-			dev_info(dev, "VF %u successfully set unicast promiscuous mode\n",
-				 vf->vf_id);
-		else if (!alluni &&
-			 test_and_clear_bit(ICE_VF_STATE_UC_PROMISC,
-					    vf->vf_states))
-			dev_info(dev, "VF %u successfully unset unicast promiscuous mode\n",
-				 vf->vf_id);
-	} else {
-		dev_err(dev, "Error while modifying unicast promiscuous mode for VF %u, error: %d\n",
-			vf->vf_id, ucast_err);
-	}
-
-error_param:
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_CONFIG_PROMISCUOUS_MODE,
-				     v_ret, NULL, 0);
-}
-
-/**
- * ice_vc_get_stats_msg
- * @vf: pointer to the VF info
- * @msg: pointer to the msg buffer
- *
- * called from the VF to get VSI stats
- */
-static int ice_vc_get_stats_msg(struct ice_vf *vf, u8 *msg)
-{
-	enum virtchnl_status_code v_ret = VIRTCHNL_STATUS_SUCCESS;
-	struct virtchnl_queue_select *vqs =
-		(struct virtchnl_queue_select *)msg;
-	struct ice_eth_stats stats = { 0 };
-	struct ice_vsi *vsi;
-
-	if (!test_bit(ICE_VF_STATE_ACTIVE, vf->vf_states)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	if (!ice_vc_isvalid_vsi_id(vf, vqs->vsi_id)) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	vsi = ice_get_vf_vsi(vf);
-	if (!vsi) {
-		v_ret = VIRTCHNL_STATUS_ERR_PARAM;
-		goto error_param;
-	}
-
-	ice_update_eth_stats(vsi);
-
-	stats = vsi->eth_stats;
-
-error_param:
-	/* send the response to the VF */
-	return ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_STATS, v_ret,
-				     (u8 *)&stats, sizeof(stats));
-}
-
 /**
  * ice_vc_validate_vqs_bitmaps - validate Rx/Tx queue bitmaps from VIRTCHNL
  * @vqs: virtchnl_queue_select structure containing bitmaps to validate
-- 
2.39.3

