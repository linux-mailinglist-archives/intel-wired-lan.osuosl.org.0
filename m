Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 47CFCA5D612
	for <lists+intel-wired-lan@lfdr.de>; Wed, 12 Mar 2025 07:24:53 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id DC56960D88;
	Wed, 12 Mar 2025 06:24:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 1hHIh5sd8eIh; Wed, 12 Mar 2025 06:24:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 6150560D80
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1741760689;
	bh=P95YBqzWe/TaKKwTiF4N5gQ8QzAjRERHiRzjc8SN/oc=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=Ay2/g/i+ueC6fnMKUyK57LE0TjbkS+6UeVx/Hya5HrgReOd2VdGa356b1lgmBAJVm
	 fft8xeizV02LYJ3LtVgeLiWCytcqxTtKFRCpzgVeSZADY1tgneqLVCWB2N6aNzTLkq
	 TnnCw5ob5N618v4SnIxjwhHfIJV1ag6HoPDF2NWw9ULeMkiFlpZYL4CWG6q4VhpNLq
	 MOkwOUymYwpj670RtPqAUijJ9ci5u6nCda8K41yAPfy/dna6TT/lOtEsK0y4RCLjFE
	 5hJBEBE60VWbgk8WGtKzTxB0840TJZCNNORx7v4FZXuBkLQYzFJSSqZSpyry8jhiHE
	 ZIQuUDk5C0ciQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6150560D80;
	Wed, 12 Mar 2025 06:24:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
 by lists1.osuosl.org (Postfix) with ESMTP id 3E7961DB
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 2DF6D60D87
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HTP_UDvvwTZ8 for <intel-wired-lan@lists.osuosl.org>;
 Wed, 12 Mar 2025 06:24:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 690EB60D80
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 690EB60D80
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 690EB60D80
 for <intel-wired-lan@lists.osuosl.org>; Wed, 12 Mar 2025 06:24:45 +0000 (UTC)
X-CSE-ConnectionGUID: D/PuKx6bSDq3HjC7X3TklQ==
X-CSE-MsgGUID: IAl5msZBQlWczk0DbwQ0YA==
X-IronPort-AV: E=McAfee;i="6700,10204,11370"; a="43005573"
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="43005573"
Received: from fmviesa007.fm.intel.com ([10.60.135.147])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Mar 2025 23:24:45 -0700
X-CSE-ConnectionGUID: K3RDxD9bTcCgEwFF6f67EA==
X-CSE-MsgGUID: 7jW1lXOIQvOThMp4oDRsdQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.14,240,1736841600"; d="scan'208";a="120569552"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa007.fm.intel.com with ESMTP; 11 Mar 2025 23:24:42 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com
Date: Wed, 12 Mar 2025 07:24:24 +0100
Message-ID: <20250312062426.2544608-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250312062426.2544608-1-michal.swiatkowski@linux.intel.com>
References: <20250312062426.2544608-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1741760686; x=1773296686;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=Ody/RP8GYYZ3iv6hn6+tlO7cY+VerfSBjtU6i2kry84=;
 b=Su8DDocFIRnTIPSSUgo5HKwx/TnciqeTe8Kcz3/0NHlL+6xfkdCZuIkG
 s8obtnQEQTchTY0VWlKQLEtIEJEKcLR4F36MWLdLdFLcwBHpnwhbgKSAb
 Fd4NPMvKF61/eAx3EFSycmcppGqaHFtD3dvLVkLQ7dqp+ANnaaaZBQtGM
 otv8NThdA1Q+qF2CuLulHMXf8eFKK+T2j4ymwE2W0DW7vmec4JegogloX
 jGA/3uscpTaP0AtN8f9sNmYPnX2pg59TxptU7PT8L9I2+p5vrSzuk/V2t
 GbR5Q4ZE38FjPTXQVJ1aoQRqoRd0vL/sCPYAfehOENp/ji3NpLP3c+orq
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Su8DDocF
Subject: [Intel-wired-lan] [iwl-next v1 6/8] ice: use libie_aq_str
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

Simple:
s/ice_aq_str/libie_aq_str

Add libie_aminq module in ice Kconfig.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |  1 +
 drivers/net/ethernet/intel/ice/ice.h          |  1 -
 .../net/ethernet/intel/ice/devlink/devlink.c  | 10 +--
 .../net/ethernet/intel/ice/devlink/health.c   |  2 +-
 drivers/net/ethernet/intel/ice/ice_dpll.c     | 20 +++---
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 12 ++--
 .../net/ethernet/intel/ice/ice_fw_update.c    | 20 +++---
 drivers/net/ethernet/intel/ice/ice_lib.c      |  4 +-
 drivers/net/ethernet/intel/ice/ice_main.c     | 61 +++----------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  4 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 24 ++++----
 11 files changed, 59 insertions(+), 100 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index b2adb40a5921..a8fa67fe9336 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -294,6 +294,7 @@ config ICE
 	select AUXILIARY_BUS
 	select DIMLIB
 	select LIBIE
+	select LIBIE_ADMINQ
 	select NET_DEVLINK
 	select PACKING
 	select PLDMFW
diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index be4587893850..230b40a5692e 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -964,7 +964,6 @@ int ice_plug_aux_dev(struct ice_pf *pf);
 void ice_unplug_aux_dev(struct ice_pf *pf);
 int ice_init_rdma(struct ice_pf *pf);
 void ice_deinit_rdma(struct ice_pf *pf);
-const char *ice_aq_str(enum libie_aq_err aq_err);
 bool ice_is_wol_supported(struct ice_hw *hw);
 void ice_fdir_del_all_fltrs(struct ice_vsi *vsi);
 int
diff --git a/drivers/net/ethernet/intel/ice/devlink/devlink.c b/drivers/net/ethernet/intel/ice/devlink/devlink.c
index fcb199efbea5..ca24714c8131 100644
--- a/drivers/net/ethernet/intel/ice/devlink/devlink.c
+++ b/drivers/net/ethernet/intel/ice/devlink/devlink.c
@@ -293,7 +293,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
 	err = ice_discover_dev_caps(hw, &ctx->dev_caps);
 	if (err) {
 		dev_dbg(dev, "Failed to discover device capabilities, status %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Unable to discover device capabilities");
 		goto out_free_ctx;
 	}
@@ -302,7 +302,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
 		err = ice_get_inactive_orom_ver(hw, &ctx->pending_orom);
 		if (err) {
 			dev_dbg(dev, "Unable to read inactive Option ROM version data, status %d aq_err %s\n",
-				err, ice_aq_str(hw->adminq.sq_last_status));
+				err, libie_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_orom = false;
@@ -313,7 +313,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
 		err = ice_get_inactive_nvm_ver(hw, &ctx->pending_nvm);
 		if (err) {
 			dev_dbg(dev, "Unable to read inactive NVM version data, status %d aq_err %s\n",
-				err, ice_aq_str(hw->adminq.sq_last_status));
+				err, libie_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_nvm = false;
@@ -324,7 +324,7 @@ static int ice_devlink_info_get(struct devlink *devlink,
 		err = ice_get_inactive_netlist_ver(hw, &ctx->pending_netlist);
 		if (err) {
 			dev_dbg(dev, "Unable to read inactive Netlist version data, status %d aq_err %s\n",
-				err, ice_aq_str(hw->adminq.sq_last_status));
+				err, libie_aq_str(hw->adminq.sq_last_status));
 
 			/* disable display of pending Option ROM */
 			ctx->dev_caps.common_cap.nvm_update_pending_netlist = false;
@@ -440,7 +440,7 @@ ice_devlink_reload_empr_start(struct ice_pf *pf,
 	err = ice_aq_nvm_update_empr(hw);
 	if (err) {
 		dev_err(dev, "Failed to trigger EMP device reset to reload firmware, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to trigger EMP device reset to reload firmware");
 		return err;
 	}
diff --git a/drivers/net/ethernet/intel/ice/devlink/health.c b/drivers/net/ethernet/intel/ice/devlink/health.c
index b149b8185449..ab519c0f28bf 100644
--- a/drivers/net/ethernet/intel/ice/devlink/health.c
+++ b/drivers/net/ethernet/intel/ice/devlink/health.c
@@ -204,7 +204,7 @@ static void ice_config_health_events(struct ice_pf *pf, bool enable)
 	if (ret)
 		dev_err(ice_pf_to_dev(pf), "Failed to %s firmware health events, err %d aq_err %s\n",
 			str_enable_disable(enable), ret,
-			ice_aq_str(pf->hw.adminq.sq_last_status));
+			libie_aq_str(pf->hw.adminq.sq_last_status));
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_dpll.c b/drivers/net/ethernet/intel/ice/ice_dpll.c
index e36c5a853593..8e51b1abf343 100644
--- a/drivers/net/ethernet/intel/ice/ice_dpll.c
+++ b/drivers/net/ethernet/intel/ice/ice_dpll.c
@@ -155,7 +155,7 @@ ice_dpll_pin_freq_set(struct ice_pf *pf, struct ice_dpll_pin *pin,
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to set pin freq:%u on pin:%u",
 				   ret,
-				   ice_aq_str(pf->hw.adminq.sq_last_status),
+				   libie_aq_str(pf->hw.adminq.sq_last_status),
 				   freq, pin->idx);
 		return ret;
 	}
@@ -462,7 +462,7 @@ ice_dpll_pin_enable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 	if (ret)
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to enable %s pin:%u",
-				   ret, ice_aq_str(hw->adminq.sq_last_status),
+				   ret, libie_aq_str(hw->adminq.sq_last_status),
 				   pin_type_name[pin_type], pin->idx);
 
 	return ret;
@@ -507,7 +507,7 @@ ice_dpll_pin_disable(struct ice_hw *hw, struct ice_dpll_pin *pin,
 	if (ret)
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to disable %s pin:%u",
-				   ret, ice_aq_str(hw->adminq.sq_last_status),
+				   ret, libie_aq_str(hw->adminq.sq_last_status),
 				   pin_type_name[pin_type], pin->idx);
 
 	return ret;
@@ -688,13 +688,13 @@ ice_dpll_pin_state_update(struct ice_pf *pf, struct ice_dpll_pin *pin,
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to update %s pin:%u",
 				   ret,
-				   ice_aq_str(pf->hw.adminq.sq_last_status),
+				   libie_aq_str(pf->hw.adminq.sq_last_status),
 				   pin_type_name[pin_type], pin->idx);
 	else
 		dev_err_ratelimited(ice_pf_to_dev(pf),
 				    "err:%d %s failed to update %s pin:%u\n",
 				    ret,
-				    ice_aq_str(pf->hw.adminq.sq_last_status),
+				    libie_aq_str(pf->hw.adminq.sq_last_status),
 				    pin_type_name[pin_type], pin->idx);
 	return ret;
 }
@@ -727,7 +727,7 @@ ice_dpll_hw_input_prio_set(struct ice_pf *pf, struct ice_dpll *dpll,
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to set pin prio:%u on pin:%u",
 				   ret,
-				   ice_aq_str(pf->hw.adminq.sq_last_status),
+				   libie_aq_str(pf->hw.adminq.sq_last_status),
 				   prio, pin->idx);
 	else
 		dpll->input_prio[pin->idx] = prio;
@@ -1587,7 +1587,7 @@ ice_dpll_pin_phase_adjust_set(const struct dpll_pin *pin, void *pin_priv,
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to set pin phase_adjust:%d for pin:%u on dpll:%u",
 				   ret,
-				   ice_aq_str(pf->hw.adminq.sq_last_status),
+				   libie_aq_str(pf->hw.adminq.sq_last_status),
 				   phase_adjust, p->idx, d->dpll_idx);
 
 	return ret;
@@ -2091,7 +2091,7 @@ ice_dpll_rclk_state_on_pin_set(const struct dpll_pin *pin, void *pin_priv,
 		NL_SET_ERR_MSG_FMT(extack,
 				   "err:%d %s failed to set pin state:%u for pin:%u on parent:%u",
 				   ret,
-				   ice_aq_str(pf->hw.adminq.sq_last_status),
+				   libie_aq_str(pf->hw.adminq.sq_last_status),
 				   state, p->idx, parent->idx);
 unlock:
 	mutex_unlock(&pf->dplls.lock);
@@ -2318,7 +2318,7 @@ ice_dpll_update_state(struct ice_pf *pf, struct ice_dpll *d, bool init)
 		dev_err(ice_pf_to_dev(pf),
 			"update dpll=%d state failed, ret=%d %s\n",
 			d->dpll_idx, ret,
-			ice_aq_str(pf->hw.adminq.sq_last_status));
+			libie_aq_str(pf->hw.adminq.sq_last_status));
 		return ret;
 	}
 	if (init) {
@@ -3226,7 +3226,7 @@ static int ice_dpll_init_info(struct ice_pf *pf, bool cgu)
 	if (ret) {
 		dev_err(ice_pf_to_dev(pf),
 			"err:%d %s failed to read cgu abilities\n",
-			ret, ice_aq_str(hw->adminq.sq_last_status));
+			ret, libie_aq_str(hw->adminq.sq_last_status));
 		return ret;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 648815170477..9702dbe2aee3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -869,7 +869,7 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 	ret = ice_acquire_nvm(hw, ICE_RES_READ);
 	if (ret) {
 		dev_err(dev, "ice_acquire_nvm failed, err %d aq_err %s\n",
-			ret, ice_aq_str(hw->adminq.sq_last_status));
+			ret, libie_aq_str(hw->adminq.sq_last_status));
 		goto out;
 	}
 
@@ -877,7 +877,7 @@ ice_get_eeprom(struct net_device *netdev, struct ethtool_eeprom *eeprom,
 				false);
 	if (ret) {
 		dev_err(dev, "ice_read_flat_nvm failed, err %d aq_err %s\n",
-			ret, ice_aq_str(hw->adminq.sq_last_status));
+			ret, libie_aq_str(hw->adminq.sq_last_status));
 		goto release;
 	}
 
@@ -3557,15 +3557,15 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 
 	if (aq_failures & ICE_SET_FC_AQ_FAIL_GET) {
 		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %d aq_err %s\n",
-			    err, ice_aq_str(hw->adminq.sq_last_status));
+			    err, libie_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_SET) {
 		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %d aq_err %s\n",
-			    err, ice_aq_str(hw->adminq.sq_last_status));
+			    err, libie_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	} else if (aq_failures & ICE_SET_FC_AQ_FAIL_UPDATE) {
 		netdev_info(netdev, "Set fc failed on the get_link_info call with err %d aq_err %s\n",
-			    err, ice_aq_str(hw->adminq.sq_last_status));
+			    err, libie_aq_str(hw->adminq.sq_last_status));
 		err = -EAGAIN;
 	}
 
@@ -3896,7 +3896,7 @@ static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
 	err = ice_set_rss_lut(vsi, lut, vsi->rss_table_size);
 	if (err)
 		dev_err(dev, "Cannot set RSS lut, err %d aq_err %s\n", err,
-			ice_aq_str(hw->adminq.sq_last_status));
+			libie_aq_str(hw->adminq.sq_last_status));
 
 	kfree(lut);
 	return err;
diff --git a/drivers/net/ethernet/intel/ice/ice_fw_update.c b/drivers/net/ethernet/intel/ice/ice_fw_update.c
index 4d9ad92a44fe..d86db081579f 100644
--- a/drivers/net/ethernet/intel/ice/ice_fw_update.c
+++ b/drivers/net/ethernet/intel/ice/ice_fw_update.c
@@ -68,7 +68,7 @@ ice_send_package_data(struct pldmfw *context, const u8 *data, u16 length)
 
 	if (status) {
 		dev_err(dev, "Failed to send record package data to firmware, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to record package data to firmware");
 		return -EIO;
 	}
@@ -257,7 +257,7 @@ ice_send_component_table(struct pldmfw *context, struct pldmfw_component *compon
 
 	if (status) {
 		dev_err(dev, "Failed to transfer component table to firmware, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to transfer component table to firmware");
 		return -EIO;
 	}
@@ -314,7 +314,7 @@ int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	if (err) {
 		dev_err(dev, "Failed to flash module 0x%02x with block of size %u at offset %u, err %d aq_err %s\n",
 			module, block_size, offset, err,
-			ice_aq_str(hw->adminq.sq_last_status));
+			libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to program flash module");
 		return -EIO;
 	}
@@ -358,7 +358,7 @@ int ice_write_one_nvm_block(struct ice_pf *pf, u16 module, u32 offset,
 	if (completion_retval) {
 		dev_err(dev, "Firmware failed to flash module 0x%02x with block of size %u at offset %u, err %s\n",
 			module, block_size, offset,
-			ice_aq_str((enum libie_aq_err)completion_retval));
+			libie_aq_str((enum libie_aq_err)completion_retval));
 		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to program flash module");
 		return -EIO;
 	}
@@ -506,7 +506,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	if (err) {
 		dev_err(dev, "Failed to erase %s (module 0x%02x), err %d aq_err %s\n",
 			component, module, err,
-			ice_aq_str(hw->adminq.sq_last_status));
+			libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to erase flash module");
 		err = -EIO;
 		goto out_notify_devlink;
@@ -536,7 +536,7 @@ ice_erase_nvm_module(struct ice_pf *pf, u16 module, const char *component,
 	if (completion_retval) {
 		dev_err(dev, "Firmware failed to erase %s (module 0x02%x), aq_err %s\n",
 			component, module,
-			ice_aq_str((enum libie_aq_err)completion_retval));
+			libie_aq_str((enum libie_aq_err)completion_retval));
 		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to erase flash");
 		err = -EIO;
 		goto out_notify_devlink;
@@ -583,7 +583,7 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 	err = ice_nvm_write_activate(hw, activate_flags, &response_flags);
 	if (err) {
 		dev_err(dev, "Failed to switch active flash banks, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to switch active flash banks");
 		return -EIO;
 	}
@@ -615,7 +615,7 @@ ice_switch_flash_banks(struct ice_pf *pf, u8 activate_flags,
 	completion_retval = le16_to_cpu(task.event.desc.retval);
 	if (completion_retval) {
 		dev_err(dev, "Firmware failed to switch active flash banks aq_err %s\n",
-			ice_aq_str((enum libie_aq_err)completion_retval));
+			libie_aq_str((enum libie_aq_err)completion_retval));
 		NL_SET_ERR_MSG_MOD(extack, "Firmware failed to switch active flash banks");
 		return -EIO;
 	}
@@ -953,7 +953,7 @@ ice_cancel_pending_update(struct ice_pf *pf, const char *component,
 	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
 	if (err) {
 		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
 		return err;
 	}
@@ -1046,7 +1046,7 @@ int ice_devlink_flash_update(struct devlink *devlink,
 	err = ice_acquire_nvm(hw, ICE_RES_WRITE);
 	if (err) {
 		dev_err(dev, "Failed to acquire device flash lock, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 		NL_SET_ERR_MSG_MOD(extack, "Failed to acquire device flash lock");
 		return err;
 	}
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 530846a97a9d..46f27b57514f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3746,11 +3746,11 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
 		if (hw->adminq.sq_last_status == LIBIE_AQ_RC_EMODE)
 			dev_dbg(dev, "can't set link to %s, err %d aq_err %s. not fatal, continuing\n",
 				(ena ? "ON" : "OFF"), status,
-				ice_aq_str(hw->adminq.sq_last_status));
+				libie_aq_str(hw->adminq.sq_last_status));
 	} else if (status) {
 		dev_err(dev, "can't set link to %s, err %d aq_err %s\n",
 			(ena ? "ON" : "OFF"), status,
-			ice_aq_str(hw->adminq.sq_last_status));
+			libie_aq_str(hw->adminq.sq_last_status));
 		return status;
 	}
 
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 6e675aca8aae..30fe1de58827 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -38,6 +38,7 @@ static const char ice_copyright[] = "Copyright (c) 2018, Intel Corporation.";
 
 MODULE_DESCRIPTION(DRV_SUMMARY);
 MODULE_IMPORT_NS("LIBIE");
+MODULE_IMPORT_NS("LIBIE_ADMINQ");
 MODULE_LICENSE("GPL v2");
 MODULE_FIRMWARE(ICE_DDP_PKG_FILE);
 
@@ -1119,7 +1120,7 @@ ice_link_event(struct ice_pf *pf, struct ice_port_info *pi, bool link_up,
 	if (status)
 		dev_dbg(dev, "Failed to update link status on port %d, err %d aq_err %s\n",
 			pi->lport, status,
-			ice_aq_str(pi->hw->adminq.sq_last_status));
+			libie_aq_str(pi->hw->adminq.sq_last_status));
 
 	ice_check_link_cfg_err(pf, pi->phy.link_info.link_cfg_err);
 
@@ -4202,7 +4203,7 @@ static void ice_set_safe_mode_vlan_cfg(struct ice_pf *pf)
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
 		dev_err(ice_pf_to_dev(vsi->back), "Failed to update VSI for safe mode VLANs, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 	} else {
 		vsi->info.sec_flags = ctxt->info.sec_flags;
 		vsi->info.sw_flags2 = ctxt->info.sw_flags2;
@@ -5417,7 +5418,7 @@ static void ice_setup_mc_magic_wake(struct ice_pf *pf)
 	status = ice_aq_manage_mac_write(hw, mac_addr, flags, NULL);
 	if (status)
 		dev_err(dev, "Failed to enable Multicast Magic Packet wake, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 }
 
 /**
@@ -7915,48 +7916,6 @@ static int ice_eth_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
 	}
 }
 
-/**
- * ice_aq_str - convert AQ err code to a string
- * @aq_err: the AQ error code to convert
- */
-const char *ice_aq_str(enum libie_aq_err aq_err)
-{
-	switch (aq_err) {
-	case LIBIE_AQ_RC_OK:
-		return "OK";
-	case LIBIE_AQ_RC_EPERM:
-		return "ICE_AQ_RC_EPERM";
-	case LIBIE_AQ_RC_ENOENT:
-		return "ICE_AQ_RC_ENOENT";
-	case LIBIE_AQ_RC_ENOMEM:
-		return "ICE_AQ_RC_ENOMEM";
-	case LIBIE_AQ_RC_EBUSY:
-		return "ICE_AQ_RC_EBUSY";
-	case LIBIE_AQ_RC_EEXIST:
-		return "ICE_AQ_RC_EEXIST";
-	case LIBIE_AQ_RC_EINVAL:
-		return "ICE_AQ_RC_EINVAL";
-	case LIBIE_AQ_RC_ENOSPC:
-		return "ICE_AQ_RC_ENOSPC";
-	case LIBIE_AQ_RC_ENOSYS:
-		return "ICE_AQ_RC_ENOSYS";
-	case LIBIE_AQ_RC_EMODE:
-		return "ICE_AQ_RC_EMODE";
-	case LIBIE_AQ_RC_ENOSEC:
-		return "ICE_AQ_RC_ENOSEC";
-	case LIBIE_AQ_RC_EBADSIG:
-		return "ICE_AQ_RC_EBADSIG";
-	case LIBIE_AQ_RC_ESVN:
-		return "ICE_AQ_RC_ESVN";
-	case LIBIE_AQ_RC_EBADMAN:
-		return "ICE_AQ_RC_EBADMAN";
-	case LIBIE_AQ_RC_EBADBUF:
-		return "ICE_AQ_RC_EBADBUF";
-	}
-
-	return "ICE_AQ_RC_UNKNOWN";
-}
-
 /**
  * ice_set_rss_lut - Set RSS LUT
  * @vsi: Pointer to VSI structure
@@ -7982,7 +7941,7 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	status = ice_aq_set_rss_lut(hw, &params);
 	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS lut, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 
 	return status;
 }
@@ -8005,7 +7964,7 @@ int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed)
 	status = ice_aq_set_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
 	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS key, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 
 	return status;
 }
@@ -8035,7 +7994,7 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	status = ice_aq_get_rss_lut(hw, &params);
 	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 
 	return status;
 }
@@ -8058,7 +8017,7 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
 	status = ice_aq_get_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
 	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS key, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 
 	return status;
 }
@@ -8175,7 +8134,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (ret) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %d aq_err %s\n",
-			bmode, ret, ice_aq_str(hw->adminq.sq_last_status));
+			bmode, ret, libie_aq_str(hw->adminq.sq_last_status));
 		goto out;
 	}
 	/* Update sw flags for book keeping */
@@ -8243,7 +8202,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		if (err) {
 			netdev_err(dev, "switch rule update failed, mode = %d err %d aq_err %s\n",
 				   mode, err,
-				   ice_aq_str(hw->adminq.sq_last_status));
+				   libie_aq_str(hw->adminq.sq_last_status));
 			/* revert hw->evb_veb */
 			hw->evb_veb = (pf_sw->bridge_mode == BRIDGE_MODE_VEB);
 			return err;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index 7b12491f1337..1f165f13c4f2 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
@@ -307,7 +307,7 @@ ice_vc_send_msg_to_vf(struct ice_vf *vf, u32 v_opcode,
 	if (aq_ret && pf->hw.mailboxq.sq_last_status != LIBIE_AQ_RC_ENOSYS) {
 		dev_info(dev, "Unable to send the message to VF %d ret %d aq_err %s\n",
 			 vf->vf_id, aq_ret,
-			 ice_aq_str(pf->hw.mailboxq.sq_last_status));
+			 libie_aq_str(pf->hw.mailboxq.sq_last_status));
 		return -EIO;
 	}
 
@@ -852,7 +852,7 @@ static int ice_vc_handle_rss_cfg(struct ice_vf *vf, u8 *msg, bool add)
 		status = ice_update_vsi(hw, vsi->idx, ctx, NULL);
 		if (status) {
 			dev_err(dev, "update VSI for RSS failed, err %d aq_err %s\n",
-				status, ice_aq_str(hw->adminq.sq_last_status));
+				status, libie_aq_str(hw->adminq.sq_last_status));
 			v_ret = VIRTCHNL_STATUS_ERR_PARAM;
 		} else {
 			vsi->info.q_opt_rss = ctx->info.q_opt_rss;
diff --git a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
index 5291f2888ef8..ada78f83b3ac 100644
--- a/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_vsi_vlan_lib.c
@@ -113,7 +113,7 @@ static int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN insert failed, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 		goto out;
 	}
 
@@ -169,7 +169,7 @@ static int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for VLAN strip failed, ena = %d err %d aq_err %s\n",
-			ena, err, ice_aq_str(hw->adminq.sq_last_status));
+			ena, err, libie_aq_str(hw->adminq.sq_last_status));
 		goto out;
 	}
 
@@ -258,7 +258,7 @@ static int __ice_vsi_set_inner_port_vlan(struct ice_vsi *vsi, u16 pvid_info)
 	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (ret) {
 		dev_info(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
-			 ret, ice_aq_str(hw->adminq.sq_last_status));
+			 ret, libie_aq_str(hw->adminq.sq_last_status));
 		goto out;
 	}
 
@@ -306,7 +306,7 @@ int ice_vsi_clear_inner_port_vlan(struct ice_vsi *vsi)
 	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (ret)
 		dev_err(ice_hw_to_dev(hw), "update VSI for port VLAN failed, err %d aq_err %s\n",
-			ret, ice_aq_str(hw->adminq.sq_last_status));
+			ret, libie_aq_str(hw->adminq.sq_last_status));
 
 	kfree(ctxt);
 	return ret;
@@ -353,7 +353,7 @@ static int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena)
 	if (status) {
 		netdev_err(vsi->netdev, "%sabling VLAN pruning on VSI handle: %d, VSI HW ID: %d failed, err = %d, aq_err = %s\n",
 			   ena ? "En" : "Dis", vsi->idx, vsi->vsi_num, status,
-			   ice_aq_str(pf->hw.adminq.sq_last_status));
+			   libie_aq_str(pf->hw.adminq.sq_last_status));
 		goto err_out;
 	}
 
@@ -497,7 +497,7 @@ int ice_vsi_ena_outer_stripping(struct ice_vsi *vsi, u16 tpid)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err)
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for enabling outer VLAN stripping failed, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 	else
 		vsi->info.outer_vlan_flags = ctxt->info.outer_vlan_flags;
 
@@ -544,7 +544,7 @@ int ice_vsi_dis_outer_stripping(struct ice_vsi *vsi)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err)
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for disabling outer VLAN stripping failed, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 	else
 		vsi->info.outer_vlan_flags = ctxt->info.outer_vlan_flags;
 
@@ -604,7 +604,7 @@ int ice_vsi_ena_outer_insertion(struct ice_vsi *vsi, u16 tpid)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err)
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for enabling outer VLAN insertion failed, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 	else
 		vsi->info.outer_vlan_flags = ctxt->info.outer_vlan_flags;
 
@@ -654,7 +654,7 @@ int ice_vsi_dis_outer_insertion(struct ice_vsi *vsi)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err)
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for disabling outer VLAN insertion failed, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 	else
 		vsi->info.outer_vlan_flags = ctxt->info.outer_vlan_flags;
 
@@ -720,7 +720,7 @@ __ice_vsi_set_outer_port_vlan(struct ice_vsi *vsi, u16 vlan_info, u16 tpid)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for setting outer port based VLAN failed, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 	} else {
 		vsi->info.port_based_outer_vlan = ctxt->info.port_based_outer_vlan;
 		vsi->info.outer_vlan_flags = ctxt->info.outer_vlan_flags;
@@ -782,7 +782,7 @@ int ice_vsi_clear_outer_port_vlan(struct ice_vsi *vsi)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err)
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for clearing outer port based VLAN failed, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 
 	kfree(ctxt);
 	return err;
@@ -830,7 +830,7 @@ int ice_vsi_clear_port_vlan(struct ice_vsi *vsi)
 	err = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (err) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for clearing port based VLAN failed, err %d aq_err %s\n",
-			err, ice_aq_str(hw->adminq.sq_last_status));
+			err, libie_aq_str(hw->adminq.sq_last_status));
 	} else {
 		vsi->info.port_based_outer_vlan =
 			ctxt->info.port_based_outer_vlan;
-- 
2.42.0

