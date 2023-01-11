Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AC600665D98
	for <lists+intel-wired-lan@lfdr.de>; Wed, 11 Jan 2023 15:20:43 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8A743404E9;
	Wed, 11 Jan 2023 14:20:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8A743404E9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1673446840;
	bh=QhqSPt2u/nzknL5U60/OBgEY2NwyrF9puRlgDuPU2cs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=xoUZq6doq1KUiyGtua5GrW2i4FDlRzzImzNSW++296FOYgI3PO0PsiShxhjRdOxzI
	 PypnDqRP7ncfR+un6VCMsaQjtfS2QRZCycBr/Sc4ByaB3YV2ln0djz32pF6IatxFZa
	 2ehGxJbwdwlQ2O7XXFZhJfrazMN28wqoUmdwvfpvtAwsj7Q/lj8fUtb+fNmtl3Y+Oq
	 TLSbkJbMAwilTpMyJzrvz0XiiLorvhUjnJ0rTHB3XRP1EdFnZqAub+NgiHXEwKsHhj
	 jMfj7nOWg8UhpezPRC0FDB/EoaJlWYzoZV+0+TQ5DDnj7yr0m01g0e1tAjyZe6tbMb
	 VOSzXGqxBoBgA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 84qHbejJAtmn; Wed, 11 Jan 2023 14:20:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 79D75404CA;
	Wed, 11 Jan 2023 14:20:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 79D75404CA
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id EFA031BF2A0
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 14:20:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id C7A8841940
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 14:20:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C7A8841940
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id lcD3OV51akPZ for <intel-wired-lan@lists.osuosl.org>;
 Wed, 11 Jan 2023 14:20:33 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org C6D894193C
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp4.osuosl.org (Postfix) with ESMTPS id C6D894193C
 for <intel-wired-lan@lists.osuosl.org>; Wed, 11 Jan 2023 14:20:33 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="306937929"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="306937929"
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 11 Jan 2023 06:20:33 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10586"; a="765160152"
X-IronPort-AV: E=Sophos;i="5.96,317,1665471600"; d="scan'208";a="765160152"
Received: from gklab-018-208.igk.intel.com (HELO localhost.igk.intel.com)
 ([10.102.18.208])
 by fmsmga002.fm.intel.com with ESMTP; 11 Jan 2023 06:20:31 -0800
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 11 Jan 2023 15:20:29 +0100
Message-Id: <20230111142029.318092-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1673446833; x=1704982833;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=J4PYqO1opnIaND9q6+HeG4xOYnfvGa+8e/dgt0jy1l8=;
 b=h0imyRPsmCUPstmSiyjUR1lm5CMmOYhD0jMvKv5+66Bp1WCwwjBvOl0t
 owzRams6JnlXvtzYA+xW1OMOC6B45cpSrAXadUZvR7jGUn8Z7iJuetiPB
 Rtkjg1lfcGjS49CS6UJgkmQ5MSY7Bb9Jrv+ol63IhDjalo+APYHlecrtE
 /4tc1hxTAf6qsU/sJ7DAvrg0CoPcUK8Cs9Ik6BJZwaLqg8d4B92MgOhp9
 Z4s33urxA2mq1rwdxPjSd0dWzvbY0aWCXckoWDPnRale+/y+IC86KXqq4
 bAqRDK0IDVJtofoAHaF9NvjOZecCCyGehsB17bbxaVnk4f/lMIccTIt5U
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=h0imyRPs
Subject: [Intel-wired-lan] [PATCH net v1] ice: Ignore RDMA message on setup
 tc qdisc
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>,
 Rafal Rogalski <rafalx.rogalski@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Rafal Rogalski <rafalx.rogalski@intel.com>

Commit f70b9d5f4426 ("ice: check for a leaf node presence") prevents
removal of VSI with leaf nodes. This is an expectation of driver action
induced by FW requirements. However, this caused RDMA scheduler config
removal to fail every time a qdisc was added or deleted.

Fix this by ignoring errors from RDMA configuration removal when qdisc are
being reconfigured.

Fixes: ff7e93219442 ("ice: Fix failure to re-add LAN/RDMA Tx queues")
Signed-off-by: Rafal Rogalski <rafalx.rogalski@intel.com>
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/ice/ice.h      | 1 +
 drivers/net/ethernet/intel/ice/ice_lib.c  | 2 +-
 drivers/net/ethernet/intel/ice/ice_main.c | 3 +++
 3 files changed, 5 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice.h b/drivers/net/ethernet/intel/ice/ice.h
index 2f0b604abc5e..b572d07bc126 100644
--- a/drivers/net/ethernet/intel/ice/ice.h
+++ b/drivers/net/ethernet/intel/ice/ice.h
@@ -306,6 +306,7 @@ enum ice_pf_state {
 	ICE_PHY_INIT_COMPLETE,
 	ICE_FD_VF_FLUSH_CTX,		/* set at FD Rx IRQ or timeout */
 	ICE_AUX_ERR_PENDING,
+	ICE_SETUP_TC_QDISC,
 	ICE_STATE_NBITS		/* must be last */
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 22bcb414546a..0ee3acbea108 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -3448,7 +3448,7 @@ int ice_vsi_rebuild(struct ice_vsi *vsi, bool init_vsi)
 
 	ice_rm_vsi_lan_cfg(vsi->port_info, vsi->idx);
 	ret = ice_rm_vsi_rdma_cfg(vsi->port_info, vsi->idx);
-	if (ret)
+	if (ret && !(test_bit(ICE_SETUP_TC_QDISC, pf->state) && ret == -EBUSY))
 		dev_err(ice_pf_to_dev(vsi->back), "Failed to remove RDMA scheduler config for VSI %u, err %d\n",
 			vsi->vsi_num, ret);
 	ice_vsi_free_q_vectors(vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index a9a7f8b52140..5ff137645f08 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -8706,6 +8706,7 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
 	cur_txq = vsi->num_txq;
 	cur_rxq = vsi->num_rxq;
 
+	set_bit(ICE_SETUP_TC_QDISC, pf->state);
 	/* proceed with rebuild main VSI using correct number of queues */
 	ret = ice_vsi_rebuild(vsi, false);
 	if (ret) {
@@ -8716,9 +8717,11 @@ static int ice_setup_tc_mqprio_qdisc(struct net_device *netdev, void *type_data)
 		clear_bit(ICE_RESET_FAILED, pf->state);
 		if (ice_vsi_rebuild(vsi, false)) {
 			dev_err(dev, "Rebuild of main VSI failed again\n");
+			clear_bit(ICE_SETUP_TC_QDISC, pf->state);
 			return ret;
 		}
 	}
+	clear_bit(ICE_SETUP_TC_QDISC, pf->state);
 
 	vsi->all_numtc = num_tcf;
 	vsi->all_enatc = ena_tc_qdisc;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
