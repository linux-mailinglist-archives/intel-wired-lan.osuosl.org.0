Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5692C8D1359
	for <lists+intel-wired-lan@lfdr.de>; Tue, 28 May 2024 06:33:30 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id B9363405C4;
	Tue, 28 May 2024 04:33:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id ADDUiMxwE9rA; Tue, 28 May 2024 04:33:25 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F2B56405B7
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716870805;
	bh=RIKdr6zvSFZCmgLEcOSmf8/wuvzqHepO3fvKsn8TUm8=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=wQ3rsWbcKPtnkNBsr8C5diHO+zl7zOWhWRSFC34RZxHa36BSQjCbmZ2szEsDGkTgW
	 OtnxWV2Gu9WcMNzd/nRtceQ2UNa/g9pILGwWhcy8H0vqnGTBEWmUrsNpFt/y9o4hQt
	 Ir1cftSz492gC9ktwKVtUTAkjAw61OgLEbWzpCl6dJr6jWxEQqBf2e9Yy63qt+TMJx
	 t5e5TEoq3CrskKWJDV5FRXks4gJEDt9LBzYpeQcanzdWpI4iIuWleBQebi3jxWRygT
	 o7RwULASc+g3vjiq3A+RduNTmy+1+kiIDqr/XF1QOB5qQLW7lRrLXtM6mAGFKfH3zU
	 GnaedBBTqMcpw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id F2B56405B7;
	Tue, 28 May 2024 04:33:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 1805E1D23BA
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 00D51405C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id h0CyfLiWwUn2 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 28 May 2024 04:33:21 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org D221B405B7
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org D221B405B7
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id D221B405B7
 for <intel-wired-lan@lists.osuosl.org>; Tue, 28 May 2024 04:33:20 +0000 (UTC)
X-CSE-ConnectionGUID: N6zk0/ONSRWgjOlEXWSmEg==
X-CSE-MsgGUID: rl/8QZm7SwapR/tcPZ1YjA==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="13020090"
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="13020090"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 May 2024 21:33:21 -0700
X-CSE-ConnectionGUID: 7Nwuy5psT8KTtXZqyx9GuQ==
X-CSE-MsgGUID: lBp1n1uHSD2TuYrvMlrF0A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,194,1712646000"; d="scan'208";a="66152410"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 27 May 2024 21:33:18 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 28 May 2024 06:38:02 +0200
Message-ID: <20240528043813.1342483-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
References: <20240528043813.1342483-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716870801; x=1748406801;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=AmTv/tESt7mKCy4H6882eS1bVEIx1GnnoIApdy9Leyc=;
 b=aD6Q6yHx62iaemodiPFzKaDThAjj4VdDWQi59qnb/rUjO43QQ39l8d74
 tHq3Vey793lHTAFBTr8jMcYhQe/sTZDWbLmyRInMxXh5O0nWoWWlteQNR
 K87JJF86WPmbkK3/dp/FqrMWKNRNrqcUGjY3lo8KiObAA/hKS8K2Dz2Zs
 LkD5Oql5/Q9mA4sCUcwH30pi6JQjPrRFOpPy6yjtO0l5U4WfcpKvfHZMT
 UtUfEX85D+qBjMvOGO4nywppBzM5SDyD7PPHKvjy+/CsikKlmJUIT+j2Z
 +IiJGJi/jAfEmmB9bNiTdaHQ2QvzNqbgGGeWKcMdaipzfxxtSZtSz+XZd
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aD6Q6yHx
Subject: [Intel-wired-lan] [iwl-next v3 04/15] ice: treat subfunction VSI
 the same as PF VSI
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 kalesh-anakkur.purayil@broadcom.com, michal.kubiak@intel.com,
 pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When subfunction VSI is open the same code as for PF VSI should be
executed. Also when up is complete. Reflect that in code by adding
subfunction VSI to consideration.

In case of stopping, PF doesn't have additional tasks, so the same
is with subfunction VSI.

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index d1d9b63822f5..e32f4307994f 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6704,7 +6704,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
 
 	if (vsi->port_info &&
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
-	    vsi->netdev && vsi->type == ICE_VSI_PF) {
+	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
+	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
@@ -7402,7 +7403,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 
 	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
 
-	if (vsi->type == ICE_VSI_PF) {
+	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
 		/* Notify the stack of the actual queue counts. */
 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
 		if (err)
-- 
2.42.0

