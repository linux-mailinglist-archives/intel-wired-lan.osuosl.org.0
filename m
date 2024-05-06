Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 77D578BC9C3
	for <lists+intel-wired-lan@lfdr.de>; Mon,  6 May 2024 10:42:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 271CB4052F;
	Mon,  6 May 2024 08:42:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id J6oJ6Wtt1ANd; Mon,  6 May 2024 08:42:08 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 198D040533
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1714984928;
	bh=kazuXYjqNy2VUcicwol92Bur9F4K+LJ74iDgwxKDRkQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Dmsk2vwtlbmhSZ5/yBMpZ7IhP5TkeY7LPRM2fC3Y1RvNFl07bjjIqdbky0tzTGWtg
	 ci5RcqBu09qkW0m6mLKbYNOsAmoY3AmbvFLJRHQYMicI70/SE5Esu37uODA3zQMjia
	 JVlCPCSwV2pL+21MKz21IuMRLG0oYqa9Ggpa57KOqzsTLFP9zUqYuffvks52Ajshxk
	 hdQMTL/8ci/4qSRfPajvGOPvz7RpFIKggLqyHBgf+s9hByLMYcdsegjC0+gFJJQ/1Z
	 9Pn3ppYKw9wJpdcwK9H0uepZ9KKp34DRsPtspcFVLqUqh729X1Y7BmDrhdhFkoGQ8E
	 KeqNKMfytxZNg==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 198D040533;
	Mon,  6 May 2024 08:42:08 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 72E171BF38A
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:06 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5655B403CC
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:06 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id wHqchS-fAn_0 for <intel-wired-lan@lists.osuosl.org>;
 Mon,  6 May 2024 08:42:05 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 29833404E9
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 29833404E9
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 29833404E9
 for <intel-wired-lan@lists.osuosl.org>; Mon,  6 May 2024 08:42:05 +0000 (UTC)
X-CSE-ConnectionGUID: RnkZ03CsQb+2OfjHMiQcoQ==
X-CSE-MsgGUID: 8aCdABP4TB+xGpqV+5W4UA==
X-IronPort-AV: E=McAfee;i="6600,9927,11064"; a="14505078"
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="14505078"
Received: from fmviesa009.fm.intel.com ([10.60.135.149])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 May 2024 01:42:05 -0700
X-CSE-ConnectionGUID: WIbooOaQRKaM75ePqTWeRQ==
X-CSE-MsgGUID: F4/gOcJ9TyKy8Qvebu0PxQ==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,257,1708416000"; d="scan'208";a="28050134"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa009.fm.intel.com with ESMTP; 06 May 2024 01:42:02 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  6 May 2024 10:46:50 +0200
Message-ID: <20240506084653.532111-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
References: <20240506084653.532111-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1714984926; x=1746520926;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W9uxdBNPrzw8IEk83hy6OSC8VkEIk5v/qxhXr1JHaQw=;
 b=CUAE2d2UwuahvdseRRIms1qjDJpGr8PsXjxFWcQup2yLFwJdx7MMUpm2
 R9mgrTl08kksNAQav/Kkag8QgsYv9/mg4Uu/DSKEKPT1dhUyUz2x303Tu
 e4s4N8jllDgW4QK0MAadkbws4A/ppb7AKAns2U8ZcWzVMTDk3+S+OyiaI
 N3EqY/Ozq2ShiTONXNokEJpVtYqWY2cvNBnnWuH2wx62oPZm5syhaSYh3
 a4LMsrfg3HZFJCIIHndiTDwnKj2G5x6dbkA7RXs0tQAvA4lEHi1LFvhAe
 w9IyV7D/42mMGBomoyvkonPndin+Qi9uKCVKTaTHBYM834j9iCUs2vSGB
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=CUAE2d2U
Subject: [Intel-wired-lan] [iwl-next v2 1/4] ice: store representor ID in
 bridge port
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

It is used to get representor structure during cleaning.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_eswitch_br.c | 4 +++-
 drivers/net/ethernet/intel/ice/ice_eswitch_br.h | 1 +
 drivers/net/ethernet/intel/ice/ice_repr.c       | 7 ++-----
 drivers/net/ethernet/intel/ice/ice_repr.h       | 1 +
 4 files changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index ac5beecd028b..f5aceb32bf4d 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -896,7 +896,8 @@ ice_eswitch_br_port_deinit(struct ice_esw_br *bridge,
 	if (br_port->type == ICE_ESWITCH_BR_UPLINK_PORT && vsi->back) {
 		vsi->back->br_port = NULL;
 	} else {
-		struct ice_repr *repr = ice_repr_get_by_vsi(vsi);
+		struct ice_repr *repr =
+			ice_repr_get(vsi->back, br_port->repr_id);
 
 		if (repr)
 			repr->br_port = NULL;
@@ -937,6 +938,7 @@ ice_eswitch_br_vf_repr_port_init(struct ice_esw_br *bridge,
 	br_port->vsi = repr->src_vsi;
 	br_port->vsi_idx = br_port->vsi->idx;
 	br_port->type = ICE_ESWITCH_BR_VF_REPR_PORT;
+	br_port->repr_id = repr->id;
 	repr->br_port = br_port;
 
 	err = xa_insert(&bridge->ports, br_port->vsi_idx, br_port, GFP_KERNEL);
diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
index 85a8fadb2928..c15c7344d7f8 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.h
@@ -46,6 +46,7 @@ struct ice_esw_br_port {
 	enum ice_esw_br_port_type type;
 	u16 vsi_idx;
 	u16 pvid;
+	u32 repr_id;
 	struct xarray vlans;
 };
 
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index d367f4c66dcd..fe83f305cc7d 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -415,12 +415,9 @@ struct ice_repr *ice_repr_add_vf(struct ice_vf *vf)
 	return ERR_PTR(err);
 }
 
-struct ice_repr *ice_repr_get_by_vsi(struct ice_vsi *vsi)
+struct ice_repr *ice_repr_get(struct ice_pf *pf, u32 id)
 {
-	if (!vsi->vf)
-		return NULL;
-
-	return xa_load(&vsi->back->eswitch.reprs, vsi->vf->repr_id);
+	return xa_load(&pf->eswitch.reprs, id);
 }
 
 /**
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index cff730b15ca0..07842620d7a2 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -40,4 +40,5 @@ struct ice_repr *ice_repr_get_by_vsi(struct ice_vsi *vsi);
 void ice_repr_inc_tx_stats(struct ice_repr *repr, unsigned int len,
 			   int xmit_status);
 void ice_repr_inc_rx_stats(struct net_device *netdev, unsigned int len);
+struct ice_repr *ice_repr_get(struct ice_pf *pf, u32 id);
 #endif
-- 
2.42.0

