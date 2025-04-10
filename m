Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 7C248A83FD0
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 12:01:47 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 37ABB61077;
	Thu, 10 Apr 2025 10:01:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W17yH7JTWErr; Thu, 10 Apr 2025 10:01:44 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 91449608C3
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744279304;
	bh=jZJ3J01hlpsjNNofUs3GUq9gpHoRuk6VJYx3nHv9mqw=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lDusWyRg4p9wUsijCgE4pix29lGi8C8/k/+3/Mmoj08agSzhDqMP8xODX/JPNUEEl
	 kLWuHhTglPn6JoF12zHs70EmsH3iFMpiJTKjTnT3xOnPoIiVr0mIT3ty3C7+Vwi/f7
	 SswXj9jou7rjN8OBhd8XKL2SI4CsAKCLI4ZBJHWjuUvgt8lPS3G7BhYzGHokP5qhNh
	 ul5esF9Pab2u3GE5+cmeeKj0kesbCHhkwJuBp7U50iWrUz43ZnZmpriF49vzFvnd9q
	 1v5VA3fBuz0mxqAk82l1wPAH2ZWwjNbnfkhu7dBDTU9Z65Ht6Ha4ynh0ZpYRDGkXlL
	 VTuxVWJhdln1g==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 91449608C3;
	Thu, 10 Apr 2025 10:01:44 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id B9FF8201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:42 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A02BC4027C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:42 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ABOUQId9ft4U for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 10:01:41 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 59BEF40926
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 59BEF40926
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 59BEF40926
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:41 +0000 (UTC)
X-CSE-ConnectionGUID: UBxfNBAJRFKdUEAfVEoyHQ==
X-CSE-MsgGUID: 251XNt3tRZSzXqAnsYcKDg==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="63183913"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63183913"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 03:01:41 -0700
X-CSE-ConnectionGUID: ICBFiiF8Qs2Hc2S4uJsfSA==
X-CSE-MsgGUID: d3417k+tQlqXe76MaMp4DQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159819760"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2025 03:01:39 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Thu, 10 Apr 2025 12:01:19 +0200
Message-ID: <20250410100121.2353754-7-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744279301; x=1775815301;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0vvUX5v/0e1I9h7yTJPzT7ab9Uexw1OGSLXPxfePd/4=;
 b=TEmN48aIBUNc1tAGbZjv0gthPW2zab9SQcbop3TYJn5IjkOLULAIR/Ai
 C1RXS6WcS9aTpQ/0jV6ZIhKV/Dzr9Ir7YbMveAckXLnwr8RSDTCScM7U+
 Kg5JqyG4YvtEjKaj89vJovVxUhG8e8CiyIudoC3iPh+wCBB+Raf1wEuZ4
 Qn/YQBlcX/N0f/EQZ/C+EEa25vRDSoA/5GIV58FDYp6uix08SP+3ZpDqa
 f36XNHoY3mahUjixS/mCzsOkxJpr6T9NrNpX0i0QZrwT20shqI3DsdKA1
 GuCLRU69W7HTAnqgX51Z+VkI5g6+GJG+Kdhr9gIXCrZ4htKffw2dxud7e
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=TEmN48aI
Subject: [Intel-wired-lan] [iwl-next v2 6/8] ice: use libie_aq_str
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
 drivers/net/ethernet/intel/ice/ice_main.c     | 69 +++----------------
 drivers/net/ethernet/intel/ice/ice_virtchnl.c |  4 +-
 .../net/ethernet/intel/ice/ice_vsi_vlan_lib.c | 24 +++----
 11 files changed, 59 insertions(+), 108 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 5a331c1c76cb..d5de9bc8b1b6 100644
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
index 5c2db1117d41..5ff377baeaab 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -969,7 +969,6 @@ int ice_plug_aux_dev(struct ice_pf *pf);
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
index 9032074a6a38..5ca13c8373a8 100644
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
 
@@ -3604,15 +3604,15 @@ ice_set_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 
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
 
@@ -3943,7 +3943,7 @@ static int ice_vsi_set_dflt_rss_lut(struct ice_vsi *vsi, int req_rss_size)
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
index 78be8e9d4151..961c2b7106c8 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3787,11 +3787,11 @@ int ice_set_link(struct ice_vsi *vsi, bool ena)
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
index 36b4a3257129..e5db36585c71 100644
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
@@ -7931,56 +7932,6 @@ static int ice_eth_ioctl(struct net_device *netdev, struct ifreq *ifr, int cmd)
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
-	case LIBIE_AQ_RC_ESRCH:
-		return "ICE_AQ_RC_ESRCH";
-	case LIBIE_AQ_RC_EIO:
-		return "ICE_AQ_RC_EIO";
-	case LIBIE_AQ_RC_EAGAIN:
-		return "ICE_AQ_RC_EAGAIN";
-	case LIBIE_AQ_RC_EACCES:
-		return "ICE_AQ_RC_EACCES";
-	}
-
-	return "ICE_AQ_RC_UNKNOWN";
-}
-
 /**
  * ice_set_rss_lut - Set RSS LUT
  * @vsi: Pointer to VSI structure
@@ -8006,7 +7957,7 @@ int ice_set_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	status = ice_aq_set_rss_lut(hw, &params);
 	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS lut, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 
 	return status;
 }
@@ -8029,7 +7980,7 @@ int ice_set_rss_key(struct ice_vsi *vsi, u8 *seed)
 	status = ice_aq_set_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
 	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot set RSS key, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 
 	return status;
 }
@@ -8059,7 +8010,7 @@ int ice_get_rss_lut(struct ice_vsi *vsi, u8 *lut, u16 lut_size)
 	status = ice_aq_get_rss_lut(hw, &params);
 	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS lut, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 
 	return status;
 }
@@ -8082,7 +8033,7 @@ int ice_get_rss_key(struct ice_vsi *vsi, u8 *seed)
 	status = ice_aq_get_rss_key(hw, vsi->idx, (struct ice_aqc_get_set_rss_keys *)seed);
 	if (status)
 		dev_err(ice_pf_to_dev(vsi->back), "Cannot get RSS key, err %d aq_err %s\n",
-			status, ice_aq_str(hw->adminq.sq_last_status));
+			status, libie_aq_str(hw->adminq.sq_last_status));
 
 	return status;
 }
@@ -8199,7 +8150,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 	ret = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (ret) {
 		dev_err(ice_pf_to_dev(vsi->back), "update VSI for bridge mode failed, bmode = %d err %d aq_err %s\n",
-			bmode, ret, ice_aq_str(hw->adminq.sq_last_status));
+			bmode, ret, libie_aq_str(hw->adminq.sq_last_status));
 		goto out;
 	}
 	/* Update sw flags for book keeping */
@@ -8267,7 +8218,7 @@ ice_bridge_setlink(struct net_device *dev, struct nlmsghdr *nlh,
 		if (err) {
 			netdev_err(dev, "switch rule update failed, mode = %d err %d aq_err %s\n",
 				   mode, err,
-				   ice_aq_str(hw->adminq.sq_last_status));
+				   libie_aq_str(hw->adminq.sq_last_status));
 			/* revert hw->evb_veb */
 			hw->evb_veb = (pf_sw->bridge_mode == BRIDGE_MODE_VEB);
 			return err;
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl.c b/drivers/net/ethernet/intel/ice/ice_virtchnl.c
index a61f1037226f..c4fb7a15a13a 100644
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

