Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8C4818D3572
	for <lists+intel-wired-lan@lfdr.de>; Wed, 29 May 2024 13:23:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E9CF40A86;
	Wed, 29 May 2024 11:23:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id W_5a2I2jUvC4; Wed, 29 May 2024 11:23:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org CE78240A38
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1716981829;
	bh=/KjOOJhDOmsG3kSqd3vdwaEAnfkL6sroTtxXP8MDnDM=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=4uSWzJUXV0WozeszujgVCaBpDNuQIMcIKqlxTTQDZQv2KEzxjE8gE92IrODGEIVXU
	 cvVR2XjB7ls7qvd7f9yLbnqBvD7U52wZI227Uc1+3yEOJhYp4Y8Kyq34LYkPagZjlN
	 p4zjK5+38lrdsu1R/VG6iUgXCAZ9xYYz++rUIPeHNg8pstN/7sBVx4jQMJnTAgCcbY
	 9cSzCg0Xfmzkiukd4QjjMRk0KDF6MVnrmMSwfg/oByNv4BIYUgLBa8XBvoJo+PQkNu
	 eViiz+oFrGaJoPQLWL2FdBOWsEEdr8RiJgKXu70XTW/l4nNHmuo2/7rfXf1fJA/r97
	 NBHD02ZBGQ2Tw==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id CE78240A38;
	Wed, 29 May 2024 11:23:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 00CBE1D3496
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E19C8607EA
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:46 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id cOUpLa8G0uBS for <intel-wired-lan@lists.osuosl.org>;
 Wed, 29 May 2024 11:23:46 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=maciej.fijalkowski@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp3.osuosl.org 4BB49605CD
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4BB49605CD
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 4BB49605CD
 for <intel-wired-lan@lists.osuosl.org>; Wed, 29 May 2024 11:23:46 +0000 (UTC)
X-CSE-ConnectionGUID: MdwqNwzyRqGqGSMZfouIwQ==
X-CSE-MsgGUID: 26dcTRkWTPuTEJVBbqasqg==
X-IronPort-AV: E=McAfee;i="6600,9927,11085"; a="17169232"
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="17169232"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 29 May 2024 04:23:46 -0700
X-CSE-ConnectionGUID: cZ3wnMpwRdSwAVNHP0BaAQ==
X-CSE-MsgGUID: aMza/qXhSkquNo3zewXxmg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,198,1712646000"; d="scan'208";a="66277173"
Received: from boxer.igk.intel.com ([10.102.20.173])
 by orviesa002.jf.intel.com with ESMTP; 29 May 2024 04:23:44 -0700
From: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 29 May 2024 13:23:31 +0200
Message-Id: <20240529112337.3639084-3-maciej.fijalkowski@intel.com>
X-Mailer: git-send-email 2.35.3
In-Reply-To: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
References: <20240529112337.3639084-1-maciej.fijalkowski@intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1716981826; x=1748517826;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=89ItfMvWVLYERCZU8akE0pKSpXDzCfiBwTBt6Ag8CQc=;
 b=FpCzmaga4NOuJeXuZvhvpYH9xXo40vv+CmpRSHh66EsX2cCOxjFgJPM5
 VuYglu7ZDGgBVFI3o3j67/y2LFrsdxiaX29bT1TX11+0B55wtTx9+B1ro
 mEcoBh0mmvV6uA9CB3d1R+YpWfl1Q1WwGqJTNiyp1+3BVQ4enDv9nZ3ym
 YFiy7JcH7wONI+LgzBMt0S7AUb3fDmAihQXvpnHgsqrfFuVTFmlZr9rZB
 nxGk3taRfc9wbd4EW+ZCDSEzrh3QVLMRoiy5Pb/KnNwm3DIbowa3iI47R
 5hzZBpqbACJ7R7bzwp4Y9lpT2X1gI326OAkaJ+CWc8fokuR43H7X0dzWW
 g==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=FpCzmaga
Subject: [Intel-wired-lan] [PATCH v2 iwl-net 2/8] ice: don't busy wait for
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
 magnus.karlsson@intel.com
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

