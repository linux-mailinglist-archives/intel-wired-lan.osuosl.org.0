Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0383C91A7AF
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jun 2024 15:18:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id B331760E33;
	Thu, 27 Jun 2024 13:18:51 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id BXaWJ5UBukN7; Thu, 27 Jun 2024 13:18:51 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 22FD660E2F
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1719494331;
	bh=9zKLLD/foeBXuNMvZpU4mBsq68bFC3zohXJhk/Fhcgs=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Uj6Ag+caowqN3jwIUHjl4KyYdGaLdnlEO6pZ9JMT5eSwjUdh0dUJNzfxQpm/t4hoO
	 /lLTa6DELdQ87QXlmpIuKh5LE/uVNB2qV8BzkGqbqCl2UfY96HWK6lTZg9CPK7xcZy
	 YaIhKPz/SjlBGSMywBOv7PVsyTSovdid1m55codFztRUFmn8+fFLEVD65n+7vpXBkQ
	 LsdTyQaVkG+8k2BhEvkuMaWrbRbyvSq3WAg9BvHxSDDIt0hf1WhWmIpok6nDAS51bz
	 fchoc8hbQowTDNOcU1eZtvwzNaAxBgY6wAasXkuH5/27y7B1CyoKeCldYZ+3elF6dw
	 oh0NZDnVXrTSA==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 22FD660E2F;
	Thu, 27 Jun 2024 13:18:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 962111BF3D4
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:48 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 834B5402AD
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id u9oQZdpmYf6Y for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jun 2024 13:18:47 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 8F5F2402AC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F5F2402AC
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F5F2402AC
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jun 2024 13:18:47 +0000 (UTC)
X-CSE-ConnectionGUID: L/IeWs9wThmbh7pNRGFJ1w==
X-CSE-MsgGUID: p5aJbMLVSiGXowBKB796Ng==
X-IronPort-AV: E=McAfee;i="6700,10204,11115"; a="16452343"
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="16452343"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jun 2024 06:18:48 -0700
X-CSE-ConnectionGUID: 53Gc+ZlFRdWc5Ssy/D376A==
X-CSE-MsgGUID: uw1ULaf8T+GRW0Ye7X42ng==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.09,166,1716274800"; d="scan'208";a="49315381"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa003.jf.intel.com with ESMTP; 27 Jun 2024 06:18:45 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jun 2024 15:17:51 +0200
Message-Id: <20240627131757.144991-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
References: <20240627131757.144991-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1719494328; x=1751030328;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=8yCl0bfYTFzW60BvVt8rpeFgDlLi21G9cooCu3w9MMY=;
 b=dCH5LiRT0G656Fk7m8g6uSJbPkYGSid1HI5LTuGBp80OETlYZmH2arx6
 bGDQBGVY5Nsr0+70/OG2yT5PPb+YP3gT8NqlWvFGwOP61d1fCVvOf5qJi
 qhd/MfM7sfVvnrAaxjH9cffRYW0IoqoPAeeLQYYg3BAP/t6nnYzi0g9Qp
 MAJQ5nSVWPZkvC2ihvwQcqTbb3x81z5yWWbsGgAksNo0rwIm5zL8Cwgva
 39lYo4AcSJ97RsbuBLh6VD62P6Qj1bKV3/oepf7mINmux0KUTo4BWhhzn
 5FUylUtGmTtnpE/TzUrvoO6a2CqI2UG+vLhUIhirN3ssBLsTMWJWVtp62
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=dCH5LiRT
Subject: [Intel-wired-lan] [PATCH v4 iwl-net 2/8] ice: don't busy wait for
 Rx queue disable in ice_qp_dis()
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
 netdev@vger.kernel.org, aleksander.lobakin@intel.com, michal.kubiak@intel.com,
 anthony.l.nguyen@intel.com, jacob.e.keller@intel.com,
 Chandan Kumar Rout <chandanx.rout@intel.com>, magnus.karlsson@intel.com,
 Shannon Nelson <shannon.nelson@amd.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When ice driver is spammed with multiple xdpsock instances and flow
control is enabled, there are cases when Rx queue gets stuck and unable
to reflect the disable state in QRX_CTRL register. Similar issue has
previously been addressed in commit 13a6233b033f ("ice: Add support to
enable/disable all Rx queues before waiting").

To workaround this, let us simply not wait for a disabled state as later
patch will make sure that regardless of the encountered error in the
process of disabling a queue pair, the Rx queue will be enabled.

Fixes: 2d4238f55697 ("ice: Add support for AF_XDP")
Reviewed-by: Shannon Nelson <shannon.nelson@amd.com>
Tested-by: Chandan Kumar Rout <chandanx.rout@intel.com> (A Contingent Worker at Intel)
Signed-off-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_xsk.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_xsk.c b/drivers/net/ethernet/intel/ice/ice_xsk.c
index 72738b8b8a68..3104a5657b83 100644
--- a/drivers/net/ethernet/intel/ice/ice_xsk.c
+++ b/drivers/net/ethernet/intel/ice/ice_xsk.c
@@ -199,10 +199,8 @@ static int ice_qp_dis(struct ice_vsi *vsi, u16 q_idx)
 		if (err)
 			return err;
 	}
-	err = ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, true);
-	if (err)
-		return err;
 
+	ice_vsi_ctrl_one_rx_ring(vsi, false, q_idx, false);
 	ice_qp_clean_rings(vsi, q_idx);
 	ice_qp_reset_stats(vsi, q_idx);
 
-- 
2.34.1

