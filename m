Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 2E7B44EEEA8
	for <lists+intel-wired-lan@lfdr.de>; Fri,  1 Apr 2022 15:58:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id AD56A60D4F;
	Fri,  1 Apr 2022 13:58:27 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id zmvroUo8hW6x; Fri,  1 Apr 2022 13:58:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id A6DC660674;
	Fri,  1 Apr 2022 13:58:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 198681BF308
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:51:28 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 07BA660E43
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:51:28 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VMzMqda-Ms6a for <intel-wired-lan@lists.osuosl.org>;
 Fri,  1 Apr 2022 12:51:27 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 2B1B260AAE
 for <intel-wired-lan@lists.osuosl.org>; Fri,  1 Apr 2022 12:51:27 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1648817487; x=1680353487;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=o8qsm5XJyB00FzTXyPNmmsd8sv6LD8bNLcCHO3WWdPs=;
 b=A/TNttwT3c2V+sNZxyazsd4Wh5uygdWrWqX0a1LQj9F/ZD8ESLmbAc4/
 Nj1xvRmOmEKxkHakEw82yMFv9KZ04o7JndzcLsKX2mRqmbClE+wxmBAp3
 rr/4vRqgMMJHVo5BTpiiqkAlt2B1gQpG+5enM4WZ0sr4I74y8WFgSU4Aq
 LYciXGVosBsZYT6wJeCgBaVuHDqKmMeUSNaiXr2RvgqqJA3rp+n1vcmoa
 VRCmk3x+HGpzTQ0stvIsZKefW6MRN4oTfyb8QJToBP/vx0cU5OKr1teQp
 16vUd8w1zSbUc2gqUzgykOQIxCxA9va7S1NtIPHvKxxd5rhjuGa9b7jy6 A==;
X-IronPort-AV: E=McAfee;i="6200,9189,10303"; a="285060073"
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="285060073"
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 01 Apr 2022 05:51:26 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,227,1643702400"; d="scan'208";a="843432620"
Received: from propan.igk.intel.com ([10.211.8.82])
 by fmsmga005.fm.intel.com with ESMTP; 01 Apr 2022 05:51:25 -0700
From: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  1 Apr 2022 13:48:52 +0000
Message-Id: <20220401134852.627643-1-anatolii.gerasymenko@intel.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
X-Mailman-Approved-At: Fri, 01 Apr 2022 13:58:08 +0000
Subject: [Intel-wired-lan] [PATCH net v1] ice: Set txq_teid to
 ICE_INVAL_TEID on ring creation
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
Cc: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When VF is freshly created, but not brought up, ring->txq_teid
value is by default set to 0.
But 0 is a valid TEID. On some platforms the Root Node of
Tx scheduler has a TEID = 0. This can cause issues as shown below.

The proper way is to set ring->txq_teid to ICE_INVAL_TEID (0xFFFFFFFF).

Testing Hints:
echo 1 > /sys/class/net/ens785f0/device/sriov_numvfs
ip link set dev ens785f0v0 up
ip link set dev ens785f0v0 down

If we have freshly created VF and quickly turn it on and off, so there
would be no time to reach VIRTCHNL_OP_CONFIG_VSI_QUEUES stage, then
VIRTCHNL_OP_DISABLE_QUEUES stage will fail with error:
[  639.531454] disable queue 89 failed 14
[  639.532233] Failed to disable LAN Tx queues, error: ICE_ERR_AQ_ERROR
[  639.533107] ice 0000:02:00.0: Failed to stop Tx ring 0 on VSI 5

The reason for the fail is that we are trying to send AQ command to
delete queue 89, which has never been created and receive an "invalid
argument" error from firmware.

As this queue has never been created, it's teid and ring->txq_teid
have default value 0.
ice_dis_vsi_txq has a check against non-existent queues:

node = ice_sched_find_node_by_teid(pi->root, q_teids[i]);
if (!node)
	continue;

But on some platforms the Root Node of Tx scheduler has a teid = 0.
Hence, ice_sched_find_node_by_teid finds a node with teid = 0 (it is
pi->root), and we go further to submit an erroneous request to firmware.

Fixes: 37bb83901286 ("ice: Move common functions out of ice_main.c part 7/7")

Signed-off-by: Anatolii Gerasymenko <anatolii.gerasymenko@intel.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
Tested-by: Konrad Jankowski <konrad0.jankowski@intel.com>
---
This is an urgent fix for
https://bugzilla.redhat.com/show_bug.cgi?id=1997012
Send it, please, directly to net. Thanks!
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 6d6233204388..2774cbd5b12a 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1480,6 +1480,7 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->tx_tstamps = &pf->ptp.port.tx;
 		ring->dev = dev;
 		ring->count = vsi->num_tx_desc;
+		ring->txq_teid = ICE_INVAL_TEID;
 		if (dvm_ena)
 			ring->flags |= ICE_TX_FLAGS_RING_VLAN_L2TAG2;
 		else
-- 
2.25.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
