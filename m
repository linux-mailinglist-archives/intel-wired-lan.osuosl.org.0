Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 59F3766281A
	for <lists+intel-wired-lan@lfdr.de>; Mon,  9 Jan 2023 15:08:45 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id DFB53408DB;
	Mon,  9 Jan 2023 14:08:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DFB53408DB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673273323;
	bh=XbnfL8IlwOX7rLv/feQcdaI08AsrLQcgoYgf4LbSD30=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=6oPKKJyFHV69iF7TJ8aO4povsKA8S3+O7xKlBBniuUUFQV0/DzBuaZC+EepDNFTqL
	 YBE7shu8Oky5eMU2bZV/zd3M4mQk+Jczw8cFg+CEz03yA+7s/mgqjl1PLAVGCXak4z
	 0caR2DDFtPDz8cuhjnh6pRX8lF5wNPJnmNk+GA7cwJqOkVE1q/ylYGWgftYD0s15Gv
	 vrsJDPKGeAIrPJM1kLs74zy+oYOE7XmggXPZGV24DLhYDfZrXZW/OH5TR6UwVpDs+T
	 jMPel7NMDhwR4rITTKI8xp5zWdNv1umWV/RgJ2mTBDD7xPwkhVocwchAtMS9zy3Vkx
	 RRNxGWmxwnZCg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Bow_dDmCa4AF; Mon,  9 Jan 2023 14:08:41 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 5ECC54031F;
	Mon,  9 Jan 2023 14:08:41 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5ECC54031F
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EF4751BF3FC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 14:08:26 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C8EEE404AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 14:08:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C8EEE404AA
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id cRNPwYMED4ty for <intel-wired-lan@lists.osuosl.org>;
 Mon,  9 Jan 2023 14:08:24 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 284314071B
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 284314071B
 for <intel-wired-lan@lists.osuosl.org>; Mon,  9 Jan 2023 14:08:24 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="385181273"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="385181273"
Received: from orsmga006.jf.intel.com ([10.7.209.51])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 09 Jan 2023 06:08:23 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10585"; a="634218924"
X-IronPort-AV: E=Sophos;i="5.96,311,1665471600"; d="scan'208";a="634218924"
Received: from s240.igk.intel.com (HELO s048.nql.local) ([10.102.18.202])
 by orsmga006.jf.intel.com with ESMTP; 09 Jan 2023 06:08:21 -0800
From: Jan Sokolowski <jan.sokolowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  9 Jan 2023 15:11:20 +0100
Message-Id: <20230109141120.3197817-6-jan.sokolowski@intel.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20230109141120.3197817-1-jan.sokolowski@intel.com>
References: <20230109141120.3197817-1-jan.sokolowski@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673273304; x=1704809304;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=qQAOwGVoQBL6f/vJzqgcOjMeAHlwuuxPK6dr8a6jS68=;
 b=dn0xmkGBoKi+g3nbbmO1zPuI9VbvK3ewYfntOBNm9C4R4Fx5wSemQMUo
 3tbIR2dBhaXHFQJU5u3Fv41702QYo1xxERWidlyHsFpeCd5tfSC5QXtT+
 n9WQLFIGONZ5RuCDe0mIqs5v82Ow2fjWwXm4f7vd2S8MDV4wZ2n8yh+kL
 HsZbS764zm1D4NeGTeh4RlcuuuTUEZm2NYR9ikkVDb8cDO4hLkb088NT4
 hLDN7R/jpSAgHaNUo6qp38mPHeamp/bPTmU+qPgwGkdnO9/s7ZIwfVl3L
 24L/RkdNs1g43zvYnLRlObWJ2KIXvCDrSyenzLidLA0FLRK7xxRbse99n
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dn0xmkGB
Subject: [Intel-wired-lan] [PATCH net-next v5 5/5] i40e: use ERR_PTR error
 print in i40e messages
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

In i40e_status removal patches, i40e_status conversion
to strings was removed in order to easily refactor
the code to use standard errornums. This however made it
more difficult for read error logs.

Use %pe formatter to print error messages in human-readable
format.

Signed-off-by: Jan Sokolowski <jan.sokolowski@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_client.c |   8 +-
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |  16 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  40 +--
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 298 +++++++++---------
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |   4 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  28 +-
 6 files changed, 197 insertions(+), 197 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index cedb9d6fa37b..639c5a1ca853 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -686,8 +686,8 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
 	ctxt.flags = I40E_AQ_VSI_TYPE_PF;
 	if (err) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't get PF vsi config, err %d aq_err %s\n",
-			 err,
+			 "couldn't get PF vsi config, err %pe aq_err %s\n",
+			 ERR_PTR(err),
 			 i40e_aq_str(&pf->hw,
 				     pf->hw.aq.asq_last_status));
 		return -ENOENT;
@@ -714,8 +714,8 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
 		err = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, NULL);
 		if (err) {
 			dev_info(&pf->pdev->dev,
-				 "update VSI ctxt for PE failed, err %d aq_err %s\n",
-				 err,
+				 "update VSI ctxt for PE failed, err %pe aq_err %s\n",
+				 ERR_PTR(err),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 		}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
index bba70bd5703b..195421d863ab 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
@@ -135,8 +135,8 @@ static int i40e_dcbnl_ieee_setets(struct net_device *netdev,
 	ret = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Failed setting DCB ETS configuration err %d aq_err %s\n",
-			 ret,
+			 "Failed setting DCB ETS configuration err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
@@ -174,8 +174,8 @@ static int i40e_dcbnl_ieee_setpfc(struct net_device *netdev,
 	ret = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Failed setting DCB PFC configuration err %d aq_err %s\n",
-			 ret,
+			 "Failed setting DCB PFC configuration err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
@@ -225,8 +225,8 @@ static int i40e_dcbnl_ieee_setapp(struct net_device *netdev,
 	ret = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Failed setting DCB configuration err %d aq_err %s\n",
-			 ret,
+			 "Failed setting DCB configuration err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
@@ -290,8 +290,8 @@ static int i40e_dcbnl_ieee_delapp(struct net_device *netdev,
 	ret = i40e_hw_dcb_config(pf, &pf->tmp_cfg);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Failed setting DCB configuration err %d aq_err %s\n",
-			 ret,
+			 "Failed setting DCB configuration err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 46c74c48ce62..2f1e50b247fd 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1456,8 +1456,8 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 		status = i40e_aq_set_phy_config(hw, &config, NULL);
 		if (status) {
 			netdev_info(netdev,
-				    "Set phy config failed, err %d aq_err %s\n",
-				    status,
+				    "Set phy config failed, err %pe aq_err %s\n",
+				    ERR_PTR(status),
 				    i40e_aq_str(hw, hw->aq.asq_last_status));
 			err = -EAGAIN;
 			goto done;
@@ -1466,8 +1466,8 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 		status = i40e_update_link_info(hw);
 		if (status)
 			netdev_dbg(netdev,
-				   "Updating link info failed with err %d aq_err %s\n",
-				   status,
+				   "Updating link info failed with err %pe aq_err %s\n",
+				   ERR_PTR(status),
 				   i40e_aq_str(hw, hw->aq.asq_last_status));
 
 	} else {
@@ -1518,8 +1518,8 @@ static int i40e_set_fec_cfg(struct net_device *netdev, u8 fec_cfg)
 		status = i40e_aq_set_phy_config(hw, &config, NULL);
 		if (status) {
 			netdev_info(netdev,
-				    "Set phy config failed, err %d aq_err %s\n",
-				    status,
+				    "Set phy config failed, err %pe aq_err %s\n",
+				    ERR_PTR(status),
 				    i40e_aq_str(hw, hw->aq.asq_last_status));
 			err = -EAGAIN;
 			goto done;
@@ -1532,8 +1532,8 @@ static int i40e_set_fec_cfg(struct net_device *netdev, u8 fec_cfg)
 			 * (e.g. no physical connection etc.)
 			 */
 			netdev_dbg(netdev,
-				   "Updating link info failed with err %d aq_err %s\n",
-				   status,
+				   "Updating link info failed with err %pe aq_err %s\n",
+				   ERR_PTR(status),
 				   i40e_aq_str(hw, hw->aq.asq_last_status));
 	}
 
@@ -1639,8 +1639,8 @@ static int i40e_nway_reset(struct net_device *netdev)
 
 	ret = i40e_aq_set_link_restart_an(hw, link_up, NULL);
 	if (ret) {
-		netdev_info(netdev, "link restart failed, err %d aq_err %s\n",
-			    ret,
+		netdev_info(netdev, "link restart failed, err %pe aq_err %s\n",
+			    ERR_PTR(ret),
 			    i40e_aq_str(hw, hw->aq.asq_last_status));
 		return -EIO;
 	}
@@ -1756,20 +1756,20 @@ static int i40e_set_pauseparam(struct net_device *netdev,
 	status = i40e_set_fc(hw, &aq_failures, link_up);
 
 	if (aq_failures & I40E_SET_FC_AQ_FAIL_GET) {
-		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %d aq_err %s\n",
-			    status,
+		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %pe aq_err %s\n",
+			    ERR_PTR(status),
 			    i40e_aq_str(hw, hw->aq.asq_last_status));
 		err = -EAGAIN;
 	}
 	if (aq_failures & I40E_SET_FC_AQ_FAIL_SET) {
-		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %d aq_err %s\n",
-			    status,
+		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %pe aq_err %s\n",
+			    ERR_PTR(status),
 			    i40e_aq_str(hw, hw->aq.asq_last_status));
 		err = -EAGAIN;
 	}
 	if (aq_failures & I40E_SET_FC_AQ_FAIL_UPDATE) {
-		netdev_info(netdev, "Set fc failed on the get_link_info call with err %d aq_err %s\n",
-			    status,
+		netdev_info(netdev, "Set fc failed on the get_link_info call with err %pe aq_err %s\n",
+			    ERR_PTR(status),
 			    i40e_aq_str(hw, hw->aq.asq_last_status));
 		err = -EAGAIN;
 	}
@@ -5364,8 +5364,8 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 						0, NULL);
 		if (ret && pf->hw.aq.asq_last_status != I40E_AQ_RC_ESRCH) {
 			dev_info(&pf->pdev->dev,
-				 "couldn't set switch config bits, err %d aq_err %s\n",
-				 ret,
+				 "couldn't set switch config bits, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 			/* not a fatal problem, just keep going */
@@ -5437,8 +5437,8 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 					return -EBUSY;
 				default:
 					dev_warn(&pf->pdev->dev,
-						 "Starting FW LLDP agent failed: error: %d, %s\n",
-						 status,
+						 "Starting FW LLDP agent failed: error: %pe, %s\n",
+						 ERR_PTR(status),
 						 i40e_aq_str(&pf->hw,
 							     adq_err));
 					return -EINVAL;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 97d5369db921..e50cf0a30540 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1824,8 +1824,8 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
 		ret = i40e_aq_mac_address_write(hw, I40E_AQC_WRITE_TYPE_LAA_WOL,
 						addr->sa_data, NULL);
 		if (ret)
-			netdev_info(netdev, "Ignoring error from firmware on LAA update, status %d, AQ ret %s\n",
-				    ret,
+			netdev_info(netdev, "Ignoring error from firmware on LAA update, status %pe, AQ ret %s\n",
+				    ERR_PTR(ret),
 				    i40e_aq_str(hw, hw->aq.asq_last_status));
 	}
 
@@ -1856,8 +1856,8 @@ static int i40e_config_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 		ret = i40e_aq_set_rss_key(hw, vsi->id, seed_dw);
 		if (ret) {
 			dev_info(&pf->pdev->dev,
-				 "Cannot set RSS key, err %d aq_err %s\n",
-				 ret,
+				 "Cannot set RSS key, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
 			return ret;
 		}
@@ -1868,8 +1868,8 @@ static int i40e_config_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 		ret = i40e_aq_set_rss_lut(hw, vsi->id, pf_lut, lut, lut_size);
 		if (ret) {
 			dev_info(&pf->pdev->dev,
-				 "Cannot set RSS lut, err %d aq_err %s\n",
-				 ret,
+				 "Cannot set RSS lut, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
 			return ret;
 		}
@@ -2360,8 +2360,8 @@ void i40e_aqc_del_filters(struct i40e_vsi *vsi, const char *vsi_name,
 	if (aq_ret && !(aq_status == I40E_AQ_RC_ENOENT)) {
 		*retval = -EIO;
 		dev_info(&vsi->back->pdev->dev,
-			 "ignoring delete macvlan error on %s, err %d, aq_err %s\n",
-			 vsi_name, aq_ret,
+			 "ignoring delete macvlan error on %s, err %pe, aq_err %s\n",
+			 vsi_name, ERR_PTR(aq_ret),
 			 i40e_aq_str(hw, aq_status));
 	}
 }
@@ -2490,8 +2490,8 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 							   NULL);
 		if (aq_ret) {
 			dev_info(&pf->pdev->dev,
-				 "Set default VSI failed, err %d, aq_err %s\n",
-				 aq_ret,
+				 "Set default VSI failed, err %pe, aq_err %s\n",
+				 ERR_PTR(aq_ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
 		}
 	} else {
@@ -2502,8 +2502,8 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 						  true);
 		if (aq_ret) {
 			dev_info(&pf->pdev->dev,
-				 "set unicast promisc failed, err %d, aq_err %s\n",
-				 aq_ret,
+				 "set unicast promisc failed, err %pe, aq_err %s\n",
+				 ERR_PTR(aq_ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
 		}
 		aq_ret = i40e_aq_set_vsi_multicast_promiscuous(
@@ -2512,8 +2512,8 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 						  promisc, NULL);
 		if (aq_ret) {
 			dev_info(&pf->pdev->dev,
-				 "set multicast promisc failed, err %d, aq_err %s\n",
-				 aq_ret,
+				 "set multicast promisc failed, err %pe, aq_err %s\n",
+				 ERR_PTR(aq_ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
 		}
 	}
@@ -2816,9 +2816,9 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 			retval = i40e_aq_rc_to_posix(aq_ret,
 						     hw->aq.asq_last_status);
 			dev_info(&pf->pdev->dev,
-				 "set multi promisc failed on %s, err %d aq_err %s\n",
+				 "set multi promisc failed on %s, err %pe aq_err %s\n",
 				 vsi_name,
-				 aq_ret,
+				 ERR_PTR(aq_ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
 		} else {
 			dev_info(&pf->pdev->dev, "%s allmulti mode.\n",
@@ -2836,10 +2836,10 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 			retval = i40e_aq_rc_to_posix(aq_ret,
 						     hw->aq.asq_last_status);
 			dev_info(&pf->pdev->dev,
-				 "Setting promiscuous %s failed on %s, err %d aq_err %s\n",
+				 "Setting promiscuous %s failed on %s, err %pe aq_err %s\n",
 				 cur_promisc ? "on" : "off",
 				 vsi_name,
-				 aq_ret,
+				 ERR_PTR(aq_ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
 		}
 	}
@@ -2987,8 +2987,8 @@ void i40e_vlan_stripping_enable(struct i40e_vsi *vsi)
 	ret = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&vsi->back->pdev->dev,
-			 "update vlan stripping failed, err %d aq_err %s\n",
-			 ret,
+			 "update vlan stripping failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&vsi->back->hw,
 				     vsi->back->hw.aq.asq_last_status));
 	}
@@ -3022,8 +3022,8 @@ void i40e_vlan_stripping_disable(struct i40e_vsi *vsi)
 	ret = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&vsi->back->pdev->dev,
-			 "update vlan stripping failed, err %d aq_err %s\n",
-			 ret,
+			 "update vlan stripping failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&vsi->back->hw,
 				     vsi->back->hw.aq.asq_last_status));
 	}
@@ -3267,8 +3267,8 @@ int i40e_vsi_add_pvid(struct i40e_vsi *vsi, u16 vid)
 	ret = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&vsi->back->pdev->dev,
-			 "add pvid failed, err %d aq_err %s\n",
-			 ret,
+			 "add pvid failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&vsi->back->hw,
 				     vsi->back->hw.aq.asq_last_status));
 		return -ENOENT;
@@ -5541,8 +5541,8 @@ static int i40e_vsi_get_bw_info(struct i40e_vsi *vsi)
 	ret = i40e_aq_query_vsi_bw_config(hw, vsi->seid, &bw_config, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't get PF vsi bw config, err %d aq_err %s\n",
-			 ret,
+			 "couldn't get PF vsi bw config, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
@@ -5552,8 +5552,8 @@ static int i40e_vsi_get_bw_info(struct i40e_vsi *vsi)
 					       NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't get PF vsi ets bw config, err %d aq_err %s\n",
-			 ret,
+			 "couldn't get PF vsi ets bw config, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
@@ -5742,8 +5742,8 @@ int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset)
 
 	ret = i40e_aq_update_vsi_params(hw, &ctxt, NULL);
 	if (ret) {
-		dev_info(&pf->pdev->dev, "Update vsi config failed, err %d aq_err %s\n",
-			 ret,
+		dev_info(&pf->pdev->dev, "Update vsi config failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(hw, hw->aq.asq_last_status));
 		return ret;
 	}
@@ -5798,8 +5798,8 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 						  &bw_config, NULL);
 		if (ret) {
 			dev_info(&pf->pdev->dev,
-				 "Failed querying vsi bw info, err %d aq_err %s\n",
-				 ret,
+				 "Failed querying vsi bw info, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(hw, hw->aq.asq_last_status));
 			goto out;
 		}
@@ -5865,8 +5865,8 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 	ret = i40e_aq_update_vsi_params(hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Update vsi tc config failed, err %d aq_err %s\n",
-			 ret,
+			 "Update vsi tc config failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(hw, hw->aq.asq_last_status));
 		goto out;
 	}
@@ -5878,8 +5878,8 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 	ret = i40e_vsi_get_bw_info(vsi);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Failed updating vsi bw info, err %d aq_err %s\n",
-			 ret,
+			 "Failed updating vsi bw info, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(hw, hw->aq.asq_last_status));
 		goto out;
 	}
@@ -5970,8 +5970,8 @@ int i40e_set_bw_limit(struct i40e_vsi *vsi, u16 seid, u64 max_tx_rate)
 					  I40E_MAX_BW_INACTIVE_ACCUM, NULL);
 	if (ret)
 		dev_err(&pf->pdev->dev,
-			"Failed set tx rate (%llu Mbps) for vsi->seid %u, err %d aq_err %s\n",
-			max_tx_rate, seid, ret,
+			"Failed set tx rate (%llu Mbps) for vsi->seid %u, err %pe aq_err %s\n",
+			max_tx_rate, seid, ERR_PTR(ret),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 	return ret;
 }
@@ -6046,8 +6046,8 @@ static void i40e_remove_queue_channels(struct i40e_vsi *vsi)
 			last_aq_status = pf->hw.aq.asq_last_status;
 			if (ret)
 				dev_info(&pf->pdev->dev,
-					 "Failed to delete cloud filter, err %d aq_err %s\n",
-					 ret,
+					 "Failed to delete cloud filter, err %pe aq_err %s\n",
+					 ERR_PTR(ret),
 					 i40e_aq_str(&pf->hw, last_aq_status));
 			kfree(cfilter);
 		}
@@ -6181,8 +6181,8 @@ static int i40e_vsi_reconfig_rss(struct i40e_vsi *vsi, u16 rss_size)
 	ret = i40e_config_rss(vsi, seed, lut, vsi->rss_table_size);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Cannot set RSS lut, err %d aq_err %s\n",
-			 ret,
+			 "Cannot set RSS lut, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(hw, hw->aq.asq_last_status));
 		kfree(lut);
 		return ret;
@@ -6280,8 +6280,8 @@ static int i40e_add_channel(struct i40e_pf *pf, u16 uplink_seid,
 	ret = i40e_aq_add_vsi(hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "add new vsi failed, err %d aq_err %s\n",
-			 ret,
+			 "add new vsi failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw,
 				     pf->hw.aq.asq_last_status));
 		return -ENOENT;
@@ -6526,8 +6526,8 @@ static int i40e_validate_and_set_switch_mode(struct i40e_vsi *vsi)
 					mode, NULL);
 	if (ret && hw->aq.asq_last_status != I40E_AQ_RC_ESRCH)
 		dev_err(&pf->pdev->dev,
-			"couldn't set switch config bits, err %d aq_err %s\n",
-			ret,
+			"couldn't set switch config bits, err %pe aq_err %s\n",
+			ERR_PTR(ret),
 			i40e_aq_str(hw,
 				    hw->aq.asq_last_status));
 
@@ -6727,8 +6727,8 @@ int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc)
 						   &bw_data, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "VEB bw config failed, err %d aq_err %s\n",
-			 ret,
+			 "VEB bw config failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		goto out;
 	}
@@ -6737,8 +6737,8 @@ int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc)
 	ret = i40e_veb_get_bw_info(veb);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Failed getting veb bw config, err %d aq_err %s\n",
-			 ret,
+			 "Failed getting veb bw config, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 	}
 
@@ -6821,8 +6821,8 @@ static int i40e_resume_port_tx(struct i40e_pf *pf)
 	ret = i40e_aq_resume_port_tx(hw, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Resume Port Tx failed, err %d aq_err %s\n",
-			  ret,
+			 "Resume Port Tx failed, err %pe aq_err %s\n",
+			  ERR_PTR(ret),
 			  i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		/* Schedule PF reset to recover */
 		set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
@@ -6846,8 +6846,8 @@ static int i40e_suspend_port_tx(struct i40e_pf *pf)
 	ret = i40e_aq_suspend_port_tx(hw, pf->mac_seid, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Suspend Port Tx failed, err %d aq_err %s\n",
-			 ret,
+			 "Suspend Port Tx failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		/* Schedule PF reset to recover */
 		set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
@@ -6886,8 +6886,8 @@ static int i40e_hw_set_dcb_config(struct i40e_pf *pf,
 	ret = i40e_set_dcb_config(&pf->hw);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Set DCB Config failed, err %d aq_err %s\n",
-			 ret,
+			 "Set DCB Config failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		goto out;
 	}
@@ -7003,8 +7003,8 @@ int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg)
 		 i40e_aqc_opc_modify_switching_comp_ets, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Modify Port ETS failed, err %d aq_err %s\n",
-			 ret,
+			 "Modify Port ETS failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		goto out;
 	}
@@ -7041,8 +7041,8 @@ int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg)
 	ret = i40e_aq_dcb_updated(&pf->hw, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "DCB Updated failed, err %d aq_err %s\n",
-			 ret,
+			 "DCB Updated failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		goto out;
 	}
@@ -7125,8 +7125,8 @@ int i40e_dcb_sw_default_config(struct i40e_pf *pf)
 		 i40e_aqc_opc_enable_switching_comp_ets, NULL);
 	if (err) {
 		dev_info(&pf->pdev->dev,
-			 "Enable Port ETS failed, err %d aq_err %s\n",
-			 err,
+			 "Enable Port ETS failed, err %pe aq_err %s\n",
+			 ERR_PTR(err),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		err = -ENOENT;
 		goto out;
@@ -7205,8 +7205,8 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 		pf->flags |= I40E_FLAG_DISABLE_FW_LLDP;
 	} else {
 		dev_info(&pf->pdev->dev,
-			 "Query for DCB configuration failed, err %d aq_err %s\n",
-			 err,
+			 "Query for DCB configuration failed, err %pe aq_err %s\n",
+			 ERR_PTR(err),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 	}
 
@@ -7444,8 +7444,8 @@ static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 					   NULL);
 	if (err) {
 		dev_err(&pf->pdev->dev,
-			"failed to get phy cap., ret =  %d last_status =  %s\n",
-			err,
+			"failed to get phy cap., ret =  %pe last_status =  %s\n",
+			ERR_PTR(err),
 			i40e_aq_str(hw, hw->aq.asq_last_status));
 		return err;
 	}
@@ -7456,8 +7456,8 @@ static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 					   NULL);
 	if (err) {
 		dev_err(&pf->pdev->dev,
-			"failed to get phy cap., ret =  %d last_status =  %s\n",
-			err,
+			"failed to get phy cap., ret =  %pe last_status =  %s\n",
+			ERR_PTR(err),
 			i40e_aq_str(hw, hw->aq.asq_last_status));
 		return err;
 	}
@@ -7501,8 +7501,8 @@ static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 
 	if (err) {
 		dev_err(&pf->pdev->dev,
-			"set phy config ret =  %d last_status =  %s\n",
-			err,
+			"set phy config ret =  %pe last_status =  %s\n",
+			ERR_PTR(err),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return err;
 	}
@@ -7842,8 +7842,8 @@ static int i40e_fwd_ring_up(struct i40e_vsi *vsi, struct net_device *vdev,
 			rx_ring->netdev = NULL;
 		}
 		dev_info(&pf->pdev->dev,
-			 "Error adding mac filter on macvlan err %d, aq_err %s\n",
-			  ret,
+			 "Error adding mac filter on macvlan err %pe, aq_err %s\n",
+			  ERR_PTR(ret),
 			  i40e_aq_str(hw, aq_err));
 		netdev_err(vdev, "L2fwd offload disabled to L2 filter error\n");
 	}
@@ -7915,8 +7915,8 @@ static int i40e_setup_macvlans(struct i40e_vsi *vsi, u16 macvlan_cnt, u16 qcnt,
 	ret = i40e_aq_update_vsi_params(hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Update vsi tc config failed, err %d aq_err %s\n",
-			 ret,
+			 "Update vsi tc config failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(hw, hw->aq.asq_last_status));
 		return ret;
 	}
@@ -8131,8 +8131,8 @@ static void i40e_fwd_del(struct net_device *netdev, void *vdev)
 				ch->fwd = NULL;
 			} else {
 				dev_info(&pf->pdev->dev,
-					 "Error deleting mac filter on macvlan err %d, aq_err %s\n",
-					  ret,
+					 "Error deleting mac filter on macvlan err %pe, aq_err %s\n",
+					  ERR_PTR(ret),
 					  i40e_aq_str(hw, aq_err));
 			}
 			break;
@@ -8883,7 +8883,7 @@ static int i40e_delete_clsflower(struct i40e_vsi *vsi,
 	kfree(filter);
 	if (err) {
 		dev_err(&pf->pdev->dev,
-			"Failed to delete cloud filter, err %d\n", err);
+			"Failed to delete cloud filter, err %pe\n", ERR_PTR(err));
 		return i40e_aq_rc_to_posix(err, pf->hw.aq.asq_last_status);
 	}
 
@@ -9445,8 +9445,8 @@ static int i40e_handle_lldp_event(struct i40e_pf *pf,
 			pf->flags &= ~I40E_FLAG_DCB_CAPABLE;
 		} else {
 			dev_info(&pf->pdev->dev,
-				 "Failed querying DCB configuration data from firmware, err %d aq_err %s\n",
-				 ret,
+				 "Failed querying DCB configuration data from firmware, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 		}
@@ -10272,8 +10272,8 @@ static void i40e_enable_pf_switch_lb(struct i40e_pf *pf)
 	ret = i40e_aq_get_vsi_params(&pf->hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't get PF vsi config, err %d aq_err %s\n",
-			 ret,
+			 "couldn't get PF vsi config, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return;
 	}
@@ -10284,8 +10284,8 @@ static void i40e_enable_pf_switch_lb(struct i40e_pf *pf)
 	ret = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "update vsi switch failed, err %d aq_err %s\n",
-			 ret,
+			 "update vsi switch failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 	}
 }
@@ -10308,8 +10308,8 @@ static void i40e_disable_pf_switch_lb(struct i40e_pf *pf)
 	ret = i40e_aq_get_vsi_params(&pf->hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't get PF vsi config, err %d aq_err %s\n",
-			 ret,
+			 "couldn't get PF vsi config, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return;
 	}
@@ -10320,8 +10320,8 @@ static void i40e_disable_pf_switch_lb(struct i40e_pf *pf)
 	ret = i40e_aq_update_vsi_params(&vsi->back->hw, &ctxt, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "update vsi switch failed, err %d aq_err %s\n",
-			 ret,
+			 "update vsi switch failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 	}
 }
@@ -10465,8 +10465,8 @@ static int i40e_get_capabilities(struct i40e_pf *pf,
 			buf_len = data_size;
 		} else if (pf->hw.aq.asq_last_status != I40E_AQ_RC_OK || err) {
 			dev_info(&pf->pdev->dev,
-				 "capability discovery failed, err %d aq_err %s\n",
-				 err,
+				 "capability discovery failed, err %pe aq_err %s\n",
+				 ERR_PTR(err),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 			return -ENODEV;
@@ -10603,8 +10603,8 @@ static int i40e_rebuild_cloud_filters(struct i40e_vsi *vsi, u16 seid)
 
 		if (ret) {
 			dev_dbg(&pf->pdev->dev,
-				"Failed to rebuild cloud filter, err %d aq_err %s\n",
-				ret,
+				"Failed to rebuild cloud filter, err %pe aq_err %s\n",
+				ERR_PTR(ret),
 				i40e_aq_str(&pf->hw,
 					    pf->hw.aq.asq_last_status));
 			return ret;
@@ -10844,8 +10844,8 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	/* rebuild the basics for the AdminQ, HMC, and initial HW switch */
 	ret = i40e_init_adminq(&pf->hw);
 	if (ret) {
-		dev_info(&pf->pdev->dev, "Rebuild AdminQ failed, err %d aq_err %s\n",
-			 ret,
+		dev_info(&pf->pdev->dev, "Rebuild AdminQ failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		goto clear_recovery;
 	}
@@ -10956,8 +10956,8 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 					 I40E_AQ_EVENT_MEDIA_NA |
 					 I40E_AQ_EVENT_MODULE_QUAL_FAIL), NULL);
 	if (ret)
-		dev_info(&pf->pdev->dev, "set phy mask fail, err %d aq_err %s\n",
-			 ret,
+		dev_info(&pf->pdev->dev, "set phy mask fail, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 
 	/* Rebuild the VSIs and VEBs that existed before reset.
@@ -11060,8 +11060,8 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 		msleep(75);
 		ret = i40e_aq_set_link_restart_an(&pf->hw, true, NULL);
 		if (ret)
-			dev_info(&pf->pdev->dev, "link restart failed, err %d aq_err %s\n",
-				 ret,
+			dev_info(&pf->pdev->dev, "link restart failed, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 	}
@@ -11089,9 +11089,9 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	ret = i40e_set_promiscuous(pf, pf->cur_promisc);
 	if (ret)
 		dev_warn(&pf->pdev->dev,
-			 "Failed to restore promiscuous setting: %s, err %d aq_err %s\n",
+			 "Failed to restore promiscuous setting: %s, err %pe aq_err %s\n",
 			 pf->cur_promisc ? "on" : "off",
-			 ret,
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 
 	i40e_reset_all_vfs(pf, true);
@@ -12225,8 +12225,8 @@ static int i40e_get_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 			(struct i40e_aqc_get_set_rss_key_data *)seed);
 		if (ret) {
 			dev_info(&pf->pdev->dev,
-				 "Cannot get RSS key, err %d aq_err %s\n",
-				 ret,
+				 "Cannot get RSS key, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 			return ret;
@@ -12239,8 +12239,8 @@ static int i40e_get_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 		ret = i40e_aq_get_rss_lut(hw, vsi->id, pf_lut, lut, lut_size);
 		if (ret) {
 			dev_info(&pf->pdev->dev,
-				 "Cannot get RSS lut, err %d aq_err %s\n",
-				 ret,
+				 "Cannot get RSS lut, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 			return ret;
@@ -12580,8 +12580,8 @@ int i40e_commit_partition_bw_setting(struct i40e_pf *pf)
 	last_aq_status = pf->hw.aq.asq_last_status;
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Cannot acquire NVM for read access, err %d aq_err %s\n",
-			 ret,
+			 "Cannot acquire NVM for read access, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, last_aq_status));
 		goto bw_commit_out;
 	}
@@ -12597,8 +12597,8 @@ int i40e_commit_partition_bw_setting(struct i40e_pf *pf)
 	last_aq_status = pf->hw.aq.asq_last_status;
 	i40e_release_nvm(&pf->hw);
 	if (ret) {
-		dev_info(&pf->pdev->dev, "NVM read error, err %d aq_err %s\n",
-			 ret,
+		dev_info(&pf->pdev->dev, "NVM read error, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, last_aq_status));
 		goto bw_commit_out;
 	}
@@ -12611,8 +12611,8 @@ int i40e_commit_partition_bw_setting(struct i40e_pf *pf)
 	last_aq_status = pf->hw.aq.asq_last_status;
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "Cannot acquire NVM for write access, err %d aq_err %s\n",
-			 ret,
+			 "Cannot acquire NVM for write access, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, last_aq_status));
 		goto bw_commit_out;
 	}
@@ -12631,8 +12631,8 @@ int i40e_commit_partition_bw_setting(struct i40e_pf *pf)
 	i40e_release_nvm(&pf->hw);
 	if (ret)
 		dev_info(&pf->pdev->dev,
-			 "BW settings NOT SAVED, err %d aq_err %s\n",
-			 ret,
+			 "BW settings NOT SAVED, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, last_aq_status));
 bw_commit_out:
 
@@ -12686,8 +12686,8 @@ static bool i40e_is_total_port_shutdown_enabled(struct i40e_pf *pf)
 
 err_nvm:
 	dev_warn(&pf->pdev->dev,
-		 "total-port-shutdown feature is off due to read nvm error: %d\n",
-		 read_status);
+		 "total-port-shutdown feature is off due to read nvm error: %pe\n",
+		 ERR_PTR(read_status));
 	return ret;
 }
 
@@ -13043,8 +13043,8 @@ static int i40e_udp_tunnel_set_port(struct net_device *netdev,
 	ret = i40e_aq_add_udp_tunnel(hw, ntohs(ti->port), type, &filter_index,
 				     NULL);
 	if (ret) {
-		netdev_info(netdev, "add UDP port failed, err %d aq_err %s\n",
-			    ret,
+		netdev_info(netdev, "add UDP port failed, err %pe aq_err %s\n",
+			    ERR_PTR(ret),
 			    i40e_aq_str(hw, hw->aq.asq_last_status));
 		return -EIO;
 	}
@@ -13063,8 +13063,8 @@ static int i40e_udp_tunnel_unset_port(struct net_device *netdev,
 
 	ret = i40e_aq_del_udp_tunnel(hw, ti->hw_priv, NULL);
 	if (ret) {
-		netdev_info(netdev, "delete UDP port failed, err %d aq_err %s\n",
-			    ret,
+		netdev_info(netdev, "delete UDP port failed, err %pe aq_err %s\n",
+			    ERR_PTR(ret),
 			    i40e_aq_str(hw, hw->aq.asq_last_status));
 		return -EIO;
 	}
@@ -14059,8 +14059,8 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 		ctxt.flags = I40E_AQ_VSI_TYPE_PF;
 		if (ret) {
 			dev_info(&pf->pdev->dev,
-				 "couldn't get PF vsi config, err %d aq_err %s\n",
-				 ret,
+				 "couldn't get PF vsi config, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 			return -ENOENT;
@@ -14096,8 +14096,8 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 			ret = i40e_aq_update_vsi_params(hw, &ctxt, NULL);
 			if (ret) {
 				dev_info(&pf->pdev->dev,
-					 "update vsi failed, err %d aq_err %s\n",
-					 ret,
+					 "update vsi failed, err %pe aq_err %s\n",
+					 ERR_PTR(ret),
 					 i40e_aq_str(&pf->hw,
 						    pf->hw.aq.asq_last_status));
 				ret = -ENOENT;
@@ -14119,9 +14119,9 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 				 * message and continue
 				 */
 				dev_info(&pf->pdev->dev,
-					 "failed to configure TCs for main VSI tc_map 0x%08x, err %d aq_err %s\n",
+					 "failed to configure TCs for main VSI tc_map 0x%08x, err %pe aq_err %s\n",
 					 enabled_tc,
-					 ret,
+					 ERR_PTR(ret),
 					 i40e_aq_str(&pf->hw,
 						    pf->hw.aq.asq_last_status));
 			}
@@ -14215,8 +14215,8 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 		ret = i40e_aq_add_vsi(hw, &ctxt, NULL);
 		if (ret) {
 			dev_info(&vsi->back->pdev->dev,
-				 "add vsi failed, err %d aq_err %s\n",
-				 ret,
+				 "add vsi failed, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 			ret = -ENOENT;
@@ -14247,8 +14247,8 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 	ret = i40e_vsi_get_bw_info(vsi);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't get vsi bw info, err %d aq_err %s\n",
-			 ret,
+			 "couldn't get vsi bw info, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		/* VSI is already added so not tearing that up */
 		ret = 0;
@@ -14697,8 +14697,8 @@ static int i40e_veb_get_bw_info(struct i40e_veb *veb)
 						  &bw_data, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "query veb bw config failed, err %d aq_err %s\n",
-			 ret,
+			 "query veb bw config failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, hw->aq.asq_last_status));
 		goto out;
 	}
@@ -14707,8 +14707,8 @@ static int i40e_veb_get_bw_info(struct i40e_veb *veb)
 						   &ets_data, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "query veb bw ets config failed, err %d aq_err %s\n",
-			 ret,
+			 "query veb bw ets config failed, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, hw->aq.asq_last_status));
 		goto out;
 	}
@@ -14904,8 +14904,8 @@ static int i40e_add_veb(struct i40e_veb *veb, struct i40e_vsi *vsi)
 	/* get a VEB from the hardware */
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't add VEB, err %d aq_err %s\n",
-			 ret,
+			 "couldn't add VEB, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return -EPERM;
 	}
@@ -14915,16 +14915,16 @@ static int i40e_add_veb(struct i40e_veb *veb, struct i40e_vsi *vsi)
 					 &veb->stats_idx, NULL, NULL, NULL);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't get VEB statistics idx, err %d aq_err %s\n",
-			 ret,
+			 "couldn't get VEB statistics idx, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return -EPERM;
 	}
 	ret = i40e_veb_get_bw_info(veb);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't get VEB bw info, err %d aq_err %s\n",
-			 ret,
+			 "couldn't get VEB bw info, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		i40e_aq_delete_element(&pf->hw, veb->seid, NULL);
 		return -ENOENT;
@@ -15180,8 +15180,8 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 	ret = i40e_fetch_switch_configuration(pf, false);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
-			 "couldn't fetch switch config, err %d aq_err %s\n",
-			 ret,
+			 "couldn't fetch switch config, err %pe aq_err %s\n",
+			 ERR_PTR(ret),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		return ret;
 	}
@@ -15207,8 +15207,8 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 						NULL);
 		if (ret && pf->hw.aq.asq_last_status != I40E_AQ_RC_ESRCH) {
 			dev_info(&pf->pdev->dev,
-				 "couldn't set switch config bits, err %d aq_err %s\n",
-				 ret,
+				 "couldn't set switch config bits, err %pe aq_err %s\n",
+				 ERR_PTR(ret),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 			/* not a fatal problem, just keep going */
@@ -16114,8 +16114,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 					 I40E_AQ_EVENT_MEDIA_NA |
 					 I40E_AQ_EVENT_MODULE_QUAL_FAIL), NULL);
 	if (err)
-		dev_info(&pf->pdev->dev, "set phy mask fail, err %d aq_err %s\n",
-			 err,
+		dev_info(&pf->pdev->dev, "set phy mask fail, err %pe aq_err %s\n",
+			 ERR_PTR(err),
 			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 
 	/* Reconfigure hardware for allowing smaller MSS in the case
@@ -16133,8 +16133,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		msleep(75);
 		err = i40e_aq_set_link_restart_an(&pf->hw, true, NULL);
 		if (err)
-			dev_info(&pf->pdev->dev, "link restart failed, err %d aq_err %s\n",
-				 err,
+			dev_info(&pf->pdev->dev, "link restart failed, err %pe aq_err %s\n",
+				 ERR_PTR(err),
 				 i40e_aq_str(&pf->hw,
 					     pf->hw.aq.asq_last_status));
 	}
@@ -16266,8 +16266,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* get the requested speeds from the fw */
 	err = i40e_aq_get_phy_capabilities(hw, false, false, &abilities, NULL);
 	if (err)
-		dev_dbg(&pf->pdev->dev, "get requested speeds ret =  %d last_status =  %s\n",
-			err,
+		dev_dbg(&pf->pdev->dev, "get requested speeds ret =  %pe last_status =  %s\n",
+			ERR_PTR(err),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 	pf->hw.phy.link_info.requested_speeds = abilities.link_speed;
 
@@ -16277,8 +16277,8 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	/* get the supported phy types from the fw */
 	err = i40e_aq_get_phy_capabilities(hw, false, true, &abilities, NULL);
 	if (err)
-		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %d last_status =  %s\n",
-			err,
+		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %pe last_status =  %s\n",
+			ERR_PTR(err),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 
 	/* make sure the MFS hasn't been set lower than the default */
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 159d7d65ea48..4bb300fbb777 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -1429,8 +1429,8 @@ static int i40e_nvmupd_exec_aq(struct i40e_hw *hw,
 				       buff_size, &cmd_details);
 	if (status) {
 		i40e_debug(hw, I40E_DEBUG_NVM,
-			   "%s err %d aq_err %s\n",
-			   __func__, status,
+			   "%s err %pe aq_err %s\n",
+			   __func__, ERR_PTR(status),
 			   i40e_aq_str(hw, hw->aq.asq_last_status));
 		*perrno = i40e_aq_rc_to_posix(status, hw->aq.asq_last_status);
 		return status;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 08b1768ac3ef..e04b1c2ced7a 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1323,9 +1323,9 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 			int aq_err = pf->hw.aq.asq_last_status;
 
 			dev_err(&pf->pdev->dev,
-				"VF %d failed to set multicast promiscuous mode err %d aq_err %s\n",
+				"VF %d failed to set multicast promiscuous mode err %pe aq_err %s\n",
 				vf->vf_id,
-				aq_ret,
+				ERR_PTR(aq_ret),
 				i40e_aq_str(&pf->hw, aq_err));
 
 			return aq_ret;
@@ -1339,9 +1339,9 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 			int aq_err = pf->hw.aq.asq_last_status;
 
 			dev_err(&pf->pdev->dev,
-				"VF %d failed to set unicast promiscuous mode err %d aq_err %s\n",
+				"VF %d failed to set unicast promiscuous mode err %pe aq_err %s\n",
 				vf->vf_id,
-				aq_ret,
+				ERR_PTR(aq_ret),
 				i40e_aq_str(&pf->hw, aq_err));
 		}
 
@@ -1356,9 +1356,9 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 			int aq_err = pf->hw.aq.asq_last_status;
 
 			dev_err(&pf->pdev->dev,
-				"VF %d failed to set multicast promiscuous mode err %d aq_err %s\n",
+				"VF %d failed to set multicast promiscuous mode err %pe aq_err %s\n",
 				vf->vf_id,
-				aq_ret,
+				ERR_PTR(aq_ret),
 				i40e_aq_str(&pf->hw, aq_err));
 
 			if (!aq_tmp)
@@ -1372,9 +1372,9 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 			int aq_err = pf->hw.aq.asq_last_status;
 
 			dev_err(&pf->pdev->dev,
-				"VF %d failed to set unicast promiscuous mode err %d aq_err %s\n",
+				"VF %d failed to set unicast promiscuous mode err %pe aq_err %s\n",
 				vf->vf_id,
-				aq_ret,
+				ERR_PTR(aq_ret),
 				i40e_aq_str(&pf->hw, aq_err));
 
 			if (!aq_tmp)
@@ -3676,8 +3676,8 @@ static void i40e_del_all_cloud_filters(struct i40e_vf *vf)
 			ret = i40e_add_del_cloud_filter(vsi, cfilter, false);
 		if (ret)
 			dev_err(&pf->pdev->dev,
-				"VF %d: Failed to delete cloud filter, err %d aq_err %s\n",
-				vf->vf_id, ret,
+				"VF %d: Failed to delete cloud filter, err %pe aq_err %s\n",
+				vf->vf_id, ERR_PTR(ret),
 				i40e_aq_str(&pf->hw,
 					    pf->hw.aq.asq_last_status));
 
@@ -3779,8 +3779,8 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		ret = i40e_add_del_cloud_filter(vsi, &cfilter, false);
 	if (ret) {
 		dev_err(&pf->pdev->dev,
-			"VF %d: Failed to delete cloud filter, err %d aq_err %s\n",
-			vf->vf_id, ret,
+			"VF %d: Failed to delete cloud filter, err %pe aq_err %s\n",
+			vf->vf_id, ERR_PTR(ret),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		goto err;
 	}
@@ -3913,8 +3913,8 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		ret = i40e_add_del_cloud_filter(vsi, cfilter, true);
 	if (ret) {
 		dev_err(&pf->pdev->dev,
-			"VF %d: Failed to add cloud filter, err %d aq_err %s\n",
-			vf->vf_id, ret,
+			"VF %d: Failed to add cloud filter, err %pe aq_err %s\n",
+			vf->vf_id, ERR_PTR(ret),
 			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
 		goto err_free;
 	}
-- 
2.31.1


_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan

