Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 966544DCDBA
	for <lists+intel-wired-lan@lfdr.de>; Thu, 17 Mar 2022 19:37:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F36C60B3B;
	Thu, 17 Mar 2022 18:37:51 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id eCNzNcVgrFxY; Thu, 17 Mar 2022 18:37:50 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5C6B060AEC;
	Thu, 17 Mar 2022 18:37:50 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 8F1231BF349
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 7DA0460AF2
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:41 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id y8xIgHtlZLZY for <intel-wired-lan@lists.osuosl.org>;
 Thu, 17 Mar 2022 18:37:40 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
Received: from mga06.intel.com (mga06.intel.com [134.134.136.31])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 786B060AEC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 17 Mar 2022 18:37:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1647542260; x=1679078260;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=OI0I0mpsHNYQLBxOzKRzsuU4FgND0Uimfak2UjCuu0U=;
 b=MrVxbQM+1juMMssk1e9LchgU1vnNJG9DxWxTf0VRRRFjAbDViH9PjokC
 GkUcjSHlW2m04T1wbkWctcQ4joxZhzc/8Odyyyb2GYKCQc3HQTLUMAnpI
 4/xqRD7Zdoo0AusP0cI/oJ3RMhzwDAqe9s1dKFBtRpaxphv1wo9moMiLZ
 loVPsyQPb4Qxj9ektFSicqD32FJYat+eMckHrgg5p0HnWOJ+hnKpAY3+9
 x9lb1Zh/io0niNDuhjBDkBHD0d5qvD6Q6RSRZI42okXJ2BzUUfIQXk6BS
 +vBePVPxhegjsz7FemY1d1okGjS4GwIELjkyyvUNNqtEVafIsOEbpLaJD Q==;
X-IronPort-AV: E=McAfee;i="6200,9189,10289"; a="317669464"
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="317669464"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Mar 2022 11:37:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.90,188,1643702400"; d="scan'208";a="558057192"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orsmga008.jf.intel.com with ESMTP; 17 Mar 2022 11:37:38 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 17 Mar 2022 19:36:28 +0100
Message-Id: <20220317183629.340350-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.33.1
In-Reply-To: <20220317183629.340350-1-maciej.fijalkowski@intel.com>
References: <20220317183629.340350-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Subject: [Intel-wired-lan] [PATCH intel-net 2/3] ice: xsk: fix VSI state
 check in ice_xsk_wakeup()
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
Cc: netdev@vger.kernel.org, kuba@kernel.org, bpf@vger.kernel.org,
 davem@davemloft.net, magnus.karlsson@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ICE_DOWN is dedicated for pf->state. Check for ICE_VSI_DOWN being set on
vsi->state in ice_xsk_wakeup().

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 24a8f54c32df..6275ff20fd04 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -761,7 +761,7 @@ ice_xsk_wakeup(struct net_device *netdev, u32 queue_id,
 	struct ice_vsi *vsi = np->vsi;
 	struct ice_tx_ring *ring;
 
-	if (test_bit(ICE_DOWN, vsi->state))
+	if (test_bit(ICE_VSI_DOWN, vsi->state))
 		return -ENETDOWN;
 
 	if (!ice_is_xdp_ena_vsi(vsi))
-- 
2.27.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
