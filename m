Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id 671D28C3D48
	for <lists+intel-wired-lan@lfdr.de>; Mon, 13 May 2024 10:33:23 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8282B83841;
	Mon, 13 May 2024 08:33:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id JjMdhrjZjmDR; Mon, 13 May 2024 08:33:17 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org C11D283834
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1715589194;
	bh=31+GuaZczlcbvfXT1lWCxRWC+RxvRwUBaQY0KXroOlg=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=BHsu4aZNFr0V4V5DnF5mviXHqH6V2o5hzu3SOpZG4ZcuSxm2UPMl0kjrqOpNH6s8y
	 P2op2YojQOVdgQX55Zj9YF66Hn5af1T11J0//hX2O665WFS/spy2ad2WWkybtWTKq1
	 xSlKE7d8cRatCgBCrACheYVW8C+mcyfWE4lfhLwupGl2026V+C9qo4RyWWlhDccd2b
	 7NXQvvxLmoTpEWeqBkImaFnqCmp9L05ZuB0eABVOrhQf6v6khpk1oTRvV/jz/THY46
	 eDWZGoR/GNkGWEgRyOEyL7ZE8uZnrWh3fFJUvBk7AZ7hkqEisDrxrMmj3DhQHigQRW
	 OtXWVmXSyY9PQ==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id C11D283834;
	Mon, 13 May 2024 08:33:14 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 79C831BF86C
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:10 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 65C87410B9
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:10 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id gWLw-8ZkpRmn for <intel-wired-lan@lists.osuosl.org>;
 Mon, 13 May 2024 08:33:09 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.12;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 4F13C4109D
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4F13C4109D
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.12])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 4F13C4109D
 for <intel-wired-lan@lists.osuosl.org>; Mon, 13 May 2024 08:33:09 +0000 (UTC)
X-CSE-ConnectionGUID: 3rfLr9jJRs2pxe4FuEJHVg==
X-CSE-MsgGUID: hA8SL1TfTDW5DsrnCruuSA==
X-IronPort-AV: E=McAfee;i="6600,9927,11071"; a="22914866"
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="22914866"
Received: from fmviesa006.fm.intel.com ([10.60.135.146])
 by orvoesa104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 May 2024 01:33:10 -0700
X-CSE-ConnectionGUID: RSQUviPATqCVtEx/2YvuLw==
X-CSE-MsgGUID: zha+K/21RJ+XZYJ9yWWNQw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.08,157,1712646000"; d="scan'208";a="30303604"
Received: from wasp.igk.intel.com (HELO GK3153-DR2-R750-36946.localdomain.com)
 ([10.102.20.192])
 by fmviesa006.fm.intel.com with ESMTP; 13 May 2024 01:33:06 -0700
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 13 May 2024 10:37:31 +0200
Message-ID: <20240513083735.54791-12-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
References: <20240513083735.54791-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1715589190; x=1747125190;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=0lT7G/efdhxZ25p6Q6QwXFSaYai14TRet/p53/JannI=;
 b=K36lXTPPNSN64mMV82yj6cJUW9qxFTX0Lwc78e/gpbvtcEFDDXlwbk4H
 L+I5LUnV9oabk9gYiQqROXk4+ijz5mALZ9HPLV6ZdjHHAzoAOmMys+oMf
 Awv+LklOQLUqIA8khNgPvgZh1hdteUaCed+S3mzrXb0b5oAmXiAIbr87/
 KhFkD7VCPAfUX4wTx22GnTmeNLXNdbHDx3D+gORmb0YV3b2PfPgrlum8t
 fREBir4E15Y1cq74Q0Qh7d/7Xcb6RQRhHrVrc1BnmjX60GjrYBXJsw4zZ
 LDl7kQQlmV+vIPL+FLyphbdFKFZIhlQg8YnjebNDuDGsaVNGzTtzvZBR6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K36lXTPP
Subject: [Intel-wired-lan] [iwl-next v2 11/15] ice: check if SF is ready in
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
Cc: shayd@nvidia.com, maciej.fijalkowski@intel.com, sridhar.samudrala@intel.com,
 mateusz.polchlopek@intel.com, netdev@vger.kernel.org, jiri@nvidia.com,
 michal.kubiak@intel.com, pio.raczynski@gmail.com, przemyslaw.kitszel@intel.com,
 jacob.e.keller@intel.com, wojciech.drewek@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Now there is another type of port representor. Correct checking if
parent device is ready to reflect also new PR type.

Reviewed-by: Wojciech Drewek <wojciech.drewek@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c |  7 +++----
 drivers/net/ethernet/intel/ice/ice_repr.c    | 12 ++++++++++++
 drivers/net/ethernet/intel/ice/ice_repr.h    |  1 +
 3 files changed, 16 insertions(+), 4 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index d91f41f61bce..3f0bf07ea126 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -4070,7 +4070,7 @@ ice_repr_get_drvinfo(struct net_device *netdev,
 {
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 
-	if (ice_check_vf_ready_for_cfg(repr->vf))
+	if (repr->ops.ready(repr))
 		return;
 
 	__ice_get_drvinfo(netdev, drvinfo, repr->src_vsi);
@@ -4082,8 +4082,7 @@ ice_repr_get_strings(struct net_device *netdev, u32 stringset, u8 *data)
 	struct ice_repr *repr = ice_netdev_to_repr(netdev);
 
 	/* for port representors only ETH_SS_STATS is supported */
-	if (ice_check_vf_ready_for_cfg(repr->vf) ||
-	    stringset != ETH_SS_STATS)
+	if (repr->ops.ready(repr) || stringset != ETH_SS_STATS)
 		return;
 
 	__ice_get_strings(netdev, stringset, data, repr->src_vsi);
@@ -4096,7 +4095,7 @@ ice_repr_get_ethtool_stats(struct net_device *netdev,
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

