Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 4B2E28FB381
	for <lists+intel-wired-lan@lfdr.de>; Tue,  4 Jun 2024 15:22:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id EDAB8613A4;
	Tue,  4 Jun 2024 13:22:19 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pTdvIKaQ_jUH; Tue,  4 Jun 2024 13:22:19 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4F2AE611F2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717507339;
	bh=s9gJ1KAfdf34L4N4Gaj0oxtGmfwpoTUBvFklxgtVf/c=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=S1kuS/fo99bjt4jUi83o5Jhz6H35LygKhQbXayRWd9ixfJxpi3oME1qvQRj1U7egu
	 XuwVAN3Xbn2nRFToJlWm72c4t3nRfiO/oqkUAOFWdZCEpmepyEebsqCEMFCNrxcFIL
	 sckxBhSyjhjQzPkWe7v6P5xD2G5ajqwB8bA23Y5/rP7Do5GivLRe98PrLja1VzsslS
	 T0Bb0eLX0CK/MObEp3ANKcK/n/dyzcVp0pjW+E/kKf1v3ELpM61cHQKQVz3aW7Y33m
	 9g+fl08nVCQ3/FtabIOcVv3UeuWM2/8SrQANENFF05SyTTz6cpLRwWKZEzdztUACDh
	 MkpkHFvhXd4kQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 4F2AE611F2;
	Tue,  4 Jun 2024 13:22:19 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id C524C1BF2A2
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id B146F404B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sIM05ZXq0HWW for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Jun 2024 13:22:14 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org E94BC4051B
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org E94BC4051B
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp2.osuosl.org (Postfix) with ESMTPS id E94BC4051B
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Jun 2024 13:22:13 +0000 (UTC)
X-CSE-ConnectionGUID: Oe7JPT2FRZSfDoPdSY/GUw==
X-CSE-MsgGUID: RUFGrJxuSneAHwsuPg6emw==
X-IronPort-AV: E=McAfee;i="6600,9927,11093"; a="31552853"
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="31552853"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Jun 2024 06:22:13 -0700
X-CSE-ConnectionGUID: x6sRikV9RQi67Hbr24oGKg==
X-CSE-MsgGUID: wFs4HhCQRMiqPhAPSDdbUA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,213,1712646000"; d="scan'208";a="37350132"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by fmviesa009.fm.intel.com with ESMTP; 04 Jun 2024 06:22:11 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  4 Jun 2024 15:21:49 +0200
Message-Id: <20240604132155.3573752-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
References: <20240604132155.3573752-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717507334; x=1749043334;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=p1JwXrBLeqtHbBTg1Kj/Bhit/0gw24QRk2fbCtHBAQE=;
 b=DUYIVvPUgdTJrUt8zQqKKwYxqhx35S3dJu+UljGP7aJ1MCeRX42mYmrg
 pG1GJm0OeDVUb4T/gSp6E9NsmYNbMQbrYSAByOLUJcdjomPnLffBRQoqG
 LXljCJBbh5FFT0B9f6UHYR5WbtXWzhNV2NGB073IRhdPWYK9EZDl8bgxR
 FFqLy0lvTFoiWiw63lQ/5Fjpl1+gUrRjqhZaXVXK/INeEIcM8JWPIs2yU
 EPZJNthfsO52twHEsiiOB5iVJjoN1lOMVve6J5aZjZD3jLHEJbQ72+BIs
 NNa0ule3aEgL/vc6SYy2yumtsGyuwcH9AFYG6+fQHrDCYju0+WVUPvRmP
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=DUYIVvPU
Subject: [Intel-wired-lan] [PATCH v3 iwl-net 2/8] ice: don't busy wait for
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
 netdev@vger.kernel.org, michal.kubiak@intel.com, anthony.l.nguyen@intel.com,
 jacob.e.keller@intel.com, Chandan Kumar Rout <chandanx.rout@intel.com>,
 magnus.karlsson@intel.com, Shannon Nelson <shannon.nelson@amd.com>
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
index 1bd4b054dd80..4f606a1055b0 100644
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

