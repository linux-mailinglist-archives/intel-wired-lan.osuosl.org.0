Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5396EF5B6B
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Nov 2019 23:54:35 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id 02F7B2441E;
	Fri,  8 Nov 2019 22:54:34 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id doff0IiaESxj; Fri,  8 Nov 2019 22:54:22 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id 9C843246FD;
	Fri,  8 Nov 2019 22:54:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id A3B4C1BF5DB
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:19 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id A0DF3864EA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:19 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 4uYvT4ULmPKP for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Nov 2019 22:54:18 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id EA835864DA
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Nov 2019 22:54:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by fmsmga101.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Nov 2019 14:54:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.68,283,1569308400"; d="scan'208";a="201478834"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga008.fm.intel.com with ESMTP; 08 Nov 2019 14:54:17 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Nov 2019 06:23:25 -0800
Message-Id: <20191108142331.10221-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
References: <20191108142331.10221-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S33 09/15] ice: Do not use devm* functions
 for local uses
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

In situations where we alloc and free memory within the same function do
not use the devm_* variants; use regular alloc and free functions. Remove
any unused vars if there are no usages after these changes.

Also, replace an allocate and copy with kmemdup() and remove an
unnecessary memset() to 0 after a kzalloc().

Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_dcb_lib.c  | 25 +++++----
 drivers/net/ethernet/intel/ice/ice_ethtool.c  | 50 ++++++++---------
 drivers/net/ethernet/intel/ice/ice_lib.c      | 54 +++++++++----------
 drivers/net/ethernet/intel/ice/ice_main.c     | 24 ++++-----
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 15 +++---
 5 files changed, 80 insertions(+), 88 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
index 1150dbd98d0b..06736709968e 100644
--- a/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_dcb_lib.c
@@ -345,8 +345,7 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	}
 
 	/* Retrieve DCB config and ensure same as current in SW */
-	prev_cfg = devm_kmemdup(&pf->pdev->dev, local_dcbx_cfg,
-				sizeof(*prev_cfg), GFP_KERNEL);
+	prev_cfg = kmemdup(local_dcbx_cfg, sizeof(*prev_cfg), GFP_KERNEL);
 	if (!prev_cfg) {
 		dev_err(&pf->pdev->dev, "Failed to alloc space for DCB cfg\n");
 		goto dcb_error;
@@ -361,11 +360,12 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 	if (ice_dcb_need_recfg(pf, prev_cfg, local_dcbx_cfg)) {
 		/* difference in cfg detected - disable DCB till next MIB */
 		dev_err(&pf->pdev->dev, "Set local MIB not accurate\n");
+		kfree(prev_cfg);
 		goto dcb_error;
 	}
 
 	/* fetched config congruent to previous configuration */
-	devm_kfree(&pf->pdev->dev, prev_cfg);
+	kfree(prev_cfg);
 
 	/* Set the local desired config */
 	if (local_dcbx_cfg->dcbx_mode == ICE_DCBX_MODE_CEE)
@@ -389,13 +389,16 @@ void ice_dcb_rebuild(struct ice_pf *pf)
 
 dcb_error:
 	dev_err(&pf->pdev->dev, "Disabling DCB until new settings occur\n");
-	prev_cfg = devm_kzalloc(&pf->pdev->dev, sizeof(*prev_cfg), GFP_KERNEL);
+	prev_cfg = kzalloc(sizeof(*prev_cfg), GFP_KERNEL);
+	if (!prev_cfg)
+		return;
+
 	prev_cfg->etscfg.willing = true;
 	prev_cfg->etscfg.tcbwtable[0] = ICE_TC_MAX_BW;
 	prev_cfg->etscfg.tsatable[0] = ICE_IEEE_TSA_ETS;
 	memcpy(&prev_cfg->etsrec, &prev_cfg->etscfg, sizeof(prev_cfg->etsrec));
 	ice_pf_dcb_cfg(pf, prev_cfg, false);
-	devm_kfree(&pf->pdev->dev, prev_cfg);
+	kfree(prev_cfg);
 }
 
 /**
@@ -410,18 +413,17 @@ static int ice_dcb_init_cfg(struct ice_pf *pf, bool locked)
 	int ret = 0;
 
 	pi = pf->hw.port_info;
-	newcfg = devm_kzalloc(&pf->pdev->dev, sizeof(*newcfg), GFP_KERNEL);
+	newcfg = kmemdup(&pi->local_dcbx_cfg, sizeof(*newcfg), GFP_KERNEL);
 	if (!newcfg)
 		return -ENOMEM;
 
-	memcpy(newcfg, &pi->local_dcbx_cfg, sizeof(*newcfg));
 	memset(&pi->local_dcbx_cfg, 0, sizeof(*newcfg));
 
 	dev_info(&pf->pdev->dev, "Configuring initial DCB values\n");
 	if (ice_pf_dcb_cfg(pf, newcfg, locked))
 		ret = -EINVAL;
 
-	devm_kfree(&pf->pdev->dev, newcfg);
+	kfree(newcfg);
 
 	return ret;
 }
@@ -442,9 +444,10 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
 
 	hw = &pf->hw;
 	pi = hw->port_info;
-	dcbcfg = devm_kzalloc(&pf->pdev->dev, sizeof(*dcbcfg), GFP_KERNEL);
+	dcbcfg = kzalloc(sizeof(*dcbcfg), GFP_KERNEL);
+	if (!dcbcfg)
+		return -ENOMEM;
 
-	memset(dcbcfg, 0, sizeof(*dcbcfg));
 	memset(&pi->local_dcbx_cfg, 0, sizeof(*dcbcfg));
 
 	dcbcfg->etscfg.willing = ets_willing ? 1 : 0;
@@ -465,7 +468,7 @@ static int ice_dcb_sw_dflt_cfg(struct ice_pf *pf, bool ets_willing, bool locked)
 	dcbcfg->app[0].prot_id = ICE_APP_PROT_ID_FCOE;
 
 	ret = ice_pf_dcb_cfg(pf, dcbcfg, locked);
-	devm_kfree(&pf->pdev->dev, dcbcfg);
+	kfree(dcbcfg);
 	if (ret)
 		return ret;
 
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 6c796c5c8edf..0ee78fd1bdfb 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -962,7 +962,7 @@ static int ice_set_fec_cfg(struct net_device *netdev, enum ice_fec_mode req_fec)
 	}
 
 	/* Get last SW configuration */
-	caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
+	caps = kzalloc(sizeof(*caps), GFP_KERNEL);
 	if (!caps)
 		return -ENOMEM;
 
@@ -1007,7 +1007,7 @@ static int ice_set_fec_cfg(struct net_device *netdev, enum ice_fec_mode req_fec)
 	}
 
 done:
-	devm_kfree(&vsi->back->pdev->dev, caps);
+	kfree(caps);
 	return err;
 }
 
@@ -1083,7 +1083,7 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 		break;
 	}
 
-	caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
+	caps = kzalloc(sizeof(*caps), GFP_KERNEL);
 	if (!caps)
 		return -ENOMEM;
 
@@ -1110,7 +1110,7 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 		fecparam->fec |= ETHTOOL_FEC_OFF;
 
 done:
-	devm_kfree(&vsi->back->pdev->dev, caps);
+	kfree(caps);
 	return err;
 }
 
@@ -2141,7 +2141,7 @@ ice_get_link_ksettings(struct net_device *netdev,
 	/* flow control is symmetric and always supported */
 	ethtool_link_ksettings_add_link_mode(ks, supported, Pause);
 
-	caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
+	caps = kzalloc(sizeof(*caps), GFP_KERNEL);
 	if (!caps)
 		return -ENOMEM;
 
@@ -2199,7 +2199,7 @@ ice_get_link_ksettings(struct net_device *netdev,
 		ethtool_link_ksettings_add_link_mode(ks, supported, FEC_RS);
 
 done:
-	devm_kfree(&vsi->back->pdev->dev, caps);
+	kfree(caps);
 	return err;
 }
 
@@ -2428,8 +2428,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 		usleep_range(TEST_SET_BITS_SLEEP_MIN, TEST_SET_BITS_SLEEP_MAX);
 	}
 
-	abilities = devm_kzalloc(&pf->pdev->dev, sizeof(*abilities),
-				 GFP_KERNEL);
+	abilities = kzalloc(sizeof(*abilities), GFP_KERNEL);
 	if (!abilities)
 		return -ENOMEM;
 
@@ -2521,7 +2520,7 @@ ice_set_link_ksettings(struct net_device *netdev,
 	}
 
 done:
-	devm_kfree(&pf->pdev->dev, abilities);
+	kfree(abilities);
 	clear_bit(__ICE_CFG_BUSY, pf->state);
 
 	return err;
@@ -2649,8 +2648,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	netdev_info(netdev, "Changing Tx descriptor count from %d to %d\n",
 		    vsi->tx_rings[0]->count, new_tx_cnt);
 
-	tx_rings = devm_kcalloc(&pf->pdev->dev, vsi->num_txq,
-				sizeof(*tx_rings), GFP_KERNEL);
+	tx_rings = kcalloc(vsi->num_txq, sizeof(*tx_rings), GFP_KERNEL);
 	if (!tx_rings) {
 		err = -ENOMEM;
 		goto done;
@@ -2666,7 +2664,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		if (err) {
 			while (i--)
 				ice_clean_tx_ring(&tx_rings[i]);
-			devm_kfree(&pf->pdev->dev, tx_rings);
+			kfree(tx_rings);
 			goto done;
 		}
 	}
@@ -2678,8 +2676,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	netdev_info(netdev, "Changing XDP descriptor count from %d to %d\n",
 		    vsi->xdp_rings[0]->count, new_tx_cnt);
 
-	xdp_rings = devm_kcalloc(&pf->pdev->dev, vsi->num_xdp_txq,
-				 sizeof(*xdp_rings), GFP_KERNEL);
+	xdp_rings = kcalloc(vsi->num_xdp_txq, sizeof(*xdp_rings), GFP_KERNEL);
 	if (!xdp_rings) {
 		err = -ENOMEM;
 		goto free_tx;
@@ -2695,7 +2692,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 		if (err) {
 			while (i--)
 				ice_clean_tx_ring(&xdp_rings[i]);
-			devm_kfree(&pf->pdev->dev, xdp_rings);
+			kfree(xdp_rings);
 			goto free_tx;
 		}
 		ice_set_ring_xdp(&xdp_rings[i]);
@@ -2709,8 +2706,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	netdev_info(netdev, "Changing Rx descriptor count from %d to %d\n",
 		    vsi->rx_rings[0]->count, new_rx_cnt);
 
-	rx_rings = devm_kcalloc(&pf->pdev->dev, vsi->num_rxq,
-				sizeof(*rx_rings), GFP_KERNEL);
+	rx_rings = kcalloc(vsi->num_rxq, sizeof(*rx_rings), GFP_KERNEL);
 	if (!rx_rings) {
 		err = -ENOMEM;
 		goto done;
@@ -2740,7 +2736,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 				i--;
 				ice_free_rx_ring(&rx_rings[i]);
 			}
-			devm_kfree(&pf->pdev->dev, rx_rings);
+			kfree(rx_rings);
 			err = -ENOMEM;
 			goto free_tx;
 		}
@@ -2758,7 +2754,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 				ice_free_tx_ring(vsi->tx_rings[i]);
 				*vsi->tx_rings[i] = tx_rings[i];
 			}
-			devm_kfree(&pf->pdev->dev, tx_rings);
+			kfree(tx_rings);
 		}
 
 		if (rx_rings) {
@@ -2776,7 +2772,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 				rx_rings[i].next_to_alloc = 0;
 				*vsi->rx_rings[i] = rx_rings[i];
 			}
-			devm_kfree(&pf->pdev->dev, rx_rings);
+			kfree(rx_rings);
 		}
 
 		if (xdp_rings) {
@@ -2784,7 +2780,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 				ice_free_tx_ring(vsi->xdp_rings[i]);
 				*vsi->xdp_rings[i] = xdp_rings[i];
 			}
-			devm_kfree(&pf->pdev->dev, xdp_rings);
+			kfree(xdp_rings);
 		}
 
 		vsi->num_tx_desc = new_tx_cnt;
@@ -2798,7 +2794,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring)
 	if (tx_rings) {
 		ice_for_each_txq(vsi, i)
 			ice_free_tx_ring(&tx_rings[i]);
-		devm_kfree(&pf->pdev->dev, tx_rings);
+		kfree(tx_rings);
 	}
 
 done:
@@ -2846,7 +2842,6 @@ ice_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_port_info *pi = np->vsi->port_info;
 	struct ice_aqc_get_phy_caps_data *pcaps;
-	struct ice_vsi *vsi = np->vsi;
 	struct ice_dcbx_cfg *dcbx_cfg;
 	enum ice_status status;
 
@@ -2856,8 +2851,7 @@ ice_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 
 	dcbx_cfg = &pi->local_dcbx_cfg;
 
-	pcaps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*pcaps),
-			     GFP_KERNEL);
+	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
 		return;
 
@@ -2880,7 +2874,7 @@ ice_get_pauseparam(struct net_device *netdev, struct ethtool_pauseparam *pause)
 		pause->rx_pause = 1;
 
 out:
-	devm_kfree(&vsi->back->pdev->dev, pcaps);
+	kfree(pcaps);
 }
 
 /**
@@ -3061,7 +3055,7 @@ ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
 		return -EIO;
 	}
 
-	lut = devm_kzalloc(&pf->pdev->dev, vsi->rss_table_size, GFP_KERNEL);
+	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
 	if (!lut)
 		return -ENOMEM;
 
@@ -3074,7 +3068,7 @@ ice_get_rxfh(struct net_device *netdev, u32 *indir, u8 *key, u8 *hfunc)
 		indir[i] = (u32)(lut[i]);
 
 out:
-	devm_kfree(&pf->pdev->dev, lut);
+	kfree(lut);
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index d71f7ce0a265..de9f616b163e 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -215,7 +215,7 @@ void ice_vsi_delete(struct ice_vsi *vsi)
 	struct ice_vsi_ctx *ctxt;
 	enum ice_status status;
 
-	ctxt = devm_kzalloc(&pf->pdev->dev, sizeof(*ctxt), GFP_KERNEL);
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return;
 
@@ -230,7 +230,7 @@ void ice_vsi_delete(struct ice_vsi *vsi)
 		dev_err(&pf->pdev->dev, "Failed to delete VSI %i in FW\n",
 			vsi->vsi_num);
 
-	devm_kfree(&pf->pdev->dev, ctxt);
+	kfree(ctxt);
 }
 
 /**
@@ -746,7 +746,7 @@ static int ice_vsi_init(struct ice_vsi *vsi)
 	struct ice_vsi_ctx *ctxt;
 	int ret = 0;
 
-	ctxt = devm_kzalloc(&pf->pdev->dev, sizeof(*ctxt), GFP_KERNEL);
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return -ENOMEM;
 
@@ -763,7 +763,8 @@ static int ice_vsi_init(struct ice_vsi *vsi)
 		ctxt->vf_num = vsi->vf_id + hw->func_caps.vf_base_id;
 		break;
 	default:
-		return -ENODEV;
+		ret = -ENODEV;
+		goto out;
 	}
 
 	ice_set_dflt_vsi_ctx(ctxt);
@@ -797,7 +798,8 @@ static int ice_vsi_init(struct ice_vsi *vsi)
 	if (ret) {
 		dev_err(&pf->pdev->dev,
 			"Add VSI failed, err %d\n", ret);
-		return -EIO;
+		ret = -EIO;
+		goto out;
 	}
 
 	/* keep context for update VSI operations */
@@ -806,7 +808,8 @@ static int ice_vsi_init(struct ice_vsi *vsi)
 	/* record VSI number returned */
 	vsi->vsi_num = ctxt->vsi_num;
 
-	devm_kfree(&pf->pdev->dev, ctxt);
+out:
+	kfree(ctxt);
 	return ret;
 }
 
@@ -944,8 +947,7 @@ int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
 	int err = 0;
 	u8 *lut;
 
-	lut = devm_kzalloc(&vsi->back->pdev->dev, vsi->rss_table_size,
-			   GFP_KERNEL);
+	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
 	if (!lut)
 		return -ENOMEM;
 
@@ -958,7 +960,7 @@ int ice_vsi_manage_rss_lut(struct ice_vsi *vsi, bool ena)
 	}
 
 	err = ice_set_rss(vsi, NULL, lut, vsi->rss_table_size);
-	devm_kfree(&vsi->back->pdev->dev, lut);
+	kfree(lut);
 	return err;
 }
 
@@ -976,7 +978,7 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 
 	vsi->rss_size = min_t(int, vsi->rss_size, vsi->num_rxq);
 
-	lut = devm_kzalloc(&pf->pdev->dev, vsi->rss_table_size, GFP_KERNEL);
+	lut = kzalloc(vsi->rss_table_size, GFP_KERNEL);
 	if (!lut)
 		return -ENOMEM;
 
@@ -995,7 +997,7 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 		goto ice_vsi_cfg_rss_exit;
 	}
 
-	key = devm_kzalloc(&pf->pdev->dev, sizeof(*key), GFP_KERNEL);
+	key = kzalloc(sizeof(*key), GFP_KERNEL);
 	if (!key) {
 		err = -ENOMEM;
 		goto ice_vsi_cfg_rss_exit;
@@ -1017,9 +1019,9 @@ static int ice_vsi_cfg_rss_lut_key(struct ice_vsi *vsi)
 		err = -EIO;
 	}
 
-	devm_kfree(&pf->pdev->dev, key);
+	kfree(key);
 ice_vsi_cfg_rss_exit:
-	devm_kfree(&pf->pdev->dev, lut);
+	kfree(lut);
 	return err;
 }
 
@@ -1397,13 +1399,12 @@ void ice_vsi_cfg_msix(struct ice_vsi *vsi)
  */
 int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 {
-	struct device *dev = &vsi->back->pdev->dev;
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
 	enum ice_status status;
 	int ret = 0;
 
-	ctxt = devm_kzalloc(dev, sizeof(*ctxt), GFP_KERNEL);
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return -ENOMEM;
 
@@ -1421,7 +1422,7 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(dev, "update VSI for VLAN insert failed, err %d aq_err %d\n",
+		dev_err(&vsi->back->pdev->dev, "update VSI for VLAN insert failed, err %d aq_err %d\n",
 			status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
@@ -1429,7 +1430,7 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
 
 	vsi->info.vlan_flags = ctxt->info.vlan_flags;
 out:
-	devm_kfree(dev, ctxt);
+	kfree(ctxt);
 	return ret;
 }
 
@@ -1440,13 +1441,12 @@ int ice_vsi_manage_vlan_insertion(struct ice_vsi *vsi)
  */
 int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 {
-	struct device *dev = &vsi->back->pdev->dev;
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
 	enum ice_status status;
 	int ret = 0;
 
-	ctxt = devm_kzalloc(dev, sizeof(*ctxt), GFP_KERNEL);
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return -ENOMEM;
 
@@ -1468,7 +1468,7 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(dev, "update VSI for VLAN strip failed, ena = %d err %d aq_err %d\n",
+		dev_err(&vsi->back->pdev->dev, "update VSI for VLAN strip failed, ena = %d err %d aq_err %d\n",
 			ena, status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
@@ -1476,7 +1476,7 @@ int ice_vsi_manage_vlan_stripping(struct ice_vsi *vsi, bool ena)
 
 	vsi->info.vlan_flags = ctxt->info.vlan_flags;
 out:
-	devm_kfree(dev, ctxt);
+	kfree(ctxt);
 	return ret;
 }
 
@@ -1569,7 +1569,6 @@ int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi)
 int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 {
 	struct ice_vsi_ctx *ctxt;
-	struct device *dev;
 	struct ice_pf *pf;
 	int status;
 
@@ -1577,8 +1576,7 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 		return -EINVAL;
 
 	pf = vsi->back;
-	dev = &pf->pdev->dev;
-	ctxt = devm_kzalloc(dev, sizeof(*ctxt), GFP_KERNEL);
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return -ENOMEM;
 
@@ -1612,11 +1610,11 @@ int ice_cfg_vlan_pruning(struct ice_vsi *vsi, bool ena, bool vlan_promisc)
 	vsi->info.sec_flags = ctxt->info.sec_flags;
 	vsi->info.sw_flags2 = ctxt->info.sw_flags2;
 
-	devm_kfree(dev, ctxt);
+	kfree(ctxt);
 	return 0;
 
 err_out:
-	devm_kfree(dev, ctxt);
+	kfree(ctxt);
 	return -EIO;
 }
 
@@ -2548,7 +2546,7 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 	vsi->tc_cfg.ena_tc = ena_tc;
 	vsi->tc_cfg.numtc = num_tc;
 
-	ctx = devm_kzalloc(&pf->pdev->dev, sizeof(*ctx), GFP_KERNEL);
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
 		return -ENOMEM;
 
@@ -2581,7 +2579,7 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 
 	ice_vsi_cfg_netdev_tc(vsi, ena_tc);
 out:
-	devm_kfree(&pf->pdev->dev, ctx);
+	kfree(ctx);
 	return ret;
 }
 #endif /* CONFIG_DCB */
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 5681e3be81f2..0f68910ba87d 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -724,7 +724,7 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 		an = "False";
 
 	/* Get FEC mode requested based on PHY caps last SW configuration */
-	caps = devm_kzalloc(&vsi->back->pdev->dev, sizeof(*caps), GFP_KERNEL);
+	caps = kzalloc(sizeof(*caps), GFP_KERNEL);
 	if (!caps) {
 		fec_req = "Unknown";
 		goto done;
@@ -744,7 +744,7 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 	else
 		fec_req = "NONE";
 
-	devm_kfree(&vsi->back->pdev->dev, caps);
+	kfree(caps);
 
 done:
 	netdev_info(vsi->netdev, "NIC Link is up %sbps, Requested FEC: %s, FEC: %s, Autoneg: %s, Flow Control: %s\n",
@@ -1011,8 +1011,7 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 	}
 
 	event.buf_len = cq->rq_buf_size;
-	event.msg_buf = devm_kzalloc(&pf->pdev->dev, event.buf_len,
-				     GFP_KERNEL);
+	event.msg_buf = kzalloc(event.buf_len, GFP_KERNEL);
 	if (!event.msg_buf)
 		return 0;
 
@@ -1055,7 +1054,7 @@ static int __ice_clean_ctrlq(struct ice_pf *pf, enum ice_ctl_q q_type)
 		}
 	} while (pending && (i++ < ICE_DFLT_IRQ_WORK));
 
-	devm_kfree(&pf->pdev->dev, event.msg_buf);
+	kfree(event.msg_buf);
 
 	return pending && (i == ICE_DFLT_IRQ_WORK);
 }
@@ -1370,7 +1369,7 @@ static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
 
 	pi = vsi->port_info;
 
-	pcaps = devm_kzalloc(dev, sizeof(*pcaps), GFP_KERNEL);
+	pcaps = kzalloc(sizeof(*pcaps), GFP_KERNEL);
 	if (!pcaps)
 		return -ENOMEM;
 
@@ -1389,7 +1388,7 @@ static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
 	    link_up == !!(pi->phy.link_info.link_info & ICE_AQ_LINK_UP))
 		goto out;
 
-	cfg = devm_kzalloc(dev, sizeof(*cfg), GFP_KERNEL);
+	cfg = kzalloc(sizeof(*cfg), GFP_KERNEL);
 	if (!cfg) {
 		retcode = -ENOMEM;
 		goto out;
@@ -1414,9 +1413,9 @@ static int ice_force_phys_link_state(struct ice_vsi *vsi, bool link_up)
 		retcode = -EIO;
 	}
 
-	devm_kfree(dev, cfg);
+	kfree(cfg);
 out:
-	devm_kfree(dev, pcaps);
+	kfree(pcaps);
 	return retcode;
 }
 
@@ -4866,7 +4865,6 @@ ice_bridge_getlink(struct sk_buff *skb, u32 pid, u32 seq,
  */
 static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 {
-	struct device *dev = &vsi->back->pdev->dev;
 	struct ice_aqc_vsi_props *vsi_props;
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
@@ -4875,7 +4873,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 
 	vsi_props = &vsi->info;
 
-	ctxt = devm_kzalloc(dev, sizeof(*ctxt), GFP_KERNEL);
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return -ENOMEM;
 
@@ -4891,7 +4889,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_err(dev, "update VSI for bridge mode failed, bmode = %d err %d aq_err %d\n",
+		dev_err(&vsi->back->pdev->dev, "update VSI for bridge mode failed, bmode = %d err %d aq_err %d\n",
 			bmode, status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
@@ -4900,7 +4898,7 @@ static int ice_vsi_update_bridge_mode(struct ice_vsi *vsi, u16 bmode)
 	vsi_props->sw_flags = ctxt->info.sw_flags;
 
 out:
-	devm_kfree(dev, ctxt);
+	kfree(ctxt);
 	return ret;
 }
 
diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index 869111a45d61..565fc9780ebe 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -459,13 +459,12 @@ static void ice_vsi_kill_pvid_fill_ctxt(struct ice_vsi_ctx *ctxt)
  */
 static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 vid, bool enable)
 {
-	struct device *dev = &vsi->back->pdev->dev;
 	struct ice_hw *hw = &vsi->back->hw;
 	struct ice_vsi_ctx *ctxt;
 	enum ice_status status;
 	int ret = 0;
 
-	ctxt = devm_kzalloc(dev, sizeof(*ctxt), GFP_KERNEL);
+	ctxt = kzalloc(sizeof(*ctxt), GFP_KERNEL);
 	if (!ctxt)
 		return -ENOMEM;
 
@@ -477,7 +476,7 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 vid, bool enable)
 
 	status = ice_update_vsi(hw, vsi->idx, ctxt, NULL);
 	if (status) {
-		dev_info(dev, "update VSI for port VLAN failed, err %d aq_err %d\n",
+		dev_info(&vsi->back->pdev->dev, "update VSI for port VLAN failed, err %d aq_err %d\n",
 			 status, hw->adminq.sq_last_status);
 		ret = -EIO;
 		goto out;
@@ -485,7 +484,7 @@ static int ice_vsi_manage_pvid(struct ice_vsi *vsi, u16 vid, bool enable)
 
 	vsi->info = ctxt->info;
 out:
-	devm_kfree(dev, ctxt);
+	kfree(ctxt);
 	return ret;
 }
 
@@ -1624,7 +1623,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 
 	len = sizeof(struct virtchnl_vf_resource);
 
-	vfres = devm_kzalloc(&pf->pdev->dev, len, GFP_KERNEL);
+	vfres = kzalloc(len, GFP_KERNEL);
 	if (!vfres) {
 		v_ret = VIRTCHNL_STATUS_ERR_NO_MEMORY;
 		len = 0;
@@ -1700,7 +1699,7 @@ static int ice_vc_get_vf_res_msg(struct ice_vf *vf, u8 *msg)
 	ret = ice_vc_send_msg_to_vf(vf, VIRTCHNL_OP_GET_VF_RESOURCES, v_ret,
 				    (u8 *)vfres, len);
 
-	devm_kfree(&pf->pdev->dev, vfres);
+	kfree(vfres);
 	return ret;
 }
 
@@ -3167,7 +3166,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 		return 0;
 	}
 
-	ctx = devm_kzalloc(&pf->pdev->dev, sizeof(*ctx), GFP_KERNEL);
+	ctx = kzalloc(sizeof(*ctx), GFP_KERNEL);
 	if (!ctx)
 		return -ENOMEM;
 
@@ -3190,7 +3189,7 @@ int ice_set_vf_spoofchk(struct net_device *netdev, int vf_id, bool ena)
 	vsi->info.sec_flags = ctx->info.sec_flags;
 	vsi->info.sw_flags2 = ctx->info.sw_flags2;
 out:
-	devm_kfree(&pf->pdev->dev, ctx);
+	kfree(ctx);
 	return ret;
 }
 
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
