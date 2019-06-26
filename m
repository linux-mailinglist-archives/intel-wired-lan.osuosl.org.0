Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 0105656FCF
	for <lists+intel-wired-lan@lfdr.de>; Wed, 26 Jun 2019 19:47:57 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by fraxinus.osuosl.org (Postfix) with ESMTP id AC38C860E6;
	Wed, 26 Jun 2019 17:47:55 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
	by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id PIAJFU3lRYbq; Wed, 26 Jun 2019 17:47:54 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by fraxinus.osuosl.org (Postfix) with ESMTP id 8850486160;
	Wed, 26 Jun 2019 17:47:54 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from fraxinus.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 814541BF326
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by fraxinus.osuosl.org (Postfix) with ESMTP id 7C6C986168
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from fraxinus.osuosl.org ([127.0.0.1])
 by localhost (.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id IMdXAU2mvJvR for <intel-wired-lan@lists.osuosl.org>;
 Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.7.6
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by fraxinus.osuosl.org (Postfix) with ESMTPS id 0B267860E6
 for <intel-wired-lan@lists.osuosl.org>; Wed, 26 Jun 2019 17:47:53 +0000 (UTC)
X-Amp-Result: SKIPPED(no attachment in message)
X-Amp-File-Uploaded: False
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
 26 Jun 2019 10:47:52 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.63,420,1557212400"; d="scan'208";a="183218133"
Received: from unknown (HELO localhost.jf.intel.com) ([10.166.244.174])
 by fmsmga001.fm.intel.com with ESMTP; 26 Jun 2019 10:47:52 -0700
From: Tony Nguyen <anthony.l.nguyen@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 26 Jun 2019 02:20:20 -0700
Message-Id: <20190626092027.52845-9-anthony.l.nguyen@intel.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
References: <20190626092027.52845-1-anthony.l.nguyen@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH S22 09/16] ice: Set up Tx scheduling tree
 based on alloc VSI Tx queues
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
Cc: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>

This patch uses allocated number of Tx queues per VSI to set up its
scheduling tree instead of using total number of available Tx queues.
Only PF VSIs have total number of allocated Tx queues equal to number
of available Tx queues, other VSIs have different number of queues
configured.

Signed-off-by: Akeem G Abodunrin <akeem.g.abodunrin@intel.com>
Signed-off-by: Tony Nguyen <anthony.l.nguyen@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 9aa1f285b17f..85fb1e4640ca 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -2605,7 +2605,7 @@ ice_vsi_setup(struct ice_pf *pf, struct ice_port_info *pi,
 
 	/* configure VSI nodes based on number of queues and TC's */
 	for (i = 0; i < vsi->tc_cfg.numtc; i++)
-		max_txqs[i] = pf->num_lan_tx;
+		max_txqs[i] = vsi->alloc_txq;
 
 	status = ice_cfg_vsi_lan(vsi->port_info, vsi->idx, vsi->tc_cfg.ena_tc,
 				 max_txqs);
@@ -3131,7 +3131,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi)
 
 	/* configure VSI nodes based on number of queues and TC's */
 	for (i = 0; i < vsi->tc_cfg.numtc; i++) {
-		max_txqs[i] = pf->num_lan_tx;
+		max_txqs[i] = vsi->alloc_txq;
 
 		if (ice_is_xdp_ena_vsi(vsi))
 			max_txqs[i] += vsi->num_xdp_txq;
@@ -3252,7 +3252,7 @@ int ice_vsi_cfg_tc(struct ice_vsi *vsi, u8 ena_tc)
 		if (ena_tc & BIT(i))
 			num_tc++;
 		/* populate max_txqs per TC */
-		max_txqs[i] = pf->num_lan_tx;
+		max_txqs[i] = vsi->alloc_txq;
 	}
 
 	vsi->tc_cfg.ena_tc = ena_tc;
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
