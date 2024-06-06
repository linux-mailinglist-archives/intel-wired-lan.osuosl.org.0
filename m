Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id E59548FE530
	for <lists+intel-wired-lan@lfdr.de>; Thu,  6 Jun 2024 13:20:53 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 92447614A2;
	Thu,  6 Jun 2024 11:20:52 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id HD5DqwvqR7Xi; Thu,  6 Jun 2024 11:20:52 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org C81EF61482
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1717672851;
	bh=/7QqtqAml2fBG78V+sXWzEdVqUc2rjNbE2WYrl7ITGI=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=Szc5zCXFYs5fX0z8nc0TtQBHAQOQ+we7TsPBlI3o+qmWzdc1MLb774qXjDY5t7Dhq
	 SUpHrNrjlCbqEIn2ULtJal0wtXULr3bcJBLfIFwJfwMCYtQzbUDTmPdE08BirV0kE5
	 UQwrIH3Yw3yNhOdQMPy95iw8iuvVVb6M+FP8pqhS/RDEkmaCbZVOxBsj1+ri8/4qjU
	 JRGRNEFJ1g/s9MYZULgWDdXVmAUeeVo+XroBBqhKXAQgaWXn6oUJWDrB7zq4fVXbYf
	 bknLQ4vcrrXJlKFJYe5XyeB13NUovfM9Hgf5nFWTK/dRg8vgpiKTXX8lIGqS5NIuCF
	 AH9IlmYrWnK3w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id C81EF61482;
	Thu,  6 Jun 2024 11:20:51 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id E770C1BF591
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:49 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id D6BF9400E5
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:48 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gJ5YkpqdwsX8 for <intel-wired-lan@lists.osuosl.org>;
 Thu,  6 Jun 2024 11:20:48 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.15;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp2.osuosl.org D1CA140612
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org D1CA140612
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.15])
 by smtp2.osuosl.org (Postfix) with ESMTPS id D1CA140612
 for <intel-wired-lan@lists.osuosl.org>; Thu,  6 Jun 2024 11:20:47 +0000 (UTC)
X-CSE-ConnectionGUID: 5jqlR1C8T6S2dy5luUHLLQ==
X-CSE-MsgGUID: 0TJUcIZYRgi1ERA9/Etj1g==
X-IronPort-AV: E=McAfee;i="6600,9927,11094"; a="18123801"
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="18123801"
Received: from orviesa003.jf.intel.com ([10.64.159.143])
 by orvoesa107.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Jun 2024 04:20:48 -0700
X-CSE-ConnectionGUID: /kg6L9nmRwOaiaczF5if6g==
X-CSE-MsgGUID: AcrvToRPQ+iZc8wyRD01SA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,219,1712646000"; d="scan'208";a="42864700"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by orviesa003.jf.intel.com with ESMTP; 06 Jun 2024 04:20:45 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  6 Jun 2024 13:24:59 +0200
Message-ID: <20240606112503.1939759-12-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
References: <20240606112503.1939759-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1717672848; x=1749208848;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=TF/12CK9NrtoHBCw4evMT7vOj60eCIo2hvgm6u1M/tM=;
 b=EjfQhsuIzkljPKEGsZ9/pe6ZfCuE2ssD+d1gHaI3qBi4msU+OpwhYNII
 LMWqsCaf6s7LbG8xQiL/97OAP32UQUTxbuHlkTQvaewSgH8rkH+tYG+B3
 FYynmeGQ7k+pZUjHx0Fr3FLEqqt2QhI8qrxAEhURQH6lnVqa7PlKtqKBB
 wIVCgQfXkWvYYJnxTvz+5s5G/Yuj5HuAjgKEeEglCMkpABBtF2YxDxq3j
 vA8zaPDdcqNuVtwfmu1cyGStquUU+1V2zgTWP0TJ3cCIkyxTqAVDvaZTd
 tmM1WrG7Kebj99UhLB77+5Y7EbqJuaYbCgrrNM+7NwWiX2HxSI3zyqJ8f
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=EjfQhsuI
Subject: [Intel-wired-lan] [iwl-next v5 11/15] ice: check if SF is ready in
 ethtool ops
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, horms@kernel.org,
 sridhar.samudrala@intel.com, mateusz.polchlopek@intel.com,
 netdev@vger.kernel.org, jiri@nvidia.com, kalesh-anakkur.purayil@broadcom.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now there is another type of port representor. Correct checking if
parent device is ready to reflect also new PR type.

Reviewed-by: Simon Horman <horms@kernel.org>
Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  7 +++----
 drivers/net/ethernet/intel/ice/ice_repr.c    | 12 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_repr.h    |  1 +
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index 2d307e7d9863..ec93807dc327 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4053,7 +4053,7 @@ ice_repr_get_drvinfo(struct net_device *netdev,
 {
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 
-	if (ice_check_vf_ready_for_cfg(repr->vf))
+	if (repr->ops.ready(repr))
 		return;
 
 	__ice_get_drvinfo(netdev, drvinfo, repr->src_vsi);
@@ -4065,8 +4065,7 @@ ice_repr_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 
 	/* for port representors only ETH_SS_STATS is supported */
-	if (ice_check_vf_ready_for_cfg(repr->vf) ||
-	    stringset != ETH_SS_STATS)
+	if (repr->ops.ready(repr) || stringset != ETH_SS_STATS)
 		return;
 
 	__ice_get_strings(netdev, stringset, data, repr->src_vsi);
@@ -4079,7 +4078,7 @@ ice_repr_get_ethtool_stats(struct net_device *netdev,
 {
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 
-	if (ice_check_vf_ready_for_cfg(repr->vf))
+	if (repr->ops.ready(repr))
 		return;
 
 	__ice_get_ethtool_stats(netdev, stats, data, repr->src_vsi);
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 5ea8b512c421..229831fe2cd2 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -283,6 +283,16 @@ ice_repr_reg_netdev(struct net_device *netdev)
 	return register_netdev(netdev);
 }
 
+static int ice_repr_ready_vf(struct ice_repr *repr)
+{
+	return !ice_check_vf_ready_for_cfg(repr->vf);
+}
+
+static int ice_repr_ready_sf(struct ice_repr *repr)
+{
+	return !repr->sf->active;
+}
+
 /**
  * ice_repr_destroy - remove representor from VF
  * @repr: pointer to representor structure
@@ -420,6 +430,7 @@ struct ice_repr *ice_repr_create_vf(struct ice_vf *vf)
 	repr->vf = vf;
 	repr->ops.add = ice_repr_add_vf;
 	repr->ops.rem = ice_repr_rem_vf;
+	repr->ops.ready = ice_repr_ready_vf;
 
 	ether_addr_copy(repr->parent_mac, vf->hw_lan_addr);
 
@@ -466,6 +477,7 @@ struct ice_repr *ice_repr_create_sf(struct ice_dynamic_port *sf)
 	repr->sf = sf;
 	repr->ops.add = ice_repr_add_sf;
 	repr->ops.rem = ice_repr_rem_sf;
+	repr->ops.ready = ice_repr_ready_sf;
 
 	ether_addr_copy(repr->parent_mac, sf->hw_addr);
 
diff --git a/drivers/net/ethernet/intel/ice/ice_repr.h b/drivers/net/ethernet/intel/ice/ice_repr.h
index dcba07899877..27def65614f3 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.h
+++ b/drivers/net/ethernet/intel/ice/ice_repr.h
@@ -36,6 +36,7 @@ struct ice_repr {
 	struct {
 		int (*add)(struct ice_repr *repr);
 		void (*rem)(struct ice_repr *repr);
+		int (*ready)(struct ice_repr *repr);
 	} ops;
 };
 
-- 
2.42.0

