Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CA608BE12C
	for <lists+intel-wired-lan@lfdr.de>; Tue,  7 May 2024 13:40:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 0A1354075A;
	Tue,  7 May 2024 11:40:43 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id pey4H5OBDJTT; Tue,  7 May 2024 11:40:42 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 58A5740783
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715082042;
	bh=DOVz5G+TnCjOJtQYEzd3pzQ88bNxzPikkZ02OclgpWo=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=zbgMTbxI9oWe7Cy1AWrtjupRwm3h8uP9sMjdG95OjOPvw9Tkq7oLRCw9Llki3w12H
	 tyMJZ80BgvcsWCh9a5gIwPbLIC8GnjQE3gbg9HYgb5eKGRcrA6tSEfg/u0wgdwDseb
	 /zgqYT7nNiXIeGHTSEFNERJzdDQ1/UozZQ/UgU8hfOHQGe+bQWAdC0E9PMl2rqORMl
	 P8a/WCJccVpOBfRFRZkFU2a1pC08aFqZNBbsoDbwSLt8n6hZgsRuVbXwqpEwbi06n7
	 j5BbWC2qboVEGipYG6bFGD6xxuu4mb1+zmekmXbHTvubMQuAR/Tw/8DzHCEGezhB0H
	 PzGde1lPr02yQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 58A5740783;
	Tue,  7 May 2024 11:40:42 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3E1E51BF5A0
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:40 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 3860E40223
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:40 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id H-CcZMkN5MQI for <intel-wired-lan@lists.osuosl.org>;
 Tue,  7 May 2024 11:40:39 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.13;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org 5880F40154
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 5880F40154
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.13])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 5880F40154
 for <intel-wired-lan@lists.osuosl.org>; Tue,  7 May 2024 11:40:39 +0000 (UTC)
X-CSE-ConnectionGUID: IqrRHXBsSzyAFaZ7Dvg4jg==
X-CSE-MsgGUID: X2//1VRmSL2b/NUbQkSWnQ==
X-IronPort-AV: E=McAfee;i="6600,9927,11065"; a="22029258"
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="22029258"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 May 2024 04:40:40 -0700
X-CSE-ConnectionGUID: JlShoNYRQECW6H+9ptThQQ==
X-CSE-MsgGUID: C1c1cCk5SmWbinrikK7lIg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,261,1712646000"; d="scan'208";a="28576708"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 07 May 2024 04:40:36 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  7 May 2024 13:45:10 +0200
Message-ID: <20240507114516.9765-10-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
References: <20240507114516.9765-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715082040; x=1746618040;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=eMS+oxn1tYp+rxus1jdEnm2eqSOO3ayeaJRU5iz4V2o=;
 b=HP6WC+/tQ1+iV6SvDzfW0QlMYQ/S09fxV42WnVj90dpqidPDBR7I4H7W
 hMMpPGbXQbPRZKG/YMut+y9IMEEUvsh8J67MMNDJRqhLZPexya6iHDiy3
 wqig3s6ZEdK0I+KlZz8TzBt3K3VTdy2a6Mb3H4U7SkO/JlzLswCjS0C0v
 5u0AeCRMe8asu1H8yLnsWkUbswHVJjZsC5tNImXbNXY6e2+DM627RUbdh
 E1BT8+JaWGD0K2JriOFlnoXG/uBufUyaXaY0E74f61z/jSTDc6xldy3Kt
 8pNhIGJyF6L1eCz9gVAzkbR9XL9zQLiPudxyNnsKJibKqcf/pdVK5pm+z
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=HP6WC+/t
Subject: [Intel-wired-lan] [iwl-next v1 09/14] ice: don't set target VSI for
 subfunction
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

Add check for subfunction before setting target VSI. It is needed for PF
in switchdev mode but not for subfunction (even in switchdev mode).

Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_txrx.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_txrx.c b/drivers/net/ethernet/intel/ice/ice_txrx.c
index 8bb743f78fcb..fe96af89509b 100644
--- a/drivers/net/ethernet/intel/ice/ice_txrx.c
+++ b/drivers/net/ethernet/intel/ice/ice_txrx.c
@@ -2405,7 +2405,7 @@ ice_xmit_frame_ring(struct sk_buff *skb, struct ice_tx_ring *tx_ring)
 					ICE_TXD_CTX_QW1_CMD_S);
 
 	ice_tstamp(tx_ring, skb, first, &offload);
-	if (ice_is_switchdev_running(vsi->back))
+	if (ice_is_switchdev_running(vsi->back) && vsi->type != ICE_VSI_SF)
 		ice_eswitch_set_target_vsi(skb, &offload);
 
 	if (offload.cd_qw1 & ICE_TX_DESC_DTYPE_CTX) {
-- 
2.42.0

