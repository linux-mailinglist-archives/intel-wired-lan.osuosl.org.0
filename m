Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5DFE38D1C62
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 15:16:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 09FB0820C5;
	Tue, 28 May 2024 13:16:11 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id V4zi6wEsLtl5; Tue, 28 May 2024 13:16:10 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 3319D820B8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716902170;
	bh=Cwu7aZMBSXTlKgHCwi7bZ3aEC5qexQDX5enqGT0f9tc=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=fC996+U5viyAqszZULADb9g9AKrT4vSQyHIKHYJixLVhPzCfnneh5nz+JvwBo5wgD
	 311WpBpc8iruPmOWIAD8IhXEU5ptw+5iG350dJcS8fCz1SgtVLloMHgftPW9yHEk/s
	 7gBBTIOlcKJHz+x0K9qBByZKjeFLPGKG/glYSQkL2qedlkPD9gcsn8fd3zT0fqeuvY
	 T/avpaydr0+Eqpxjs9YIAPSFvM9iI0RWWXac672MZcewEqI9jK3l1xPIkeXWlrubzy
	 g7RYyfdFN+rApAn0NMUcvChanwDUS9y0CI7cOE4oxyi9/Efd31y6xE2sre1qPat26+
	 MncX9R1Dcqt7w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 3319D820B8;
	Tue, 28 May 2024 13:16:10 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
 by ash.osuosl.org (Postfix) with ESMTP id 5AFA51D2822
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:16:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id 6640681FDE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:16:04 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8PTSUxqZWM-z for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 13:16:03 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 9534B81FD7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 9534B81FD7
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 9534B81FD7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 13:16:03 +0000 (UTC)
X-CSE-ConnectionGUID: rmUHV9h+SK+2iIzrzCu/tw==
X-CSE-MsgGUID: M8W7ZQ8vQJ6NOjUT1wCdHw==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13193579"
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="13193579"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 28 May 2024 06:15:50 -0700
X-CSE-ConnectionGUID: Tk+RovD3Rg21ao04H38rUg==
X-CSE-MsgGUID: +kyv3pA3QH+wXIBzfQW+wQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,195,1712646000"; d="scan'208";a="39891177"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 28 May 2024 06:15:48 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 15:14:28 +0200
Message-Id: <20240528131429.3012910-11-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
References: <20240528131429.3012910-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716902164; x=1748438164;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=ETPGhiS7aB5sus5c74yVshGkoE8DOPIbYrYn+PvjTzk=;
 b=haYBOoFzEVPkFTBhsGDgcQ21UXADfxzBNFoX5STglKgYj2makDjgYNVC
 GCW6pgGQ2/cshyvR0Pg2wVbCxf0ftV4/lMepA8oSLgi04S1pEm+0iI25D
 X19fNwnH6Jv1rZnBxFSpaM0OOvPKT9rAHMX55LKqd2rIFH8yn9w64OK6W
 j80uZDSF6XM6BNf+MUmksxUQvlBFcPwGUcMV7YFsvEnPeK3yS/7HmAU7n
 h7oOhZrXMuQjQ7RftJkuVXFxO04DBjtXl9QeXjNDuGzg7VYIwnB3H1wXk
 RVX4P3GCwl2T6PuxtLHV6HH5x1iH5jwtyEHNcCoWbvIRMzWj3r8QwpXXy
 w==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=haYBOoFz
Subject: [Intel-wired-lan] [PATCH iwl-net 10/11] ice: lock with PF state
 instead of VSI state in ice_xsk_pool_setup()
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
Cc: netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 magnus.karlsson@intel.com, larysa.zaremba@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

From: Larysa Zaremba <larysa.zaremba@intel.com>

The main intent of using ICE_CFG_BUSY is to prevent the reset from
starting, when other configuration is being processed. pf->state is checked
before starting reset, but ice_xsk_pool_setup sets the flag in vsi->state,
which is almost useless. Also, ICE_CFG_BUSY belongs to enum ice_pf_state,
not ice_vsi_state.

Change vsi->state to pf->state in ice_xsk_pool_setup() locking code, so
reset would not interfere with AF_XDP configuration.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Signed-off-by: Larysa Zaremba <larysa.zaremba@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index fe4aa4b537dd..225d027d3d7a 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -370,6 +370,7 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 {
 	bool if_running, pool_present = !!pool;
 	int ret = 0, pool_failure = 0;
+	struct ice_pf *pf = vsi->back;
 
 	if (qid >= vsi->num_rxq || qid >= vsi->num_txq) {
 		netdev_err(vsi->netdev, "Please use queue id in scope of combined queues count\n");
@@ -383,7 +384,7 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 		struct ice_rx_ring *rx_ring = vsi->rx_rings[qid];
 		int timeout = 50;
 
-		while (test_and_set_bit(ICE_CFG_BUSY, vsi->state)) {
+		while (test_and_set_bit(ICE_CFG_BUSY, pf->state)) {
 			timeout--;
 			if (!timeout)
 				return -EBUSY;
@@ -411,7 +412,7 @@ int ice_xsk_pool_setup(struct ice_vsi *vsi, struct xsk_buff_pool *pool, u16 qid)
 			napi_schedule(&vsi->rx_rings[qid]->xdp_ring->q_vector->napi);
 		else if (ret)
 			netdev_err(vsi->netdev, "ice_qp_ena error = %d\n", ret);
-		clear_bit(ICE_CFG_BUSY, vsi->state);
+		clear_bit(ICE_CFG_BUSY, pf->state);
 	}
 
 failure:
-- 
2.34.1

