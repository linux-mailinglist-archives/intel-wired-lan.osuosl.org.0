Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id ADD342FECCE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 21 Jan 2021 15:23:12 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by hemlock.osuosl.org (Postfix) with ESMTP id 35A1C871AC;
	Thu, 21 Jan 2021 14:23:11 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id csrBkNGMMiNO; Thu, 21 Jan 2021 14:23:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by hemlock.osuosl.org (Postfix) with ESMTP id 69806871C9;
	Thu, 21 Jan 2021 14:23:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8D83D1BF363
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:23:08 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by silver.osuosl.org (Postfix) with ESMTP id 7F543207A1
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:23:08 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id UwPVm1nEFD4j for <intel-wired-lan@lists.osuosl.org>;
 Thu, 21 Jan 2021 14:23:07 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by silver.osuosl.org (Postfix) with ESMTPS id 0EF9020798
 for <intel-wired-lan@lists.osuosl.org>; Thu, 21 Jan 2021 14:23:06 +0000 (UTC)
IronPort-SDR: +hwNVxYtgXULd1TNJudiuZ/86GFJuWB/ME2NwT2/Gt/exv9KK++fOqfSdH2cYfPBSmDfi5JUsA
 9ZzfrknWeFuQ==
X-IronPort-AV: E=McAfee;i="6000,8403,9870"; a="198011629"
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="198011629"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 21 Jan 2021 06:22:50 -0800
IronPort-SDR: osO9lg4PeE7VwmZgh4dcdkqetnZzxcXkJfv+xk6ZA2lh8Qj02zy5tjWpYz5ZyepG/S/X4jTX9Q
 dpPNfpi0JKpw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.79,364,1602572400"; d="scan'208";a="403212076"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by fmsmga002.fm.intel.com with ESMTP; 21 Jan 2021 06:22:49 -0800
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 21 Jan 2021 16:17:22 +0000
Message-Id: <20210121161722.1875-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH net-next] i40e: Fix correct max_pkt_size
 on VF RX queue
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
Cc: Eryk Rybak <eryk.roch.rybak@intel.com>,
 Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>,
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Setting VLAN port increasing RX queue max_pkt_size
by 4 bytes to take VLAN tag into account.
Trigger the VF reset when setting port VLAN for
VF to renegotiate its capabilities and reinitialize.

Fixes: ba4e003d29c1("i40e: don't hold spinlock while resetting VF")
Signed-off-by: Sylwester Dziedziuch <sylwesterx.dziedziuch@intel.com>
Signed-off-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
---
 .../ethernet/intel/i40e/i40e_virtchnl_pf.c    | 53 ++++---------------
 1 file changed, 9 insertions(+), 44 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
index 7efc61a..4a4be04 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_virtchnl_pf.c
@@ -621,14 +621,13 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf *vf, u16 vsi_id,
 				    u16 vsi_queue_id,
 				    struct virtchnl_rxq_info *info)
 {
+	u16 pf_queue_id = i40e_vc_get_pf_queue_id(vf, vsi_id, vsi_queue_id);
 	struct i40e_pf *pf = vf->pf;
 	struct i40e_hw *hw = &pf->hw;
+	struct i40e_vsi *vsi = pf->vsi[vf->lan_vsi_idx];
 	struct i40e_hmc_obj_rxq rx_ctx;
-	u16 pf_queue_id;
 	int ret = 0;
 
-	pf_queue_id = i40e_vc_get_pf_queue_id(vf, vsi_id, vsi_queue_id);
-
 	/* clear the context structure first */
 	memset(&rx_ctx, 0, sizeof(struct i40e_hmc_obj_rxq));
 
@@ -666,6 +665,10 @@ static int i40e_config_vsi_rx_queue(struct i40e_vf *vf, u16 vsi_id,
 	}
 	rx_ctx.rxmax = info->max_pkt_size;
 
+	/* if port VLAN is configured increase the max packet size */
+	if (vsi->info.pvid)
+		rx_ctx.rxmax += VLAN_HLEN;
+
 	/* enable 32bytes desc always */
 	rx_ctx.dsize = 1;
 
@@ -4118,34 +4121,6 @@ int i40e_ndo_set_vf_mac(struct net_device *netdev, int vf_id, u8 *mac)
 	return ret;
 }
 
-/**
- * i40e_vsi_has_vlans - True if VSI has configured VLANs
- * @vsi: pointer to the vsi
- *
- * Check if a VSI has configured any VLANs. False if we have a port VLAN or if
- * we have no configured VLANs. Do not call while holding the
- * mac_filter_hash_lock.
- */
-static bool i40e_vsi_has_vlans(struct i40e_vsi *vsi)
-{
-	bool have_vlans;
-
-	/* If we have a port VLAN, then the VSI cannot have any VLANs
-	 * configured, as all MAC/VLAN filters will be assigned to the PVID.
-	 */
-	if (vsi->info.pvid)
-		return false;
-
-	/* Since we don't have a PVID, we know that if the device is in VLAN
-	 * mode it must be because of a VLAN filter configured on this VSI.
-	 */
-	spin_lock_bh(&vsi->mac_filter_hash_lock);
-	have_vlans = i40e_is_vsi_in_vlan(vsi);
-	spin_unlock_bh(&vsi->mac_filter_hash_lock);
-
-	return have_vlans;
-}
-
 /**
  * i40e_ndo_set_vf_port_vlan
  * @netdev: network interface device structure
@@ -4202,19 +4177,9 @@ int i40e_ndo_set_vf_port_vlan(struct net_device *netdev, int vf_id,
 		/* duplicate request, so just return success */
 		goto error_pvid;
 
-	if (i40e_vsi_has_vlans(vsi)) {
-		dev_err(&pf->pdev->dev,
-			"VF %d has already configured VLAN filters and the administrator is requesting a port VLAN override.\nPlease unload and reload the VF driver for this change to take effect.\n",
-			vf_id);
-		/* Administrator Error - knock the VF offline until he does
-		 * the right thing by reconfiguring his network correctly
-		 * and then reloading the VF driver.
-		 */
-		i40e_vc_disable_vf(vf);
-		/* During reset the VF got a new VSI, so refresh the pointer. */
-		vsi = pf->vsi[vf->lan_vsi_idx];
-	}
-
+	i40e_vc_disable_vf(vf);
+	/* During reset the VF got a new VSI, so refresh a pointer. */
+	vsi = pf->vsi[vf->lan_vsi_idx];
 	/* Locked once because multiple functions below iterate list */
 	spin_lock_bh(&vsi->mac_filter_hash_lock);
 

base-commit: 53959a962308c53a02a89dab13e42c3b69f8c51c
-- 
2.20.1

---------------------------------------------------------------------
Intel Technology Poland sp. z o.o.
ul. Sowackiego 173 | 80-298 Gdask | Sd Rejonowy Gdask Pnoc | VII Wydzia Gospodarczy Krajowego Rejestru Sdowego - KRS 101882 | NIP 957-07-52-316 | Kapita zakadowy 200.000 PLN.
Ta wiadomo wraz z zacznikami jest przeznaczona dla okrelonego adresata i moe zawiera informacje poufne. W razie przypadkowego otrzymania tej wiadomoci, prosimy o powiadomienie nadawcy oraz trwae jej usunicie; jakiekolwiek przegldanie lub rozpowszechnianie jest zabronione.
This e-mail and any attachments may contain confidential material for the sole use of the intended recipient(s). If you are not the intended recipient, please contact the sender and delete all copies; any review or distribution by others is strictly prohibited.
 

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
