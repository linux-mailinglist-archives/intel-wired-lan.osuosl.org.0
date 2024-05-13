Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 471528C3D3E
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 10:33:03 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 93A6D835FB;
	Mon, 13 May 2024 08:32:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JhfBgl-pNwaV; Mon, 13 May 2024 08:32:54 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C817F835A9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715589174;
	bh=bL6HpD6vr+VUHUdnX3d7QZv9coRrrBXgrWnNYeeQ79U=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=R2yQbricye/7V79aeO5QlSWMABuTYfODbgn18Ltob3/84qz0cXOkvzopFZNRDCH66
	 ZJmdbrafUBsrsZNZoLVM2qS4z+o3RxEHO87Dc5jD8lYLWyKU4Y0BZiO/jmXK7Ry4EF
	 uRs8VDV3u3adT9n35yKBJnCmH4YhOuXDRx5S5SCp+bJ8iA3ACEg8awFDhMBEiTnsxA
	 BKuwB2u/32rIqQ0jxYOwxkdPJY3DLf2D9NpRjfUd4ZwyQIvzyWcEAxb2mSYaJSZv9e
	 Q1rHTD5EYKVcsGCKs1wAgvAkjbR5jJFgdTrsdEGqaaNVQibmObn9IB93bsE9BHc7os
	 LF95xg6EDq7aQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C817F835A9;
	Mon, 13 May 2024 08:32:53 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 3451E1BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:32:50 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 1F6DB4109D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:32:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id prH3siefnEbY for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 08:32:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 93AF1410B9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93AF1410B9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93AF1410B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:32:48 +0000 (UTC)
X-CSE-ConnectionGUID: P4APtYjvQsCsInDW0+AauA==
X-CSE-MsgGUID: IbJuVXIpREO8+S7wzJZJYQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22914816"
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="22914816"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 01:32:48 -0700
X-CSE-ConnectionGUID: fxPliVWPQwWDbgMw5EwutA==
X-CSE-MsgGUID: Is44rideSuqFjI1YrXf8Yg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="30303437"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 13 May 2024 01:32:44 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 May 2024 10:37:24 +0200
Message-ID: <20240513083735.54791-5-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715589169; x=1747125169;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=/a8xZgcIwHCzfQSRk2xTwVeJnDlTCKa8eF0caQ2Ztn4=;
 b=G1Q5cAPK8l391mKfZwpdtoarSAzZq2WTzOdaS60Gn0ToHNBUDAJpipwQ
 Oy31JdNBMHRA/hjsrid6vfqkssu8GKV3FVihKYTwsGdw/4XvQ8jlDjsUI
 LLMsiO45usvt4KYQR18c2NnQYBEnsMNtkWIAlmEwaiPMde7MZUqLYzNkN
 z0Lpv2uaVKnyiHFi/Zi46UdOxt5sa/BtAGA/RXSPYRn+fR1BVXNJ3/cJj
 A0k0f7iHOu+anKpjFDYRYkLcC+gnnxoYN29JRVux3+xTmHlGF4ncr/s5w
 RQWAHi4X5VZxhpmkgHUqTPU7ylqnW9kysN0T+0chAeJ+8guAT+A3j17u3
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=G1Q5cAPK
Subject: [Intel-wired-lan] [iwl-next v2 04/15] ice: treat subfunction VSI
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
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
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
index e50aeed55ff5..a555f70f78ed 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -6684,7 +6684,8 @@ static int ice_up_complete(struct ice_vsi *vsi)
 
 	if (vsi->port_info &&
 	    (vsi->port_info->phy.link_info.link_info & ICE_AQ_LINK_UP) &&
-	    vsi->netdev && vsi->type == ICE_VSI_PF) {
+	    ((vsi->netdev && vsi->type == ICE_VSI_PF) ||
+	     (vsi->netdev && vsi->type == ICE_VSI_SF))) {
 		ice_print_link_msg(vsi, true);
 		netif_tx_start_all_queues(vsi->netdev);
 		netif_carrier_on(vsi->netdev);
@@ -7382,7 +7383,7 @@ int ice_vsi_open(struct ice_vsi *vsi)
 
 	ice_vsi_cfg_netdev_tc(vsi, vsi->tc_cfg.ena_tc);
 
-	if (vsi->type == ICE_VSI_PF) {
+	if (vsi->type == ICE_VSI_PF || vsi->type == ICE_VSI_SF) {
 		/* Notify the stack of the actual queue counts. */
 		err = netif_set_real_num_tx_queues(vsi->netdev, vsi->num_txq);
 		if (err)
-- 
2.42.0

