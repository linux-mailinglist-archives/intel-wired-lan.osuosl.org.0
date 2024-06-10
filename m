Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 5CFA6901C02
	for <lists+intel-wired-lan@lfdr.de>; Mon, 10 Jun 2024 09:39:45 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 0E9F7607C6;
	Mon, 10 Jun 2024 07:39:44 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id xk31r4yKxK1H; Mon, 10 Jun 2024 07:39:43 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 5132E607CB
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1718005183;
	bh=kazuXYjqNy2VUcicwol92Bur9F4K+LJ74iDgwxKDRkQ=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=43iUk3sYvWIX0G+3Gs/STDMei0Hcde/TeFv6zsBXsN+3wIeEbzzvz/EflUYMKZCeL
	 bar58lNm4W4QkjlLdK3uc+3v8J1hqaxBO+O4bU/HtWHRoIeC2yIqaJL2+qR+Q479th
	 v4Sxa2D5SS30Y2uujfpmFLVviWTN61oJCbSIXscE16yLi6kOjA/BRgwz9yN3MLyK1x
	 XWZhYOUQFrzB4Y425ggZaZHNEqGQ2LKtsw54g7UPoFDQ9xf087/kVMBZcgD+Anqf2o
	 CKqPdVyzzlEuwrZHdgClIo35Vnn4rtjLc9SSIwRy4ghQUdRvxX5R1EM8pSrHnom2uF
	 wSPXJwFBi6PNQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 5132E607CB;
	Mon, 10 Jun 2024 07:39:43 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 7C7561BF2B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:39:41 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 68364405CD
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:39:41 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8FkI-1p0ycwn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 10 Jun 2024 07:39:40 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.19;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 2B8CE4057E
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2B8CE4057E
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 2B8CE4057E
 for <intel-wired-lan@lists.osuosl.org>; Mon, 10 Jun 2024 07:39:40 +0000 (UTC)
X-CSE-ConnectionGUID: bf1x/TejTmW9op164uECow==
X-CSE-MsgGUID: XPLfVJcBTAOYV1tMGlpIYg==
X-IronPort-AV: E=McAfee;i="6600,9927,11098"; a="14448563"
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="14448563"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by fmvoesa113.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 10 Jun 2024 00:39:40 -0700
X-CSE-ConnectionGUID: /InZLNYpQJeu7DqPMpVeyg==
X-CSE-MsgGUID: RT2JlTMiR7ezIQnQVATCLw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,227,1712646000"; d="scan'208";a="70151245"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa001.fm.intel.com with ESMTP; 10 Jun 2024 00:39:37 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 10 Jun 2024 09:44:31 +0200
Message-ID: <20240610074434.1962735-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240610074434.1962735-1-michal.swiatkowski@linux.intel.com>
References: <20240610074434.1962735-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1718005180; x=1749541180;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=W9uxdBNPrzw8IEk83hy6OSC8VkEIk5v/qxhXr1JHaQw=;
 b=AYA46I2KR/JOfzmQ/XZSvdovEaEtyNs5Hbm+FO79awE74z/d2heaYVFK
 TF56Hr7g0nKCS/x+LKQTilXh4PTJyawjDNEP1ZvQI5hzkl6WCrQh9Rg6l
 FD8+c1qmLQPST9F2diYRh1Ch1ADd2pvyZJyaOpCsgzvSU5wQaeNLo5SAK
 qUQDd933ne2MeHgR+WcRR4U10IcBWPXY6xlnxt8VcxNe/G5EfyLhPLmL/
 9sakAKlSfDE6qRjAW1nBI8eNKq77XhLE0/JmvRgJgiGfim4gxku7wWErJ
 1NXx7ew0RoRh/PcS7JpFiyrSw2fpxntW4TIZ5OQi7KP/ZJBdocEdTTt5o
 w==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=AYA46I2K
Subject: [Intel-wired-lan] [iwl-next v3 1/4] ice: store representor ID in
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
 kuba@kernel.org, michal.kubiak@intel.com, pio.raczynski@gmail.com,
 przemyslaw.kitszel@intel.com, jacob.e.keller@intel.com,
 wojciech.drewek@intel.com
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

