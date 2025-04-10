Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 9EDD6A83FD2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 10 Apr 2025 12:01:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AA03561AB8;
	Thu, 10 Apr 2025 10:01:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KuBHfza4JzhG; Thu, 10 Apr 2025 10:01:50 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 145A16118E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1744279310;
	bh=T86gg9JPyNG38OfHpFl/cgBG9miiWGsk9KIQG9oofe0=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=JCmDPON23SY47dZeTNb4WXDR17+Dc51rRLkXlh3hIDRJCFX8SckTT7rgPLgrcsyG/
	 eg54t4y86KxoKxr99WXdOOoO5C+E3VBEgbfKUbJPCIr4yT4VXOg3YA/xlZFUMbK+Pc
	 pa1FXq/77NORa6/v2uwodrZ2KmjycT5TwJso6wVBrDddgdvABry17XsNtA39DbPSoW
	 +lAZH3gPBcgCBHJN9Yq13D8CdcjQ6bFmjTPliKckI/LEQBVXqujk7YkJ7Un+m2Zcac
	 08X7MriRX39hFkmdpeNBXvVlTjkmYUb8Ibd1cXRLOWtakMD0hKl0jYqtHekxvOK33C
	 PDgQPZrSnBeRQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id 145A16118E;
	Thu, 10 Apr 2025 10:01:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by lists1.osuosl.org (Postfix) with ESMTP id 41785201
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1DB604064D
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u8xtl0e94NfS for <intel-wired-lan@lists.osuosl.org>;
 Thu, 10 Apr 2025 10:01:46 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 7BA084027C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7BA084027C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 7BA084027C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 10 Apr 2025 10:01:46 +0000 (UTC)
X-CSE-ConnectionGUID: P+4W4xmZRWWWM/lIHsmzOQ==
X-CSE-MsgGUID: JO7fu6bbQvqm3NlRV90LTQ==
X-IronPort-AV: E=McAfee;i="6700,10204,11399"; a="63183926"
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="63183926"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Apr 2025 03:01:46 -0700
X-CSE-ConnectionGUID: f5SlLo5pTGqTluOHasIhsg==
X-CSE-MsgGUID: IhGSz7doQryixYn5vnUs9Q==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.15,202,1739865600"; d="scan'208";a="159819838"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Apr 2025 03:01:44 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: netdev@vger.kernel.org, aleksander.lobakin@intel.com,
 przemyslaw.kitszel@intel.com, piotr.kwapulinski@intel.com,
 aleksandr.loktionov@intel.com, jedrzej.jagielski@intel.com,
 larysa.zaremba@intel.com, anthony.l.nguyen@intel.com
Date: Thu, 10 Apr 2025 12:01:21 +0200
Message-ID: <20250410100121.2353754-9-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
References: <20250410100121.2353754-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1744279306; x=1775815306;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=4ww0Vx9yUMj1M3wbJjWIKK0vkT2cxN/uWfiD9mucRAY=;
 b=H5OgIo2/L+vG7IVuvvzcAG5FBXzFN/SAIKfmbPrFwhAoli+AFqa0+aws
 uqN0H6ox49NYP9TPAYkf6QY2nxwaCgvZuLjLsCwYI0V817lQa2ptmqloz
 tErCOKN3VEa1l8I64bL0cB1UK/C+g5pQ8S4eUIvUaJPecTjSXpFB9Y3Qf
 ItDHPkIRK2aVYQYFg2mxZQuM3DpnigreOpw7fIMq2yLU8nEJpArkFoZS9
 ecWe7wCEpsivtC3sfp4QFJaEDlS6KZ7ZxeR0VY/bgkjCasDsU9jyLgW5E
 QTwzVCu8thZz3x1fihB2j7Pe1u/NdbH1Gah9Dfokx3nQglGcSPz0vBWRy
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=H5OgIo2/
Subject: [Intel-wired-lan] [iwl-next v2 8/8] i40e: use libie_aq_str
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

There is no need to store the err string in hw->err_str. Simplify it and
use common helper. hw->err_str is still used for other purpouse.

It should be marked that previously for unknown error the numeric value
was passed as a string. Now the "LIBIE_AQ_RC_UNKNOWN" is used for such
cases.

Add libie_aminq module in i40e Kconfig.

Reviewed-by: Przemek Kitszel <przemyslaw.kitszel@intel.com>
Reviewed-by: Larysa Zaremba <larysa.zaremba@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/Kconfig            |   1 +
 .../net/ethernet/intel/i40e/i40e_prototype.h  |   1 -
 drivers/net/ethernet/intel/i40e/i40e_client.c |   7 +-
 drivers/net/ethernet/intel/i40e/i40e_common.c |  52 -----
 drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c |   8 +-
 .../net/ethernet/intel/i40e/i40e_ethtool.c    |  22 +-
 drivers/net/ethernet/intel/i40e/i40e_main.c   | 209 +++++++-----------
 drivers/net/ethernet/intel/i40e/i40e_nvm.c    |   2 +-
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    |  27 +--
 9 files changed, 105 insertions(+), 224 deletions(-)

diff --git a/drivers/net/ethernet/intel/Kconfig b/drivers/net/ethernet/intel/Kconfig
index 29c03a9ce145..b05cc0d7a15d 100644
--- a/drivers/net/ethernet/intel/Kconfig
+++ b/drivers/net/ethernet/intel/Kconfig
@@ -231,6 +231,7 @@ config I40E
 	depends on PCI
 	select AUXILIARY_BUS
 	select LIBIE
+	select LIBIE_ADMINQ
 	select NET_DEVLINK
 	help
 	  This driver supports Intel(R) Ethernet Controller XL710 Family of
diff --git a/drivers/net/ethernet/intel/i40e/i40e_prototype.h b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
index bd54f06b43cd..aef5de53ce3b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_prototype.h
+++ b/drivers/net/ethernet/intel/i40e/i40e_prototype.h
@@ -46,7 +46,6 @@ void i40e_debug_aq(struct i40e_hw *hw, enum i40e_debug_mask mask,
 
 bool i40e_check_asq_alive(struct i40e_hw *hw);
 int i40e_aq_queue_shutdown(struct i40e_hw *hw, bool unloading);
-const char *i40e_aq_str(struct i40e_hw *hw, enum libie_aq_err aq_err);
 
 int i40e_aq_get_rss_lut(struct i40e_hw *hw, u16 seid,
 			bool pf_lut, u8 *lut, u16 lut_size);
diff --git a/drivers/net/ethernet/intel/i40e/i40e_client.c b/drivers/net/ethernet/intel/i40e/i40e_client.c
index 59263551c383..5f1a405cbbf8 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_client.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_client.c
@@ -682,9 +682,7 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
 	if (err) {
 		dev_info(&pf->pdev->dev,
 			 "couldn't get PF vsi config, err %pe aq_err %s\n",
-			 ERR_PTR(err),
-			 i40e_aq_str(&pf->hw,
-				     pf->hw.aq.asq_last_status));
+			 ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
 		return -ENOENT;
 	}
 
@@ -711,8 +709,7 @@ static int i40e_client_update_vsi_ctxt(struct i40e_info *ldev,
 			dev_info(&pf->pdev->dev,
 				 "update VSI ctxt for PE failed, err %pe aq_err %s\n",
 				 ERR_PTR(err),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 		}
 	}
 	return err;
diff --git a/drivers/net/ethernet/intel/i40e/i40e_common.c b/drivers/net/ethernet/intel/i40e/i40e_common.c
index 75074611285a..270e7e8cf9cf 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_common.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_common.c
@@ -68,58 +68,6 @@ int i40e_set_mac_type(struct i40e_hw *hw)
 	return status;
 }
 
-/**
- * i40e_aq_str - convert AQ err code to a string
- * @hw: pointer to the HW structure
- * @aq_err: the AQ error code to convert
- **/
-const char *i40e_aq_str(struct i40e_hw *hw, enum libie_aq_err aq_err)
-{
-	switch (aq_err) {
-	case LIBIE_AQ_RC_OK:
-		return "OK";
-	case LIBIE_AQ_RC_EPERM:
-		return "LIBIE_AQ_RC_EPERM";
-	case LIBIE_AQ_RC_ENOENT:
-		return "LIBIE_AQ_RC_ENOENT";
-	case LIBIE_AQ_RC_ESRCH:
-		return "LIBIE_AQ_RC_ESRCH";
-	case LIBIE_AQ_RC_EIO:
-		return "LIBIE_AQ_RC_EIO";
-	case LIBIE_AQ_RC_EAGAIN:
-		return "LIBIE_AQ_RC_EAGAIN";
-	case LIBIE_AQ_RC_ENOMEM:
-		return "LIBIE_AQ_RC_ENOMEM";
-	case LIBIE_AQ_RC_EACCES:
-		return "LIBIE_AQ_RC_EACCES";
-	case LIBIE_AQ_RC_EBUSY:
-		return "LIBIE_AQ_RC_EBUSY";
-	case LIBIE_AQ_RC_EEXIST:
-		return "LIBIE_AQ_RC_EEXIST";
-	case LIBIE_AQ_RC_EINVAL:
-		return "LIBIE_AQ_RC_EINVAL";
-	case LIBIE_AQ_RC_ENOSPC:
-		return "LIBIE_AQ_RC_ENOSPC";
-	case LIBIE_AQ_RC_ENOSYS:
-		return "LIBIE_AQ_RC_ENOSYS";
-	case LIBIE_AQ_RC_EMODE:
-		return "LIBIE_AQ_RC_EMODE";
-	case LIBIE_AQ_RC_ENOSEC:
-		return "LIBIE_AQ_RC_ENOSEC";
-	case LIBIE_AQ_RC_EBADSIG:
-		return "LIBIE_AQ_RC_EBADSIG";
-	case LIBIE_AQ_RC_ESVN:
-		return "LIBIE_AQ_RC_ESVN";
-	case LIBIE_AQ_RC_EBADMAN:
-		return "LIBIE_AQ_RC_EBADMAN";
-	case LIBIE_AQ_RC_EBADBUF:
-		return "LIBIE_AQ_RC_EBADBUF";
-	}
-
-	snprintf(hw->err_str, sizeof(hw->err_str), "%d", aq_err);
-	return hw->err_str;
-}
-
 /**
  * i40e_debug_aq
  * @hw: debug mask related to admin queue
diff --git a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
index 8aa43aefe84c..a2ccf4c5e30b 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_dcb_nl.c
@@ -136,7 +136,7 @@ static int i40e_dcbnl_ieee_setets(struct net_device *netdev,
 		dev_info(&pf->pdev->dev,
 			 "Failed setting DCB ETS configuration err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 libie_aq_str(pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
 
@@ -175,7 +175,7 @@ static int i40e_dcbnl_ieee_setpfc(struct net_device *netdev,
 		dev_info(&pf->pdev->dev,
 			 "Failed setting DCB PFC configuration err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 libie_aq_str(pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
 
@@ -226,7 +226,7 @@ static int i40e_dcbnl_ieee_setapp(struct net_device *netdev,
 		dev_info(&pf->pdev->dev,
 			 "Failed setting DCB configuration err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 libie_aq_str(pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
 
@@ -291,7 +291,7 @@ static int i40e_dcbnl_ieee_delapp(struct net_device *netdev,
 		dev_info(&pf->pdev->dev,
 			 "Failed setting DCB configuration err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 libie_aq_str(pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
 
diff --git a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
index 537f01cdab3c..21dd70125a16 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_ethtool.c
@@ -1461,7 +1461,7 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 			netdev_info(netdev,
 				    "Set phy config failed, err %pe aq_err %s\n",
 				    ERR_PTR(status),
-				    i40e_aq_str(hw, hw->aq.asq_last_status));
+				    libie_aq_str(hw->aq.asq_last_status));
 			err = -EAGAIN;
 			goto done;
 		}
@@ -1471,7 +1471,7 @@ static int i40e_set_link_ksettings(struct net_device *netdev,
 			netdev_dbg(netdev,
 				   "Updating link info failed with err %pe aq_err %s\n",
 				   ERR_PTR(status),
-				   i40e_aq_str(hw, hw->aq.asq_last_status));
+				   libie_aq_str(hw->aq.asq_last_status));
 
 	} else {
 		netdev_info(netdev, "Nothing changed, exiting without setting anything.\n");
@@ -1519,7 +1519,7 @@ static int i40e_set_fec_cfg(struct net_device *netdev, u8 fec_cfg)
 			netdev_info(netdev,
 				    "Set phy config failed, err %pe aq_err %s\n",
 				    ERR_PTR(status),
-				    i40e_aq_str(hw, hw->aq.asq_last_status));
+				    libie_aq_str(hw->aq.asq_last_status));
 			err = -EAGAIN;
 			goto done;
 		}
@@ -1533,7 +1533,7 @@ static int i40e_set_fec_cfg(struct net_device *netdev, u8 fec_cfg)
 			netdev_dbg(netdev,
 				   "Updating link info failed with err %pe aq_err %s\n",
 				   ERR_PTR(status),
-				   i40e_aq_str(hw, hw->aq.asq_last_status));
+				   libie_aq_str(hw->aq.asq_last_status));
 	}
 
 done:
@@ -1640,7 +1640,7 @@ static int i40e_nway_reset(struct net_device *netdev)
 	if (ret) {
 		netdev_info(netdev, "link restart failed, err %pe aq_err %s\n",
 			    ERR_PTR(ret),
-			    i40e_aq_str(hw, hw->aq.asq_last_status));
+			    libie_aq_str(hw->aq.asq_last_status));
 		return -EIO;
 	}
 
@@ -1757,19 +1757,19 @@ static int i40e_set_pauseparam(struct net_device *netdev,
 	if (aq_failures & I40E_SET_FC_AQ_FAIL_GET) {
 		netdev_info(netdev, "Set fc failed on the get_phy_capabilities call with err %pe aq_err %s\n",
 			    ERR_PTR(status),
-			    i40e_aq_str(hw, hw->aq.asq_last_status));
+			    libie_aq_str(hw->aq.asq_last_status));
 		err = -EAGAIN;
 	}
 	if (aq_failures & I40E_SET_FC_AQ_FAIL_SET) {
 		netdev_info(netdev, "Set fc failed on the set_phy_config call with err %pe aq_err %s\n",
 			    ERR_PTR(status),
-			    i40e_aq_str(hw, hw->aq.asq_last_status));
+			    libie_aq_str(hw->aq.asq_last_status));
 		err = -EAGAIN;
 	}
 	if (aq_failures & I40E_SET_FC_AQ_FAIL_UPDATE) {
 		netdev_info(netdev, "Set fc failed on the get_link_info call with err %pe aq_err %s\n",
 			    ERR_PTR(status),
-			    i40e_aq_str(hw, hw->aq.asq_last_status));
+			    libie_aq_str(hw->aq.asq_last_status));
 		err = -EAGAIN;
 	}
 
@@ -5377,8 +5377,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 			dev_info(&pf->pdev->dev,
 				 "couldn't set switch config bits, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 			/* not a fatal problem, just keep going */
 		}
 	}
@@ -5457,8 +5456,7 @@ static int i40e_set_priv_flags(struct net_device *dev, u32 flags)
 					dev_warn(&pf->pdev->dev,
 						 "Starting FW LLDP agent failed: error: %pe, %s\n",
 						 ERR_PTR(status),
-						 i40e_aq_str(&pf->hw,
-							     adq_err));
+						 libie_aq_str(adq_err));
 					return -EINVAL;
 				}
 			}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index e28d1274e8f6..c39aa7bbe90d 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -100,6 +100,7 @@ MODULE_PARM_DESC(debug, "Debug level (0=none,...,16=all), Debug mask (0x8XXXXXXX
 
 MODULE_DESCRIPTION("Intel(R) Ethernet Connection XL710 Network Driver");
 MODULE_IMPORT_NS("LIBIE");
+MODULE_IMPORT_NS("LIBIE_ADMINQ");
 MODULE_LICENSE("GPL v2");
 
 static struct workqueue_struct *i40e_wq;
@@ -1813,7 +1814,7 @@ static int i40e_set_mac(struct net_device *netdev, void *p)
 		if (ret)
 			netdev_info(netdev, "Ignoring error from firmware on LAA update, status %pe, AQ ret %s\n",
 				    ERR_PTR(ret),
-				    i40e_aq_str(hw, hw->aq.asq_last_status));
+				    libie_aq_str(hw->aq.asq_last_status));
 	}
 
 	/* schedule our worker thread which will take care of
@@ -1845,7 +1846,7 @@ static int i40e_config_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 			dev_info(&pf->pdev->dev,
 				 "Cannot set RSS key, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(hw, hw->aq.asq_last_status));
+				 libie_aq_str(hw->aq.asq_last_status));
 			return ret;
 		}
 	}
@@ -1857,7 +1858,7 @@ static int i40e_config_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 			dev_info(&pf->pdev->dev,
 				 "Cannot set RSS lut, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(hw, hw->aq.asq_last_status));
+				 libie_aq_str(hw->aq.asq_last_status));
 			return ret;
 		}
 	}
@@ -2350,8 +2351,7 @@ void i40e_aqc_del_filters(struct i40e_vsi *vsi, const char *vsi_name,
 		*retval = -EIO;
 		dev_info(&vsi->back->pdev->dev,
 			 "ignoring delete macvlan error on %s, err %pe, aq_err %s\n",
-			 vsi_name, ERR_PTR(aq_ret),
-			 i40e_aq_str(hw, aq_status));
+			 vsi_name, ERR_PTR(aq_ret), libie_aq_str(aq_status));
 	}
 }
 
@@ -2385,19 +2385,17 @@ void i40e_aqc_add_filters(struct i40e_vsi *vsi, const char *vsi_name,
 			set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
 			dev_warn(&vsi->back->pdev->dev,
 				 "Error %s adding RX filters on %s, promiscuous mode forced on\n",
-				 i40e_aq_str(hw, aq_status), vsi_name);
+				 libie_aq_str(aq_status), vsi_name);
 		} else if (vsi->type == I40E_VSI_SRIOV ||
 			   vsi->type == I40E_VSI_VMDQ1 ||
 			   vsi->type == I40E_VSI_VMDQ2) {
 			dev_warn(&vsi->back->pdev->dev,
 				 "Error %s adding RX filters on %s, please set promiscuous on manually for %s\n",
-				 i40e_aq_str(hw, aq_status), vsi_name,
-					     vsi_name);
+				 libie_aq_str(aq_status), vsi_name, vsi_name);
 		} else {
 			dev_warn(&vsi->back->pdev->dev,
 				 "Error %s adding RX filters on %s, incorrect VSI type: %i.\n",
-				 i40e_aq_str(hw, aq_status), vsi_name,
-					     vsi->type);
+				 libie_aq_str(aq_status), vsi_name, vsi->type);
 		}
 	}
 }
@@ -2440,8 +2438,7 @@ i40e_aqc_broadcast_filter(struct i40e_vsi *vsi, const char *vsi_name,
 		set_bit(__I40E_VSI_OVERFLOW_PROMISC, vsi->state);
 		dev_warn(&vsi->back->pdev->dev,
 			 "Error %s, forcing overflow promiscuous on %s\n",
-			 i40e_aq_str(hw, hw->aq.asq_last_status),
-			 vsi_name);
+			 libie_aq_str(hw->aq.asq_last_status), vsi_name);
 	}
 
 	return aq_ret;
@@ -2482,7 +2479,7 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 			dev_info(&pf->pdev->dev,
 				 "Set default VSI failed, err %pe, aq_err %s\n",
 				 ERR_PTR(aq_ret),
-				 i40e_aq_str(hw, hw->aq.asq_last_status));
+				 libie_aq_str(hw->aq.asq_last_status));
 		}
 	} else {
 		aq_ret = i40e_aq_set_vsi_unicast_promiscuous(
@@ -2494,7 +2491,7 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 			dev_info(&pf->pdev->dev,
 				 "set unicast promisc failed, err %pe, aq_err %s\n",
 				 ERR_PTR(aq_ret),
-				 i40e_aq_str(hw, hw->aq.asq_last_status));
+				 libie_aq_str(hw->aq.asq_last_status));
 		}
 		aq_ret = i40e_aq_set_vsi_multicast_promiscuous(
 						  hw,
@@ -2504,7 +2501,7 @@ static int i40e_set_promiscuous(struct i40e_pf *pf, bool promisc)
 			dev_info(&pf->pdev->dev,
 				 "set multicast promisc failed, err %pe, aq_err %s\n",
 				 ERR_PTR(aq_ret),
-				 i40e_aq_str(hw, hw->aq.asq_last_status));
+				 libie_aq_str(hw->aq.asq_last_status));
 		}
 	}
 
@@ -2812,7 +2809,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 				 "set multi promisc failed on %s, err %pe aq_err %s\n",
 				 vsi_name,
 				 ERR_PTR(aq_ret),
-				 i40e_aq_str(hw, hw->aq.asq_last_status));
+				 libie_aq_str(hw->aq.asq_last_status));
 		} else {
 			dev_info(&pf->pdev->dev, "%s allmulti mode.\n",
 				 cur_multipromisc ? "entering" : "leaving");
@@ -2833,7 +2830,7 @@ int i40e_sync_vsi_filters(struct i40e_vsi *vsi)
 				 cur_promisc ? "on" : "off",
 				 vsi_name,
 				 ERR_PTR(aq_ret),
-				 i40e_aq_str(hw, hw->aq.asq_last_status));
+				 libie_aq_str(hw->aq.asq_last_status));
 		}
 	}
 out:
@@ -3003,8 +3000,7 @@ void i40e_vlan_stripping_enable(struct i40e_vsi *vsi)
 		dev_info(&vsi->back->pdev->dev,
 			 "update vlan stripping failed, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&vsi->back->hw,
-				     vsi->back->hw.aq.asq_last_status));
+			 libie_aq_str(vsi->back->hw.aq.asq_last_status));
 	}
 }
 
@@ -3038,8 +3034,7 @@ void i40e_vlan_stripping_disable(struct i40e_vsi *vsi)
 		dev_info(&vsi->back->pdev->dev,
 			 "update vlan stripping failed, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&vsi->back->hw,
-				     vsi->back->hw.aq.asq_last_status));
+			 libie_aq_str(vsi->back->hw.aq.asq_last_status));
 	}
 }
 
@@ -3283,8 +3278,7 @@ int i40e_vsi_add_pvid(struct i40e_vsi *vsi, u16 vid)
 		dev_info(&vsi->back->pdev->dev,
 			 "add pvid failed, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&vsi->back->hw,
-				     vsi->back->hw.aq.asq_last_status));
+			 libie_aq_str(vsi->back->hw.aq.asq_last_status));
 		return -ENOENT;
 	}
 
@@ -5554,7 +5548,7 @@ static int i40e_vsi_get_bw_info(struct i40e_vsi *vsi)
 		dev_info(&pf->pdev->dev,
 			 "couldn't get PF vsi bw config, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 libie_aq_str(pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
 
@@ -5565,7 +5559,7 @@ static int i40e_vsi_get_bw_info(struct i40e_vsi *vsi)
 		dev_info(&pf->pdev->dev,
 			 "couldn't get PF vsi ets bw config, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 libie_aq_str(pf->hw.aq.asq_last_status));
 		return -EINVAL;
 	}
 
@@ -5755,7 +5749,7 @@ int i40e_update_adq_vsi_queues(struct i40e_vsi *vsi, int vsi_offset)
 	if (ret) {
 		dev_info(&pf->pdev->dev, "Update vsi config failed, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(hw, hw->aq.asq_last_status));
+			 libie_aq_str(hw->aq.asq_last_status));
 		return ret;
 	}
 	/* update the local VSI info with updated queue map */
@@ -5811,7 +5805,7 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 			dev_info(&pf->pdev->dev,
 				 "Failed querying vsi bw info, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(hw, hw->aq.asq_last_status));
+				 libie_aq_str(hw->aq.asq_last_status));
 			goto out;
 		}
 		if ((bw_config.tc_valid_bits & enabled_tc) != enabled_tc) {
@@ -5878,7 +5872,7 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 		dev_info(&pf->pdev->dev,
 			 "Update vsi tc config failed, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(hw, hw->aq.asq_last_status));
+			 libie_aq_str(hw->aq.asq_last_status));
 		goto out;
 	}
 	/* update the local VSI info with updated queue map */
@@ -5891,7 +5885,7 @@ static int i40e_vsi_config_tc(struct i40e_vsi *vsi, u8 enabled_tc)
 		dev_info(&pf->pdev->dev,
 			 "Failed updating vsi bw info, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(hw, hw->aq.asq_last_status));
+			 libie_aq_str(hw->aq.asq_last_status));
 		goto out;
 	}
 
@@ -6005,7 +5999,7 @@ int i40e_set_bw_limit(struct i40e_vsi *vsi, u16 seid, u64 max_tx_rate)
 		dev_err(&pf->pdev->dev,
 			"Failed set tx rate (%llu Mbps) for vsi->seid %u, err %pe aq_err %s\n",
 			max_tx_rate, seid, ERR_PTR(ret),
-			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			libie_aq_str(pf->hw.aq.asq_last_status));
 	return ret;
 }
 
@@ -6081,7 +6075,7 @@ static void i40e_remove_queue_channels(struct i40e_vsi *vsi)
 				dev_info(&pf->pdev->dev,
 					 "Failed to delete cloud filter, err %pe aq_err %s\n",
 					 ERR_PTR(ret),
-					 i40e_aq_str(&pf->hw, last_aq_status));
+					 libie_aq_str(last_aq_status));
 			kfree(cfilter);
 		}
 
@@ -6216,7 +6210,7 @@ static int i40e_vsi_reconfig_rss(struct i40e_vsi *vsi, u16 rss_size)
 		dev_info(&pf->pdev->dev,
 			 "Cannot set RSS lut, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(hw, hw->aq.asq_last_status));
+			 libie_aq_str(hw->aq.asq_last_status));
 		kfree(lut);
 		return ret;
 	}
@@ -6315,8 +6309,7 @@ static int i40e_add_channel(struct i40e_pf *pf, u16 uplink_seid,
 		dev_info(&pf->pdev->dev,
 			 "add new vsi failed, err %pe aq_err %s\n",
 			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw,
-				     pf->hw.aq.asq_last_status));
+			 libie_aq_str(pf->hw.aq.asq_last_status));
 		return -ENOENT;
 	}
 
@@ -6562,9 +6555,7 @@ static int i40e_validate_and_set_switch_mode(struct i40e_vsi *vsi)
 	if (ret && hw->aq.asq_last_status != LIBIE_AQ_RC_ESRCH)
 		dev_err(&pf->pdev->dev,
 			"couldn't set switch config bits, err %pe aq_err %s\n",
-			ERR_PTR(ret),
-			i40e_aq_str(hw,
-				    hw->aq.asq_last_status));
+			ERR_PTR(ret), libie_aq_str(hw->aq.asq_last_status));
 
 	return ret;
 }
@@ -6763,8 +6754,7 @@ int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "VEB bw config failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		goto out;
 	}
 
@@ -6773,8 +6763,7 @@ int i40e_veb_config_tc(struct i40e_veb *veb, u8 enabled_tc)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "Failed getting veb bw config, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 	}
 
 out:
@@ -6855,7 +6844,7 @@ static int i40e_resume_port_tx(struct i40e_pf *pf)
 		dev_info(&pf->pdev->dev,
 			 "Resume Port Tx failed, err %pe aq_err %s\n",
 			  ERR_PTR(ret),
-			  i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			  libie_aq_str(pf->hw.aq.asq_last_status));
 		/* Schedule PF reset to recover */
 		set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
 		i40e_service_event_schedule(pf);
@@ -6879,8 +6868,7 @@ static int i40e_suspend_port_tx(struct i40e_pf *pf)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "Suspend Port Tx failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		/* Schedule PF reset to recover */
 		set_bit(__I40E_PF_RESET_REQUESTED, pf->state);
 		i40e_service_event_schedule(pf);
@@ -6919,8 +6907,7 @@ static int i40e_hw_set_dcb_config(struct i40e_pf *pf,
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "Set DCB Config failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		goto out;
 	}
 
@@ -7036,8 +7023,7 @@ int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "Modify Port ETS failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		goto out;
 	}
 
@@ -7076,8 +7062,7 @@ int i40e_hw_dcb_config(struct i40e_pf *pf, struct i40e_dcbx_config *new_cfg)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "DCB Updated failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		goto out;
 	}
 
@@ -7160,8 +7145,7 @@ int i40e_dcb_sw_default_config(struct i40e_pf *pf)
 	if (err) {
 		dev_info(&pf->pdev->dev,
 			 "Enable Port ETS failed, err %pe aq_err %s\n",
-			 ERR_PTR(err),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
 		err = -ENOENT;
 		goto out;
 	}
@@ -7240,8 +7224,7 @@ static int i40e_init_pf_dcb(struct i40e_pf *pf)
 	} else {
 		dev_info(&pf->pdev->dev,
 			 "Query for DCB configuration failed, err %pe aq_err %s\n",
-			 ERR_PTR(err),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
 	}
 
 out:
@@ -7497,8 +7480,7 @@ static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 	if (err) {
 		dev_err(&pf->pdev->dev,
 			"failed to get phy cap., ret =  %pe last_status =  %s\n",
-			ERR_PTR(err),
-			i40e_aq_str(hw, hw->aq.asq_last_status));
+			ERR_PTR(err), libie_aq_str(hw->aq.asq_last_status));
 		return err;
 	}
 	speed = abilities.link_speed;
@@ -7509,8 +7491,7 @@ static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 	if (err) {
 		dev_err(&pf->pdev->dev,
 			"failed to get phy cap., ret =  %pe last_status =  %s\n",
-			ERR_PTR(err),
-			i40e_aq_str(hw, hw->aq.asq_last_status));
+			ERR_PTR(err), libie_aq_str(hw->aq.asq_last_status));
 		return err;
 	}
 
@@ -7554,8 +7535,7 @@ static int i40e_force_link_state(struct i40e_pf *pf, bool is_up)
 	if (err) {
 		dev_err(&pf->pdev->dev,
 			"set phy config ret =  %pe last_status =  %s\n",
-			ERR_PTR(err),
-			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
 		return err;
 	}
 
@@ -7895,8 +7875,7 @@ static int i40e_fwd_ring_up(struct i40e_vsi *vsi, struct net_device *vdev,
 		}
 		dev_info(&pf->pdev->dev,
 			 "Error adding mac filter on macvlan err %pe, aq_err %s\n",
-			  ERR_PTR(ret),
-			  i40e_aq_str(hw, aq_err));
+			  ERR_PTR(ret), libie_aq_str(aq_err));
 		netdev_err(vdev, "L2fwd offload disabled to L2 filter error\n");
 	}
 
@@ -7968,8 +7947,7 @@ static int i40e_setup_macvlans(struct i40e_vsi *vsi, u16 macvlan_cnt, u16 qcnt,
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "Update vsi tc config failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(hw, hw->aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(hw->aq.asq_last_status));
 		return ret;
 	}
 	/* update the local VSI info with updated queue map */
@@ -8184,8 +8162,7 @@ static void i40e_fwd_del(struct net_device *netdev, void *vdev)
 			} else {
 				dev_info(&pf->pdev->dev,
 					 "Error deleting mac filter on macvlan err %pe, aq_err %s\n",
-					  ERR_PTR(ret),
-					  i40e_aq_str(hw, aq_err));
+					  ERR_PTR(ret), libie_aq_str(aq_err));
 			}
 			break;
 		}
@@ -9496,8 +9473,7 @@ static int i40e_handle_lldp_event(struct i40e_pf *pf,
 			dev_info(&pf->pdev->dev,
 				 "Failed querying DCB configuration data from firmware, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 		}
 		goto exit;
 	}
@@ -10303,8 +10279,7 @@ static void i40e_enable_pf_switch_lb(struct i40e_pf *pf)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "couldn't get PF vsi config, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		return;
 	}
 	ctxt.flags = I40E_AQ_VSI_TYPE_PF;
@@ -10315,8 +10290,7 @@ static void i40e_enable_pf_switch_lb(struct i40e_pf *pf)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "update vsi switch failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 	}
 }
 
@@ -10339,8 +10313,7 @@ static void i40e_disable_pf_switch_lb(struct i40e_pf *pf)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "couldn't get PF vsi config, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		return;
 	}
 	ctxt.flags = I40E_AQ_VSI_TYPE_PF;
@@ -10351,8 +10324,7 @@ static void i40e_disable_pf_switch_lb(struct i40e_pf *pf)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "update vsi switch failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 	}
 }
 
@@ -10492,8 +10464,7 @@ static int i40e_get_capabilities(struct i40e_pf *pf,
 			dev_info(&pf->pdev->dev,
 				 "capability discovery failed, err %pe aq_err %s\n",
 				 ERR_PTR(err),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 			return -ENODEV;
 		}
 	} while (err);
@@ -10630,8 +10601,7 @@ static int i40e_rebuild_cloud_filters(struct i40e_vsi *vsi, u16 seid)
 			dev_dbg(&pf->pdev->dev,
 				"Failed to rebuild cloud filter, err %pe aq_err %s\n",
 				ERR_PTR(ret),
-				i40e_aq_str(&pf->hw,
-					    pf->hw.aq.asq_last_status));
+				libie_aq_str(pf->hw.aq.asq_last_status));
 			return ret;
 		}
 	}
@@ -10872,8 +10842,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 	ret = i40e_init_adminq(&pf->hw);
 	if (ret) {
 		dev_info(&pf->pdev->dev, "Rebuild AdminQ failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		goto clear_recovery;
 	}
 	i40e_get_oem_version(&pf->hw);
@@ -10984,8 +10953,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 					 I40E_AQ_EVENT_MODULE_QUAL_FAIL), NULL);
 	if (ret)
 		dev_info(&pf->pdev->dev, "set phy mask fail, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 
 	/* Rebuild the VSIs and VEBs that existed before reset.
 	 * They are still in our local switch element arrays, so only
@@ -11083,8 +11051,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 		if (ret)
 			dev_info(&pf->pdev->dev, "link restart failed, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 	}
 	/* reinit the misc interrupt */
 	if (test_bit(I40E_FLAG_MSIX_ENA, pf->flags)) {
@@ -11115,8 +11082,7 @@ static void i40e_rebuild(struct i40e_pf *pf, bool reinit, bool lock_acquired)
 		dev_warn(&pf->pdev->dev,
 			 "Failed to restore promiscuous setting: %s, err %pe aq_err %s\n",
 			 pf->cur_promisc ? "on" : "off",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 
 	i40e_reset_all_vfs(pf, true);
 
@@ -12322,8 +12288,7 @@ static int i40e_get_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 			dev_info(&pf->pdev->dev,
 				 "Cannot get RSS key, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 			return ret;
 		}
 	}
@@ -12336,8 +12301,7 @@ static int i40e_get_rss_aq(struct i40e_vsi *vsi, const u8 *seed,
 			dev_info(&pf->pdev->dev,
 				 "Cannot get RSS lut, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 			return ret;
 		}
 	}
@@ -12998,8 +12962,7 @@ static int i40e_udp_tunnel_set_port(struct net_device *netdev,
 				     NULL);
 	if (ret) {
 		netdev_info(netdev, "add UDP port failed, err %pe aq_err %s\n",
-			    ERR_PTR(ret),
-			    i40e_aq_str(hw, hw->aq.asq_last_status));
+			    ERR_PTR(ret), libie_aq_str(hw->aq.asq_last_status));
 		return -EIO;
 	}
 
@@ -13018,8 +12981,7 @@ static int i40e_udp_tunnel_unset_port(struct net_device *netdev,
 	ret = i40e_aq_del_udp_tunnel(hw, ti->hw_priv, NULL);
 	if (ret) {
 		netdev_info(netdev, "delete UDP port failed, err %pe aq_err %s\n",
-			    ERR_PTR(ret),
-			    i40e_aq_str(hw, hw->aq.asq_last_status));
+			    ERR_PTR(ret), libie_aq_str(hw->aq.asq_last_status));
 		return -EIO;
 	}
 
@@ -13908,8 +13870,7 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 			dev_info(&pf->pdev->dev,
 				 "couldn't get PF vsi config, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 			return -ENOENT;
 		}
 		vsi->info = ctxt.info;
@@ -13938,8 +13899,7 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 				dev_info(&pf->pdev->dev,
 					 "update vsi failed, err %d aq_err %s\n",
 					 ret,
-					 i40e_aq_str(&pf->hw,
-						     pf->hw.aq.asq_last_status));
+					 libie_aq_str(pf->hw.aq.asq_last_status));
 				ret = -ENOENT;
 				goto err;
 			}
@@ -13958,8 +13918,7 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 				dev_info(&pf->pdev->dev,
 					 "update vsi failed, err %pe aq_err %s\n",
 					 ERR_PTR(ret),
-					 i40e_aq_str(&pf->hw,
-						    pf->hw.aq.asq_last_status));
+					 libie_aq_str(pf->hw.aq.asq_last_status));
 				ret = -ENOENT;
 				goto err;
 			}
@@ -13982,8 +13941,7 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 					 "failed to configure TCs for main VSI tc_map 0x%08x, err %pe aq_err %s\n",
 					 enabled_tc,
 					 ERR_PTR(ret),
-					 i40e_aq_str(&pf->hw,
-						    pf->hw.aq.asq_last_status));
+					 libie_aq_str(pf->hw.aq.asq_last_status));
 			}
 		}
 		break;
@@ -14077,8 +14035,7 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 			dev_info(&vsi->back->pdev->dev,
 				 "add vsi failed, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 			ret = -ENOENT;
 			goto err;
 		}
@@ -14108,8 +14065,7 @@ static int i40e_add_vsi(struct i40e_vsi *vsi)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "couldn't get vsi bw info, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		/* VSI is already added so not tearing that up */
 		ret = 0;
 	}
@@ -14557,8 +14513,7 @@ static int i40e_veb_get_bw_info(struct i40e_veb *veb)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "query veb bw config failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, hw->aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(hw->aq.asq_last_status));
 		goto out;
 	}
 
@@ -14567,8 +14522,7 @@ static int i40e_veb_get_bw_info(struct i40e_veb *veb)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "query veb bw ets config failed, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, hw->aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(hw->aq.asq_last_status));
 		goto out;
 	}
 
@@ -14756,8 +14710,7 @@ static int i40e_add_veb(struct i40e_veb *veb, struct i40e_vsi *vsi)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "couldn't add VEB, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		return -EPERM;
 	}
 
@@ -14767,16 +14720,14 @@ static int i40e_add_veb(struct i40e_veb *veb, struct i40e_vsi *vsi)
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "couldn't get VEB statistics idx, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		return -EPERM;
 	}
 	ret = i40e_veb_get_bw_info(veb);
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "couldn't get VEB bw info, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		i40e_aq_delete_element(&pf->hw, veb->seid, NULL);
 		return -ENOENT;
 	}
@@ -14971,9 +14922,7 @@ int i40e_fetch_switch_configuration(struct i40e_pf *pf, bool printconfig)
 		if (ret) {
 			dev_info(&pf->pdev->dev,
 				 "get switch config failed err %d aq_err %s\n",
-				 ret,
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 ret, libie_aq_str(pf->hw.aq.asq_last_status));
 			kfree(aq_buf);
 			return -ENOENT;
 		}
@@ -15018,8 +14967,7 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 	if (ret) {
 		dev_info(&pf->pdev->dev,
 			 "couldn't fetch switch config, err %pe aq_err %s\n",
-			 ERR_PTR(ret),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(ret), libie_aq_str(pf->hw.aq.asq_last_status));
 		return ret;
 	}
 	i40e_pf_reset_stats(pf);
@@ -15046,8 +14994,7 @@ static int i40e_setup_pf_switch(struct i40e_pf *pf, bool reinit, bool lock_acqui
 			dev_info(&pf->pdev->dev,
 				 "couldn't set switch config bits, err %pe aq_err %s\n",
 				 ERR_PTR(ret),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 			/* not a fatal problem, just keep going */
 		}
 		pf->last_sw_conf_valid_flags = valid_flags;
@@ -15950,8 +15897,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 					 I40E_AQ_EVENT_MODULE_QUAL_FAIL), NULL);
 	if (err)
 		dev_info(&pf->pdev->dev, "set phy mask fail, err %pe aq_err %s\n",
-			 ERR_PTR(err),
-			 i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			 ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
 
 	/* VF MDD event logs are rate limited to one second intervals */
 	ratelimit_state_init(&pf->mdd_message_rate_limit, 1 * HZ, 1);
@@ -15973,8 +15919,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 		if (err)
 			dev_info(&pf->pdev->dev, "link restart failed, err %pe aq_err %s\n",
 				 ERR_PTR(err),
-				 i40e_aq_str(&pf->hw,
-					     pf->hw.aq.asq_last_status));
+				 libie_aq_str(pf->hw.aq.asq_last_status));
 	}
 	/* The main driver is (mostly) up and happy. We need to set this state
 	 * before setting up the misc vector or we get a race and the vector
@@ -16105,8 +16050,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	err = i40e_aq_get_phy_capabilities(hw, false, false, &abilities, NULL);
 	if (err)
 		dev_dbg(&pf->pdev->dev, "get requested speeds ret =  %pe last_status =  %s\n",
-			ERR_PTR(err),
-			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
 	pf->hw.phy.link_info.requested_speeds = abilities.link_speed;
 
 	/* set the FEC config due to the board capabilities */
@@ -16116,8 +16060,7 @@ static int i40e_probe(struct pci_dev *pdev, const struct pci_device_id *ent)
 	err = i40e_aq_get_phy_capabilities(hw, false, true, &abilities, NULL);
 	if (err)
 		dev_dbg(&pf->pdev->dev, "get supported phy types ret =  %pe last_status =  %s\n",
-			ERR_PTR(err),
-			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			ERR_PTR(err), libie_aq_str(pf->hw.aq.asq_last_status));
 
 	/* make sure the MFS hasn't been set lower than the default */
 #define MAX_FRAME_SIZE_DEFAULT 0x2600
diff --git a/drivers/net/ethernet/intel/i40e/i40e_nvm.c b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
index 5dfbe71205e6..ed3c54e36be3 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_nvm.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_nvm.c
@@ -1053,7 +1053,7 @@ static int i40e_nvmupd_exec_aq(struct i40e_hw *hw,
 		i40e_debug(hw, I40E_DEBUG_NVM,
 			   "%s err %pe aq_err %s\n",
 			   __func__, ERR_PTR(status),
-			   i40e_aq_str(hw, hw->aq.asq_last_status));
+			   libie_aq_str(hw->aq.asq_last_status));
 		*perrno = i40e_aq_rc_to_posix(status, hw->aq.asq_last_status);
 		return status;
 	}
diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 1120f8e4bb67..c9d9750303f4 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -1289,9 +1289,8 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 
 			dev_err(&pf->pdev->dev,
 				"VF %d failed to set multicast promiscuous mode err %pe aq_err %s\n",
-				vf->vf_id,
-				ERR_PTR(aq_ret),
-				i40e_aq_str(&pf->hw, aq_err));
+				vf->vf_id, ERR_PTR(aq_ret),
+				libie_aq_str(aq_err));
 
 			return aq_ret;
 		}
@@ -1305,9 +1304,8 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 
 			dev_err(&pf->pdev->dev,
 				"VF %d failed to set unicast promiscuous mode err %pe aq_err %s\n",
-				vf->vf_id,
-				ERR_PTR(aq_ret),
-				i40e_aq_str(&pf->hw, aq_err));
+				vf->vf_id, ERR_PTR(aq_ret),
+				libie_aq_str(aq_err));
 		}
 
 		return aq_ret;
@@ -1322,9 +1320,8 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 
 			dev_err(&pf->pdev->dev,
 				"VF %d failed to set multicast promiscuous mode err %pe aq_err %s\n",
-				vf->vf_id,
-				ERR_PTR(aq_ret),
-				i40e_aq_str(&pf->hw, aq_err));
+				vf->vf_id, ERR_PTR(aq_ret),
+				libie_aq_str(aq_err));
 
 			if (!aq_tmp)
 				aq_tmp = aq_ret;
@@ -1338,9 +1335,8 @@ i40e_set_vsi_promisc(struct i40e_vf *vf, u16 seid, bool multi_enable,
 
 			dev_err(&pf->pdev->dev,
 				"VF %d failed to set unicast promiscuous mode err %pe aq_err %s\n",
-				vf->vf_id,
-				ERR_PTR(aq_ret),
-				i40e_aq_str(&pf->hw, aq_err));
+				vf->vf_id, ERR_PTR(aq_ret),
+				libie_aq_str(aq_err));
 
 			if (!aq_tmp)
 				aq_tmp = aq_ret;
@@ -3746,8 +3742,7 @@ static void i40e_del_all_cloud_filters(struct i40e_vf *vf)
 			dev_err(&pf->pdev->dev,
 				"VF %d: Failed to delete cloud filter, err %pe aq_err %s\n",
 				vf->vf_id, ERR_PTR(ret),
-				i40e_aq_str(&pf->hw,
-					    pf->hw.aq.asq_last_status));
+				libie_aq_str(pf->hw.aq.asq_last_status));
 
 		hlist_del(&cfilter->cloud_node);
 		kfree(cfilter);
@@ -3849,7 +3844,7 @@ static int i40e_vc_del_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		dev_err(&pf->pdev->dev,
 			"VF %d: Failed to delete cloud filter, err %pe aq_err %s\n",
 			vf->vf_id, ERR_PTR(ret),
-			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			libie_aq_str(pf->hw.aq.asq_last_status));
 		goto err;
 	}
 
@@ -3985,7 +3980,7 @@ static int i40e_vc_add_cloud_filter(struct i40e_vf *vf, u8 *msg)
 		dev_err(&pf->pdev->dev,
 			"VF %d: Failed to add cloud filter, err %pe aq_err %s\n",
 			vf->vf_id, ERR_PTR(aq_ret),
-			i40e_aq_str(&pf->hw, pf->hw.aq.asq_last_status));
+			libie_aq_str(pf->hw.aq.asq_last_status));
 		goto err_free;
 	}
 
-- 
2.42.0

