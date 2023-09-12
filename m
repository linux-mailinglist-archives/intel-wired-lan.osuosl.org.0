Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 6AB9279CE26
	for <lists+intel-wired-lan@lfdr.de>; Tue, 12 Sep 2023 12:23:29 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 79F66605D8;
	Tue, 12 Sep 2023 10:23:27 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 79F66605D8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694514207;
	bh=1Fc1uGY/oD+zfK1D+T8J7T2A/QIU4lCs1CMhmKnixcQ=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=D54zafeBCccb4Sro9w9DlkBBc5sRXxKXWU1MpW44q424xted77OvuJ11mRrAvQEEL
	 CRiq9j87ZNV036ihy686Zo7dg/Ue8P5sFBxAK4gNycYbqMZT2dPhZZanGA2pWKJotQ
	 OHN1I2EJZ8APrk5eVSfer/jbdgwMXoumiSUwhEjlmfq8npe0xxHPo3YhoaJsWYrpZg
	 vKBQn09vxzVL7jWqTSYY+gIcxpZgibDY8A87h6cee9gPxOA0UwfaiauELnOC5ZxXok
	 6k6kWYvwptzINCqopS32vIyj5x6C6F2HawR4rt6RdHosfvv8tEH/u4is8aCyPtP8mC
	 rHwUmLO1jDJHw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id veDribvbAxAs; Tue, 12 Sep 2023 10:23:26 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 8356860586;
	Tue, 12 Sep 2023 10:23:26 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 8356860586
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 796DA1BF2EA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:23:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 5767F82030
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:23:21 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 5767F82030
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 2dpnIUp6Sfdh for <intel-wired-lan@lists.osuosl.org>;
 Tue, 12 Sep 2023 10:23:20 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.65])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 684598202E
 for <intel-wired-lan@lists.osuosl.org>; Tue, 12 Sep 2023 10:23:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 684598202E
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="382146395"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="382146395"
Received: from orsmga002.jf.intel.com ([10.7.209.21])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 12 Sep 2023 03:23:19 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10830"; a="743679585"
X-IronPort-AV: E=Sophos;i="6.02,139,1688454000"; d="scan'208";a="743679585"
Received: from gklab-018-208.igk.intel.com ([10.102.18.208])
 by orsmga002.jf.intel.com with ESMTP; 12 Sep 2023 03:23:18 -0700
From: Kamil Maziarz <kamil.maziarz@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 12 Sep 2023 12:23:12 +0200
Message-Id: <20230912102312.232945-1-kamil.maziarz@intel.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694514200; x=1726050200;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ersnh8Clb/iVN9qA2CyWWDzDQCTu2RN+nReSlLNq8QA=;
 b=le0EeLXjtgTyBdqVFpby6aEPfqU+fJtd+Q3AjWfn4EFRu1fql2QaqSrP
 S1h6OLwGfNgGBePsm3XapuJMQ4kKYP9ShCEf3zyRQ9fyvZTB/NbFJjdju
 Y+ZZIgoTKvNN7X+n5C6KyZX4g00nLGcWi4yZfV/VrJCe8S6ohz7phXEie
 KB6OMO99/5ruM6HgQ2eeCX4gLMrSlqLEZOMrqbLkPDHq4Qa5ZITYylDmW
 SQbBNMsiqHvvXz0Ky1aDkVGgldxai02T02VkEr5fJ4gN/JVpNQ1BVDW96
 AsydKGOBcVvk7Y90cOlbWtcq42Q518XN9zAvYORFIGKcpIJGpbAgVDhLu
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=le0EeLXj
Subject: [Intel-wired-lan] [PATCH iwl-net v1] ice: don't stop netdev tx
 queues when setting up XSK socket
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
Cc: Kamil Maziarz <kamil.maziarz@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Avoid stopping netdev  tx queues during XSK setup by removing
netif_tx_stop_queue() and netif_tx_start_queue().
These changes prevent unnecessary stopping and starting of netdev
transmit queues during the setup of XDP socket. Without this change,
after stopping the XDP traffic flow tracker and then stopping
the XDP prog - NETDEV WATCHDOG transmit queue timed out appears.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Kamil Maziarz <kamil.maziarz@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index a7fe2b4ce655..cd56ceae8aef 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -179,7 +179,6 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 			return -EBUSY;
 		usleep_range(1000, 2000);
 	}
-	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 
 	ice_fill_txq_meta(vsi, tx_ring, &txq_meta);
 	err = ice_vsi_stop_tx_ring(vsi, ICE_NO_RESET, 0, tx_ring, &txq_meta);
@@ -268,7 +267,6 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	ice_qvec_toggle_napi(vsi, q_vector, true);
 	ice_qvec_ena_irq(vsi, q_vector);
 
-	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 free_buf:
 	kfree(qg_buf);
 	return err;
-- 
2.31.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
