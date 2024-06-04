Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4EA528FB385
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 15:22:27 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 57F39613BA;
	Tue,  4 Jun 2024 13:22:25 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id NYS3I8F3HpSc; Tue,  4 Jun 2024 13:22:24 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B4608613AE
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717507344;
	bh=fUKz2M6dGn0C2U1ODbGTBgwGMyd4a+ljSuhI8NK9iD4=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=ok6UxFl5aWpkz4a7zVawz3hFNWaFuFVcG+oVe4OKt4/VnQpSkNooNiTd8K6RToQ2f
	 C0rUa9lJUzjRlaDeKONzX/flQH3E4dF4m8B4J6Ni2CtZ/D152Maleo6c4jRg7vT0tK
	 GaTjogKCrq6ni89CYuRCKAaDALbNcWK/14mmyt62jMAxU3tF2SOQZc1J9FWjFAFe3i
	 5LjiqIM2G3lAF6bYm5k5VLV9mCXlBNJYB7FWjR0dAYuiZL6FlPLBWJ6PsItCalZvzL
	 BM1aSyyJqgphSXZaCRB9ovknox+O/YJgbRtjsLrMpS7oQJfC/nkAIIZ4EFMziR8hqa
	 lY8R2cQl4UIKA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id B4608613AE;
	Tue,  4 Jun 2024 13:22:24 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 240211BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 1018340511
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id jWbDJwOvudDg for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 13:22:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5C08F404DF
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5C08F404DF
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5C08F404DF
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:21 +0000 (UTC)
X-CSE-ConnectionGUID: 7H1VO95TSPGlpPhs4sVhEg==
X-CSE-MsgGUID: 23+amc5BRWaW2Oat7Hci4w==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31552895"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="31552895"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:22:21 -0700
X-CSE-ConnectionGUID: MOz+HNHjSTCpAR3wL+bfVg==
X-CSE-MsgGUID: +LFN7VwcTjOQkjoBUAX4Sw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37350186"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa009.fm.intel.com with ESMTP; 04 Jun 2024 06:22:19 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 15:21:52 +0200
Message-Id: <20240604132155.3573752-6-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717507341; x=1749043341;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=vzNZnalUYBWq8TrGQh3xj3VWHF0JpnuUhGSw5Arc3dI=;
 b=SA+qzLeCpnqH4OOIJAXPtHf2nmnFeZrH01cYBystEObGHZjEVwswDhto
 Bkrc8+0Dye3G+vwuTyJ6JK7DMwsJLKsaawVbBeYWslwxViuv6AHpjMpdP
 34yN0zBaXgJNGv8+PTx0/oFNmc7TYdNB6ps6skhimB9WbjOWFrL4fLBY7
 ofzUj5+MjxPqfmrnhMy0lP+stug2OiNc2xuFScABGVPYT2Oxn2JG+dv2/
 nxRkazfy/MOCFe4q5azlFkhcyOAvartGjY2YmqYV9XY+MnBHbo8NfphxQ
 jO9oU0g3D4pWumW/NrvsZEUwVqqvJRw7J7MxyOrN3iGGKa5Z7lCuKUqlh
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=SA+qzLeC
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 5/8] ice: toggle netif_carrier
 when setting up XSK pool
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
Cc: Maciej Fijalkowski <maciej.fijalkowski@intel.com>, larysa.zaremba@intel.com,
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>,
 magnus.karlsson@intel.com, Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

This so we prevent Tx timeout issues. One of conditions checked on
running in the background dev_watchdog() is netif_carrier_ok(), so let
us turn it off when we disable the queues that belong to a q_vector
where XSK pool is being configured.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 8ca7ff1a7e7f..21df6888961b 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -180,6 +180,7 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 	}
 
 	synchronize_net();
+	netif_carrier_off(vsi->netdev);
 	netif_tx_stop_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
 
 	ice_qvec_dis_irq(vsi, rx_ring, q_vector);
@@ -249,6 +250,7 @@ static int ice_qp_ena(struct ice_vsi *vsi, u16 q_idx)
 	ice_qvec_ena_irq(vsi, q_vector);
 
 	netif_tx_start_queue(netdev_get_tx_queue(vsi->netdev, q_idx));
+	netif_carrier_on(vsi->netdev);
 	clear_bit(ICE_CFG_BUSY, vsi->state);
 
 	return fail;
-- 
2.34.1

