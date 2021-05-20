Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 8A9A3389E30
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 May 2021 08:47:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id CA9E640EC1;
	Thu, 20 May 2021 06:47:16 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id J_xIGXl-KToB; Thu, 20 May 2021 06:47:15 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 524BF40E9D;
	Thu, 20 May 2021 06:47:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 293731BF23C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:47:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1775A403FB
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:47:06 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id mSr7tkmu3wJ3 for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 May 2021 06:47:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 585D440480
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 May 2021 06:47:05 +0000 (UTC)
IronPort-SDR: a/ZZleOLP3I6ap+JSyYBYUb9eMBJmg2S4jH2XCpmLcr/RVzgHX4/zU16JvOZj+aJbIGUpBcEx8
 S9nnkQrPO+jQ==
X-IronPort-AV: E=McAfee;i="6200,9189,9989"; a="265072138"
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="265072138"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 19 May 2021 23:47:05 -0700
IronPort-SDR: E7nubylZ5EOgdYOVEQ8JL+OoU6FAGuVdqamJ4WJEktq1Q3tMIYuHK1Yk0wZMRIDKkcZx8vZCQx
 WsAxpIPbgtmQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,313,1613462400"; d="scan'208";a="543203148"
Received: from ranger.igk.intel.com ([10.102.21.164])
 by fmsmga001.fm.intel.com with ESMTP; 19 May 2021 23:47:02 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 20 May 2021 08:35:00 +0200
Message-Id: <20210520063500.62037-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210520063500.62037-1-maciej.fijalkowski@intel.com>
References: <20210520063500.62037-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH v2 intel-net 2/2] ice: parametrize
 functions responsible for Tx ring management
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
Cc: netdev@vger.kernel.org, bjorn@kernel.org, kuba@kernel.org,
 bpf@vger.kernel.org, davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Commit ae15e0ba1b33 ("ice: Change number of XDP Tx queues to match
number of Rx queues") tried to address the incorrect setting of XDP
queue count that was based on the Tx queue count, whereas in theory we
should provide the XDP queue per Rx queue. However, the routines that
setup and destroy the set of Tx resources are still based on the
vsi->num_txq.

Ice supports the asynchronous Tx/Rx queue count, so for a setup where
vsi->num_txq > vsi->num_rxq, ice_vsi_stop_tx_rings and ice_vsi_cfg_txqs
will be accessing the vsi->xdp_rings out of the bounds.

Parametrize two mentioned functions so they get the size of Tx resources
array as the input.

Fixes: ae15e0ba1b33 ("ice: Change number of XDP Tx queues to match number of Rx queues")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 18 ++++++++++--------
 1 file changed, 10 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 4f8b29d6dcfd..3c8668d8b964 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1705,12 +1705,13 @@ int ice_vsi_cfg_rxqs(struct ice_vsi *vsi)
  * ice_vsi_cfg_txqs - Configure the VSI for Tx
  * @vsi: the VSI being configured
  * @rings: Tx ring array to be configured
+ * @count: number of Tx ring array elements
  *
  * Return 0 on success and a negative value on error
  * Configure the Tx VSI for operation.
  */
 static int
-ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings)
+ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings, u16 count)
 {
 	struct ice_aqc_add_tx_qgrp *qg_buf;
 	u16 q_idx = 0;
@@ -1722,7 +1723,7 @@ ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings)
 
 	qg_buf->num_txqs = 1;
 
-	for (q_idx = 0; q_idx < vsi->num_txq; q_idx++) {
+	for (q_idx = 0; q_idx < count; q_idx++) {
 		err = ice_vsi_cfg_txq(vsi, rings[q_idx], qg_buf);
 		if (err)
 			goto err_cfg_txqs;
@@ -1742,7 +1743,7 @@ ice_vsi_cfg_txqs(struct ice_vsi *vsi, struct ice_ring **rings)
  */
 int ice_vsi_cfg_lan_txqs(struct ice_vsi *vsi)
 {
-	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings);
+	return ice_vsi_cfg_txqs(vsi, vsi->tx_rings, vsi->num_txq);
 }
 
 /**
@@ -1757,7 +1758,7 @@ int ice_vsi_cfg_xdp_txqs(struct ice_vsi *vsi)
 	int ret;
 	int i;
 
-	ret = ice_vsi_cfg_txqs(vsi, vsi->xdp_rings);
+	ret = ice_vsi_cfg_txqs(vsi, vsi->xdp_rings, vsi->num_xdp_txq);
 	if (ret)
 		return ret;
 
@@ -1997,17 +1998,18 @@ int ice_vsi_stop_all_rx_rings(struct ice_vsi *vsi)
  * @rst_src: reset source
  * @rel_vmvf_num: Relative ID of VF/VM
  * @rings: Tx ring array to be stopped
+ * @count: number of Tx ring array elements
  */
 static int
 ice_vsi_stop_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
-		      u16 rel_vmvf_num, struct ice_ring **rings)
+		      u16 rel_vmvf_num, struct ice_ring **rings, u16 count)
 {
 	u16 q_idx;
 
 	if (vsi->num_txq > ICE_LAN_TXQ_MAX_QDIS)
 		return -EINVAL;
 
-	for (q_idx = 0; q_idx < vsi->num_txq; q_idx++) {
+	for (q_idx = 0; q_idx < count; q_idx++) {
 		struct ice_txq_meta txq_meta = { };
 		int status;
 
@@ -2035,7 +2037,7 @@ int
 ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
 			  u16 rel_vmvf_num)
 {
-	return ice_vsi_stop_tx_rings(vsi, rst_src, rel_vmvf_num, vsi->tx_rings);
+	return ice_vsi_stop_tx_rings(vsi, rst_src, rel_vmvf_num, vsi->tx_rings, vsi->num_txq);
 }
 
 /**
@@ -2044,7 +2046,7 @@ ice_vsi_stop_lan_tx_rings(struct ice_vsi *vsi, enum ice_disq_rst_src rst_src,
  */
 int ice_vsi_stop_xdp_tx_rings(struct ice_vsi *vsi)
 {
-	return ice_vsi_stop_tx_rings(vsi, ICE_NO_RESET, 0, vsi->xdp_rings);
+	return ice_vsi_stop_tx_rings(vsi, ICE_NO_RESET, 0, vsi->xdp_rings, vsi->num_xdp_txq);
 }
 
 /**
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
