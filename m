Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from silver.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A19F86DA7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  9 Aug 2019 01:08:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by silver.osuosl.org (Postfix) with ESMTP id D106D204C7;
	Thu,  8 Aug 2019 23:08:24 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from silver.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id a9JNPN2k4EcY; Thu,  8 Aug 2019 23:08:24 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by silver.osuosl.org (Postfix) with ESMTP id AD77E204FC;
	Thu,  8 Aug 2019 23:08:22 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from hemlock.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 86E971BF383
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by hemlock.osuosl.org (Postfix) with ESMTP id 7C32D8831B
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from hemlock.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ctCzLs8J1v6Y for <intel-wired-lan@lists.osuosl.org>;
 Thu,  8 Aug 2019 23:08:17 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by hemlock.osuosl.org (Postfix) with ESMTPS id 4A94788320
 for <intel-wired-lan@lists.osuosl.org>; Thu,  8 Aug 2019 23:08:17 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga103.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 08 Aug 2019 16:08:16 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.64,363,1559545200"; d="scan'208";a="169141828"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by orsmga008.jf.intel.com with ESMTP; 08 Aug 2019 16:08:16 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  8 Aug 2019 07:39:26 -0700
Message-Id: <20190808143938.4968-3-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
References: <20190808143938.4968-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S27 03/15] ice: Always notify FW of VF
 reset
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

From: Mitch Williams <mitch.a.williams@intel.com>

The call to ice_dis_vsi_txq() acts as the notification to the firmware
that the VF is being reset. Because of this, we need to make this call
every time we reset, regardless of whatever else we do to stop the tx
queues.

Without this change, VF resets would fail to complete on interfaces that
were up and running.

Signed-off-by: Mitch Williams <mitch.a.williams@intel.com>
---
 .../net/ethernet/intel/ice/ice_virtchnl_pf.c  | 25 ++++++++++++-------
 1 file changed, 16 insertions(+), 9 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
index b93324e9f4bc..c58e3e3212df 100644
--- a/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
+++ b/drivers/net/ethernet/intel/ice/ice_virtchnl_pf.c
@@ -1074,9 +1074,16 @@ bool ice_reset_all_vfs(struct ice_pf *pf, bool is_vflr)
 	for (v = 0; v < pf->num_alloc_vfs; v++)
 		ice_trigger_vf_reset(&pf->vf[v], is_vflr);
 
-	for (v = 0; v < pf->num_alloc_vfs; v++)
-		if (test_bit(ICE_VF_STATE_QS_ENA, pf->vf[v].vf_states))
-			ice_dis_vf_qs(&pf->vf[v]);
+	for (v = 0; v < pf->num_alloc_vfs; v++) {
+		struct ice_vsi *vsi;
+
+		vf = &pf->vf[v];
+		vsi = pf->vsi[vf->lan_vsi_idx];
+		if (test_bit(ICE_VF_STATE_QS_ENA, vf->vf_states))
+			ice_dis_vf_qs(vf);
+		ice_dis_vsi_txq(vsi->port_info, vsi->idx, 0, 0, NULL, NULL,
+				NULL, ICE_VF_RESET, vf->vf_id, NULL);
+	}
 
 	/* HW requires some time to make sure it can flush the FIFO for a VF
 	 * when it resets it. Poll the VPGEN_VFRSTAT register for each VF in
@@ -1171,12 +1178,12 @@ static bool ice_reset_vf(struct ice_vf *vf, bool is_vflr)
 
 	if (test_bit(ICE_VF_STATE_QS_ENA, vf->vf_states))
 		ice_dis_vf_qs(vf);
-	else
-		/* Call Disable LAN Tx queue AQ call even when queues are not
-		 * enabled. This is needed for successful completion of VFR
-		 */
-		ice_dis_vsi_txq(vsi->port_info, vsi->idx, 0, 0, NULL, NULL,
-				NULL, ICE_VF_RESET, vf->vf_id, NULL);
+
+	/* Call Disable LAN Tx queue AQ whether or not queues are
+	 * enabled. This is needed for successful completion of VFR.
+	 */
+	ice_dis_vsi_txq(vsi->port_info, vsi->idx, 0, 0, NULL, NULL,
+			NULL, ICE_VF_RESET, vf->vf_id, NULL);
 
 	hw = &pf->hw;
 	/* poll VPGEN_VFRSTAT reg to make sure
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
