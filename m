Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 81A3A145F83
	for <lists+intel-wired-lan@lfdr.de>; Thu, 23 Jan 2020 00:54:59 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by whitealder.osuosl.org (Postfix) with ESMTP id 28FC086FEF;
	Wed, 22 Jan 2020 23:54:58 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id YY13uicFsD9O; Wed, 22 Jan 2020 23:54:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by whitealder.osuosl.org (Postfix) with ESMTP id 4D80C86FBB;
	Wed, 22 Jan 2020 23:54:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from whitealder.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5AC511BF9B4
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by whitealder.osuosl.org (Postfix) with ESMTP id 5665184C63
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:25 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from whitealder.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Uj3Zylfxn7Cx for <intel-wired-lan@lists.osuosl.org>;
 Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga17.intel.com (mga17.intel.com [192.55.52.151])
 by whitealder.osuosl.org (Postfix) with ESMTPS id 4D23784397
 for <intel-wired-lan@lists.osuosl.org>; Wed, 22 Jan 2020 23:54:23 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by fmsmga107.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 22 Jan 2020 15:54:22 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.70,351,1574150400"; d="scan'208";a="259651620"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga002.fm.intel.com with ESMTP; 22 Jan 2020 15:54:22 -0800
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 22 Jan 2020 07:21:34 -0800
Message-Id: <20200122152138.41585-11-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
References: <20200122152138.41585-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S38 11/15] ice: remove unnecessary
 fallthrough comments
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

From: Bruce Allan <bruce.w.allan@intel.com>

Fallthrough comments are used to explicitly indicate the code is intended
to flow from one case statement to the next in a switch statement rather
than break out of the switch statement.  They are only needed when a case
has one or more statements to execute before falling through to the next
case, not when there is a list of cases for which the same statement(s)
should be executed.

Signed-off-by: Bruce Allan <bruce.w.allan@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_base.c    | 1 -
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 2 --
 drivers/net/ethernet/intel/ice/ice_lib.c     | 2 --
 drivers/net/ethernet/intel/ice/ice_main.c    | 2 --
 drivers/net/ethernet/intel/ice/ice_sriov.c   | 2 --
 drivers/net/ethernet/intel/ice/ice_txrx.c    | 1 -
 6 files changed, 10 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_base.c b/drivers/net/ethernet/intel/ice/ice_base.c
index 1c41e7e6d548..75cc5a366b26 100644
--- a/drivers/net/ethernet/intel/ice/ice_base.c
+++ b/drivers/net/ethernet/intel/ice/ice_base.c
@@ -247,7 +247,6 @@ ice_setup_tx_ctx(struct ice_ring *ring, struct ice_tlan_ctx *tlan_ctx, u16 pf_q)
 	 */
 	switch (vsi->type) {
 	case ICE_VSI_LB:
-		/* fall through */
 	case ICE_VSI_PF:
 		tlan_ctx->vmvf_type = ICE_TLAN_CTX_VMVF_TYPE_PF;
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 8da99e576d4e..7b34c7c04547 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -1091,7 +1091,6 @@ ice_get_fecparam(struct net_device *netdev, struct ethtool_fecparam *fecparam)
 		fecparam->active_fec = ETHTOOL_FEC_BASER;
 		break;
 	case ICE_AQ_LINK_25G_RS_528_FEC_EN:
-		/* fall through */
 	case ICE_AQ_LINK_25G_RS_544_FEC_EN:
 		fecparam->active_fec = ETHTOOL_FEC_RS;
 		break;
@@ -1781,7 +1780,6 @@ ice_get_settings_link_up(struct ethtool_link_ksettings *ks,
 						     Asym_Pause);
 		break;
 	case ICE_FC_PFC:
-		/* fall through */
 	default:
 		ethtool_link_ksettings_del_link_mode(ks, lp_advertising, Pause);
 		ethtool_link_ksettings_del_link_mode(ks, lp_advertising,
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index cea664da9b94..1ab5fb20523b 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -121,7 +121,6 @@ static void ice_vsi_set_num_desc(struct ice_vsi *vsi)
 {
 	switch (vsi->type) {
 	case ICE_VSI_PF:
-		/* fall through */
 	case ICE_VSI_LB:
 		vsi->num_rx_desc = ICE_DFLT_NUM_RX_DESC;
 		vsi->num_tx_desc = ICE_DFLT_NUM_TX_DESC;
@@ -828,7 +827,6 @@ static int ice_vsi_init(struct ice_vsi *vsi, bool init_vsi)
 	ctxt->info = vsi->info;
 	switch (vsi->type) {
 	case ICE_VSI_LB:
-		/* fall through */
 	case ICE_VSI_PF:
 		ctxt->flags = ICE_AQ_VSI_TYPE_PF;
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index 4add2c3e830e..09458455df41 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -709,7 +709,6 @@ void ice_print_link_msg(struct ice_vsi *vsi, bool isup)
 	/* Get FEC mode based on negotiated link info */
 	switch (vsi->port_info->phy.link_info.fec_info) {
 	case ICE_AQ_LINK_25G_RS_528_FEC_EN:
-		/* fall through */
 	case ICE_AQ_LINK_25G_RS_544_FEC_EN:
 		fec = "RS-FEC";
 		break;
@@ -2981,7 +2980,6 @@ ice_log_pkg_init(struct ice_hw *hw, enum ice_status *status)
 		}
 		break;
 	case ICE_ERR_BUF_TOO_SHORT:
-		/* fall-through */
 	case ICE_ERR_CFG:
 		dev_err(dev, "The DDP package file is invalid. Entering Safe Mode.\n");
 		break;
diff --git a/drivers/net/ethernet/intel/ice/ice_sriov.c b/drivers/net/ethernet/intel/ice/ice_sriov.c
index d2db0d04e117..554f567476f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_sriov.c
+++ b/drivers/net/ethernet/intel/ice/ice_sriov.c
@@ -121,9 +121,7 @@ u32 ice_conv_link_speed_to_virtchnl(bool adv_link_support, u16 link_speed)
 			speed = (u32)VIRTCHNL_LINK_SPEED_25GB;
 			break;
 		case ICE_AQ_LINK_SPEED_40GB:
-			/* fall through */
 		case ICE_AQ_LINK_SPEED_50GB:
-			/* fall through */
 		case ICE_AQ_LINK_SPEED_100GB:
 			speed = (u32)VIRTCHNL_LINK_SPEED_40GB;
 			break;
diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 4de61dbedd36..0c08ab0462df 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -1188,7 +1188,6 @@ ice_adjust_itr_by_size_and_speed(struct ice_port_info *port_info,
 				    avg_pkt_size + 640);
 		break;
 	case ICE_AQ_LINK_SPEED_10GB:
-		/* fall through */
 	default:
 		itr += DIV_ROUND_UP(170 * (avg_pkt_size + 24),
 				    avg_pkt_size + 640);
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
