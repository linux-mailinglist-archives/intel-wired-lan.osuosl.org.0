Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 3692B367C7C
	for <lists+intel-wired-lan@lfdr.de>; Thu, 22 Apr 2021 10:27:56 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id BBFC940540;
	Thu, 22 Apr 2021 08:27:53 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 9PUc8MbPWbFA; Thu, 22 Apr 2021 08:27:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7207540536;
	Thu, 22 Apr 2021 08:27:52 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id AA20E1BF345
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 08:27:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id A392E40536
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 08:27:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 7huIOWmE8EpT for <intel-wired-lan@lists.osuosl.org>;
 Thu, 22 Apr 2021 08:27:45 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C4CDD404DE
 for <intel-wired-lan@lists.osuosl.org>; Thu, 22 Apr 2021 08:27:45 +0000 (UTC)
IronPort-SDR: E3kVbHRgRdCmPVXccP6YaNosjtHYiREtMR76dKrNTZW9dcAubvgb9tWIuK1+bpT+SNaVdfAqv8
 j+708Nv85ySg==
X-IronPort-AV: E=McAfee;i="6200,9189,9961"; a="193730322"
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="193730322"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 22 Apr 2021 01:27:45 -0700
IronPort-SDR: wVy9t8lF78Ome95bEECPQkl8odJzwDAiRRY7oMDLa9ZlFgHTQ/ZHCzvLd+eUxzVg8UntrbGNF7
 foF3G/k6K2nw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.82,242,1613462400"; d="scan'208";a="524572191"
Received: from amlin-018-147.igk.intel.com ([10.102.18.147])
 by fmsmga001.fm.intel.com with ESMTP; 22 Apr 2021 01:27:42 -0700
From: Eryk Rybak <eryk.roch.rybak@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 22 Apr 2021 10:28:48 +0200
Message-Id: <20210422082849.42079-1-eryk.roch.rybak@intel.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH 1/2 net v3] i40e: Fix changing previously
 set num_queue_pairs for PFs
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
 Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Currently, the i40e_vsi_setup_queue_map is basing the count of queues in
TCs on a VSI's alloc_queue_pairs member which is not changed throughout
any user's action (for example via ethtool's set_channels callback).

This implies that vsi->tc_config.tc_info[n].qcount value that is given
to the kernel via netdev_set_tc_queue() that notifies about the count of
queues per particular traffic class is constant even if user has changed
the total count of queues.

This in turn caused the kernel warning after setting the queue count to
the lower value than the initial one:

$ ethtool -l ens801f0
Channel parameters for ens801f0:
Pre-set maximums:
RX:             0
TX:             0
Other:          1
Combined:       64
Current hardware settings:
RX:             0
TX:             0
Other:          1
Combined:       64

$ ethtool -L ens801f0 combined 40

[dmesg]
Number of in use tx queues changed invalidating tc mappings. Priority
traffic classification disabled!

Reason was that vsi->alloc_queue_pairs stayed at 64 value which was used
to set the qcount on TC0 (by default only TC0 exists so all of the
existing queues are assigned to TC0). we update the offset/qcount via
netdev_set_tc_queue() back to the old value but then the
netif_set_real_num_tx_queues() is using the vsi->num_queue_pairs as a
value which got set to 40.

Fix it by using vsi->req_queue_pairs as a queue count that will be
distributed across TCs. Do it only for non-zero values, which implies
that user actually requested the new count of queues.

For VSIs other than main, stay with the vsi->alloc_queue_pairs as we
only allow manipulating the queue count on main VSI.

Fixes: bc6d33c8d93f ("i40e: Fix the number of queues available to be mapped for use")
Co-developed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Co-developed-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Przemyslaw Patynowski <przemyslawx.patynowski@intel.com>
Signed-off-by: Eryk Rybak <eryk.roch.rybak@intel.com>
---
 drivers/net/ethernet/intel/i40e/i40e_main.c | 35 ++++++++++++++-------
 1 file changed, 23 insertions(+), 12 deletions(-)

diff --git a/drivers/net/ethernet/intel/i40e/i40e_main.c b/drivers/net/ethernet/intel/i40e/i40e_main.c
index 3180b4199bd8..a717941db037 100644
--- a/drivers/net/ethernet/intel/i40e/i40e_main.c
+++ b/drivers/net/ethernet/intel/i40e/i40e_main.c
@@ -1797,6 +1797,7 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 				     bool is_add)
 {
 	struct i40e_pf *pf = vsi->back;
+	u16 num_tc_qps = 0;
 	u16 sections = 0;
 	u8 netdev_tc = 0;
 	u16 numtc = 1;
@@ -1804,13 +1805,29 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 	u8 offset;
 	u16 qmap;
 	int i;
-	u16 num_tc_qps = 0;
 
 	sections = I40E_AQ_VSI_PROP_QUEUE_MAP_VALID;
 	offset = 0;
 
+	if (vsi->type == I40E_VSI_MAIN) {
+		/* This code helps add more queue to the VSI if we have
+		 * more cores than RSS can support, the higher cores will
+		 * be served by ATR or other filters. Furthermore, the
+		 * non-zero req_queue_pairs says that user requested a new
+		 * queue count via ethtool's set_channels, so use this
+		 * value for queues distribution across traffic classes
+		 */
+		if (vsi->req_queue_pairs > 0)
+			vsi->num_queue_pairs = vsi->req_queue_pairs;
+		else if (pf->flags & I40E_FLAG_MSIX_ENABLED)
+			vsi->num_queue_pairs = pf->num_lan_msix;
+	}
+
 	/* Number of queues per enabled TC */
-	num_tc_qps = vsi->alloc_queue_pairs;
+	if (vsi->type == I40E_VSI_MAIN)
+		num_tc_qps = vsi->num_queue_pairs;
+	else
+		num_tc_qps = vsi->alloc_queue_pairs;
 	if (enabled_tc && (vsi->back->flags & I40E_FLAG_DCB_ENABLED)) {
 		/* Find numtc from enabled TC bitmap */
 		for (i = 0, numtc = 0; i < I40E_MAX_TRAFFIC_CLASS; i++) {
@@ -1888,16 +1905,10 @@ static void i40e_vsi_setup_queue_map(struct i40e_vsi *vsi,
 		}
 		ctxt->info.tc_mapping[i] = cpu_to_le16(qmap);
 	}
-
-	/* Set actual Tx/Rx queue pairs */
-	vsi->num_queue_pairs = offset;
-	if ((vsi->type == I40E_VSI_MAIN) && (numtc == 1)) {
-		if (vsi->req_queue_pairs > 0)
-			vsi->num_queue_pairs = vsi->req_queue_pairs;
-		else if (pf->flags & I40E_FLAG_MSIX_ENABLED)
-			vsi->num_queue_pairs = pf->num_lan_msix;
-	}
-
+	/* Do not change previously set num_queue_pairs for PFs */
+	if ((vsi->type == I40E_VSI_MAIN && numtc != 1) ||
+	    vsi->type != I40E_VSI_MAIN)
+		vsi->num_queue_pairs = offset;
 	/* Scheduler section valid can only be set for ADD VSI */
 	if (is_add) {
 		sections |= I40E_AQ_VSI_PROP_SCHED_VALID;

base-commit: 148327fca93837928fe47c94a3e18d007a90f631
-- 
2.20.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
