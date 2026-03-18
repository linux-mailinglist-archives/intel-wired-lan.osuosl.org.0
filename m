Return-Path: <intel-wired-lan-bounces@osuosl.org>
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from mail.lfdr.de
	by lfdr with LMTP
	id YCx3KTQTu2k3ewIAu9opvQ
	(envelope-from <intel-wired-lan-bounces@osuosl.org>)
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 22:03:48 +0100
X-Original-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id D82602C2CF8
	for <lists+intel-wired-lan@lfdr.de>; Wed, 18 Mar 2026 22:03:47 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 6B3CF60DD7;
	Wed, 18 Mar 2026 21:03:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ZOv3DT2S35L4; Wed, 18 Mar 2026 21:03:45 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A5F1B60DDC
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1773867825;
	bh=vz8nEVx12vxjqyucT09gFOK5LpmQKcJZtc0FIhR6HvM=;
	h=From:To:Cc:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=Ut2ccjYZLD0x+iQ1D985IylVWiLp42ozTZJidUk8goTsLWxU3ELq9usqfYz7gOaVi
	 ru/AOIiRFEltHJaZd5c/+JgF0eGOsOV8KzLTtps5DpU9WReZMM0T+EK1A4x1EghYvn
	 r7i/qmTMMs9t+M8NCwuT/762Q6jFyiIojQghcM3R8QwnG9ySAmMKm750W7L0er63ZM
	 CrSez5Zn3Vwilg6MBJQV1GgDP4vgrh+TfnGpUYGFn18cyeiK7qZFxn7l5E2mCN5eU9
	 DoxZxwfxrItmE3oLn+0HKH4aZkBS2daHb+Zf6F9N1jeUwSsifkKVjLB+HElOJhZHnN
	 SxCknyQzgoHVg==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id A5F1B60DDC;
	Wed, 18 Mar 2026 21:03:45 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
 by lists1.osuosl.org (Postfix) with ESMTP id 3B2301B6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 21:03:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 2C91340575
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 21:03:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NTXKPhoR4lZO for <intel-wired-lan@lists.osuosl.org>;
 Wed, 18 Mar 2026 21:03:43 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=paul.greenwalt@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 3538740573
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 3538740573
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 3538740573
 for <intel-wired-lan@lists.osuosl.org>; Wed, 18 Mar 2026 21:03:42 +0000 (UTC)
X-CSE-ConnectionGUID: TKuDGSk0TnSAR3gbjICj1w==
X-CSE-MsgGUID: i/GlNy5LQtOE2o3ElZJuWQ==
X-IronPort-AV: E=McAfee;i="6800,10657,11733"; a="85568016"
X-IronPort-AV: E=Sophos;i="6.23,128,1770624000"; d="scan'208";a="85568016"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 18 Mar 2026 14:03:42 -0700
X-CSE-ConnectionGUID: GKscBPu6SZmuDiJ0XX5lNg==
X-CSE-MsgGUID: J3va7b9SQ/u5pXor2QZOow==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.23,128,1770624000"; d="scan'208";a="253242975"
Received: from unknown (HELO fedora.jf.intel.com) ([10.166.5.147])
 by orviesa002.jf.intel.com with ESMTP; 18 Mar 2026 14:03:42 -0700
From: Paul Greenwalt <paul.greenwalt@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: Paul Greenwalt <paul.greenwalt@intel.com>,
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Date: Wed, 18 Mar 2026 09:23:51 -0400
Message-ID: <20260318132351.428749-1-paul.greenwalt@intel.com>
X-Mailer: git-send-email 2.52.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1773867823; x=1805403823;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=djPEqXEX45keQbn/CZLMon+YslmkUef0cNi3LSj4yjk=;
 b=eXeYR64/wLovSvhGfW6+/6I+b+Wn3r2n5U9XDuRWj6tLUR2RUTo0o90R
 hMgPO7wXj7ijFF8CzmsevXz/0M9SsxC52EXVqQaoVLq47Y7yBQZN/s/W5
 3WE357NN/FGV8ZjvpxPs6Nlcadv0mn8kzkED5oSqyKm2rfhb6i6PAWjrc
 OztbbCzAEnpNpmKOO+KBhWFkgoZ1SWjBH5TufOJR4HDU1rBA6bWeO3CwB
 l933Tk59L+BllqARbL6MegrLxXfc+6qUz7wmF1gIM39xBI+kgsNCwUqLr
 fVLrSy2hF1NtpR+fzHRL0htg2OY/E1VzwIegKiDOPFE1vTWpnE/MysCJx
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=eXeYR64/
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: fix PHY config on media
 change with link-down-on-close
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
X-Spamd-Result: default: False [0.79 / 15.00];
	MID_CONTAINS_FROM(1.00)[];
	R_MISSING_CHARSET(0.50)[];
	MAILLIST(-0.20)[mailman];
	R_DKIM_ALLOW(-0.20)[osuosl.org:s=default];
	R_SPF_ALLOW(-0.20)[+mx];
	MIME_GOOD(-0.10)[text/plain];
	DMARC_POLICY_SOFTFAIL(0.10)[intel.com : SPF not aligned (relaxed), DKIM not aligned (relaxed),none];
	RWL_MAILSPIKE_GOOD(-0.10)[140.211.166.136:from];
	HAS_LIST_UNSUB(-0.01)[];
	FORGED_RECIPIENTS_MAILLIST(0.00)[];
	RCVD_TLS_LAST(0.00)[];
	RECEIVED_HELO_LOCALHOST(0.00)[];
	ARC_NA(0.00)[];
	TO_DN_SOME(0.00)[];
	MIME_TRACE(0.00)[0:+];
	RCPT_COUNT_THREE(0.00)[3];
	FORGED_SENDER_MAILLIST(0.00)[];
	DBL_BLOCKED_OPENRESOLVER(0.00)[intel.com:email,intel.com:mid,osuosl.org:dkim,smtp3.osuosl.org:helo,smtp3.osuosl.org:rdns];
	FROM_NEQ_ENVFROM(0.00)[paul.greenwalt@intel.com,intel-wired-lan-bounces@osuosl.org];
	FROM_HAS_DN(0.00)[];
	DKIM_TRACE(0.00)[osuosl.org:+];
	PREVIOUSLY_DELIVERED(0.00)[intel-wired-lan@lists.osuosl.org];
	TAGGED_RCPT(0.00)[intel-wired-lan];
	NEURAL_HAM(-0.00)[-0.999];
	ASN(0.00)[asn:3701, ipnet:140.211.0.0/16, country:US];
	RCVD_COUNT_SEVEN(0.00)[9]
X-Rspamd-Queue-Id: D82602C2CF8
X-Rspamd-Action: no action
X-Rspamd-Server: lfdr

Commit 1a3571b5938c ("ice: restore PHY settings on media insertion")
introduced separate flows for setting PHY configuration on media
present: ice_configure_phy() when link-down-on-close is disabled, and
ice_force_phys_link_state() when enabled. The latter incorrectly uses
the previous configuration even after module change, causing link
issues such as wrong speed or no link.

Unify PHY configuration into a single ice_phy_cfg() function with a
link_en parameter, ensuring PHY capabilities are always fetched fresh
from hardware.

Fixes: 1a3571b5938c ("ice: restore PHY settings on media insertion")
Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Signed-off-by: Paul Greenwalt <paul.greenwalt@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 121 +++++-----------------
 1 file changed, 27 insertions(+), 94 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index ebf48feffb30..512e55e974e2 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -1922,82 +1922,6 @@ static void ice_handle_mdd_event(struct ice_pf *pf)
 	ice_print_vfs_mdd_events(pf);
 }
 
-/**
- * ice_force_phys_link_state - Force the physical link state
- * @vsi: VSI to force the physical link state to up/down
- * @link_up: true/false indicates to set the physical link to up/down
- *
- * Force the physical link state by getting the current PHY capabilities from
- * hardware and setting the PHY config based on the determined capabilities. If
- * link changes a link event will be triggered because both the Enable Automatic
- * Link Update and LESM Enable bits are set when setting the PHY capabilities.
- *
- * Returns 0 on success, negative on failure
- */
-static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
-{
-	struct ice_aqc_get_phy_caps_data *pcaps;
-	struct ice_aqc_set_phy_cfg_data *cfg;
-	struct ice_port_info *pi;
-	struct device *dev;
-	int retcode;
-
-	if (!vsi || !vsi->port_info || !vsi->back)
-		return -EINVAL;
-	if (vsi->type != ICE_VSI_PF)
-		return 0;
-
-	dev = ice_pf_to_dev(vsi->back);
-
-	pi = vsi->port_info;
-
-	pcaps = kzalloc_obj(*pcaps);
-	if (!pcaps)
-		return -ENOMEM;
-
-	retcode = ice_aq_get_phy_caps(pi, false, ICE_AQC_REPORT_ACTIVE_CFG, pcaps,
-				      NULL);
-	if (retcode) {
-		dev_err(dev, "Failed to get phy capabilities, VSI %d error %d\n",
-			vsi->vsi_num, retcode);
-		retcode = -EIO;
-		goto out;
-	}
-
-	/* No change in link */
-	if (link_up == !!(pcaps->caps & ICE_AQC_PHY_EN_LINK) &&
-	    link_up == !!(pi->phy.link_info.link_info & ICE_AQ_LINK_UP))
-		goto out;
-
-	/* Use the current user PHY configuration. The current user PHY
-	 * configuration is initialized during probe from PHY capabilities
-	 * software mode, and updated on set PHY configuration.
-	 */
-	cfg = kmemdup(&pi->phy.curr_user_phy_cfg, sizeof(*cfg), GFP_KERNEL);
-	if (!cfg) {
-		retcode = -ENOMEM;
-		goto out;
-	}
-
-	cfg->caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
-	if (link_up)
-		cfg->caps |= ICE_AQ_PHY_ENA_LINK;
-	else
-		cfg->caps &= ~ICE_AQ_PHY_ENA_LINK;
-
-	retcode = ice_aq_set_phy_cfg(&vsi->back->hw, pi, cfg, NULL);
-	if (retcode) {
-		dev_err(dev, "Failed to set phy config, VSI %d error %d\n",
-			vsi->vsi_num, retcode);
-		retcode = -EIO;
-	}
-
-	kfree(cfg);
-out:
-	kfree(pcaps);
-	return retcode;
-}
-
 /**
  * ice_init_nvm_phy_type - Initialize the NVM PHY type
  * @pi: port info structure
@@ -2066,7 +1990,7 @@ static void ice_init_link_dflt_override(struct ice_port_info *pi)
  * first time media is available. The ICE_LINK_DEFAULT_OVERRIDE_PENDING state
  * is used to indicate that the user PHY cfg default override is initialized
  * and the PHY has not been configured with the default override settings. The
- * state is set here, and cleared in ice_configure_phy the first time the PHY is
+ * state is set here, and cleared in ice_phy_cfg the first time the PHY is
  * configured.
  *
  * This function should be called only if the FW doesn't support default
@@ -2172,14 +2096,18 @@ static int ice_init_phy_user_cfg(struct ice_port_info *pi)
 }
 
 /**
- * ice_configure_phy - configure PHY
+ * ice_phy_cfg - configure PHY
  * @vsi: VSI of PHY
+ * @link_en: true/false indicates to set link to enable/disable
  *
  * Set the PHY configuration. If the current PHY configuration is the same as
- * the curr_user_phy_cfg, then do nothing to avoid link flap. Otherwise
- * configure the based get PHY capabilities for topology with media.
+ * the curr_user_phy_cfg and link_en hasn't changed, then do nothing to avoid
+ * link flap. Otherwise configure the PHY based get PHY capabilities for
+ * topology with media and link_en.
+ *
+ * Return: 0 on success, negative on failure
  */
-static int ice_configure_phy(struct ice_vsi *vsi)
+static int ice_phy_cfg(struct ice_vsi *vsi, bool link_en)
 {
 	struct device *dev = ice_pf_to_dev(vsi->back);
 	struct ice_port_info *pi = vsi->port_info;
@@ -2199,9 +2127,6 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	    phy->link_info.topo_media_conflict == ICE_AQ_LINK_TOPO_UNSUPP_MEDIA)
 		return -EPERM;
 
-	if (test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, pf->flags))
-		return ice_force_phys_link_state(vsi, true);
-
 	pcaps = kzalloc_obj(*pcaps);
 	if (!pcaps)
 		return -ENOMEM;
@@ -2215,10 +2140,8 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 		goto done;
 	}
 
-	/* If PHY enable link is configured and configuration has not changed,
-	 * there's nothing to do
-	 */
-	if (pcaps->caps & ICE_AQC_PHY_EN_LINK &&
+	/* Configuration has not changed. There's nothing to do. */
+	if (link_en == !!(pcaps->caps & ICE_AQC_PHY_EN_LINK) &&
 	    ice_phy_caps_equals_cfg(pcaps, &phy->curr_user_phy_cfg))
 		goto done;
 
@@ -2282,8 +2205,12 @@ static int ice_configure_phy(struct ice_vsi *vsi)
 	 */
 	ice_cfg_phy_fc(pi, cfg, phy->curr_user_fc_req);
 
-	/* Enable link and link update */
-	cfg->caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT | ICE_AQ_PHY_ENA_LINK;
+	/* Enable/Disable link and link update */
+	cfg->caps |= ICE_AQ_PHY_ENA_AUTO_LINK_UPDT;
+	if (link_en)
+		cfg->caps |= ICE_AQ_PHY_ENA_LINK;
+	else
+		cfg->caps &= ~ICE_AQ_PHY_ENA_LINK;
 
 	err = ice_aq_set_phy_cfg(&pf->hw, pi, cfg, NULL);
 	if (err)
@@ -2336,7 +2263,7 @@ static void ice_check_media_subtask(struct ice_pf *pf)
 		    test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, vsi->back->flags))
 			return;
 
-		err = ice_configure_phy(vsi);
+		err = ice_phy_cfg(vsi, true);
 		if (!err)
 			clear_bit(ICE_FLAG_NO_MEDIA, pf->flags);
 
@@ -4892,9 +4819,15 @@ static int ice_init_link(struct ice_pf *pf)
 
 		if (!test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, pf->flags)) {
 			struct ice_vsi *vsi = ice_get_main_vsi(pf);
+			struct ice_link_default_override_tlv *ldo;
+			bool link_en;
+
+			ldo = &pf->link_dflt_override;
+			link_en = !(ldo->options &
+				    ICE_LINK_OVERRIDE_AUTO_LINK_DIS);
 
 			if (vsi)
-				ice_configure_phy(vsi);
+				ice_phy_cfg(vsi, link_en);
 		}
 	} else {
 		set_bit(ICE_FLAG_NO_MEDIA, pf->flags);
@@ -9702,7 +9635,7 @@ int ice_open_internal(struct net_device *netdev)
 			}
 		}
 
-		err = ice_configure_phy(vsi);
+		err = ice_phy_cfg(vsi, true);
 		if (err) {
 			netdev_err(netdev, "Failed to set physical link up, error %d\n",
 				   err);
@@ -9743,7 +9676,7 @@ int ice_stop(struct net_device *netdev)
 	}
 
 	if (test_bit(ICE_FLAG_LINK_DOWN_ON_CLOSE_ENA, vsi->back->flags)) {
-		int link_err = ice_force_phys_link_state(vsi, false);
+		int link_err = ice_phy_cfg(vsi, false);
 
 		if (link_err) {
 			if (link_err == -ENOMEDIUM)
-- 
2.52.0

