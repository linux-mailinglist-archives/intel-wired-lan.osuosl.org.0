Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 0158A8766E6
	for <lists+intel-wired-lan@lfdr.de>; Fri,  8 Mar 2024 15:59:51 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 9D44E41CBE;
	Fri,  8 Mar 2024 14:59:47 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Ah3bPs_yUGfo; Fri,  8 Mar 2024 14:59:47 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.34; helo=ash.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org DEA44405F9
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1709909987;
	bh=sTyIX7GRru7T7c7KVK1dq9J8vpQwX04o5aa6ToBbXKY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=ueayCRsJskvyhiqMEOyCCwY8hHBdbH4dhBuJVAK8PhVJX8GiNvLguRLSNJrekWTsf
	 SttI34IMXvKAMJ7+jgC4ts4JaSgRnx5xs62T8cmIiNLxxuYlrfGSGGm1dIDM/OqgGf
	 qm5V5zTJPUAnFrXAk9P0wcxis8/zjOB4fQVBvJmXiB/c9WCFFezgeDoj1qZg2N/5hu
	 /iT5tb8wuyFS0RNfjGKxm/9C1nokCxoPzB4teT7VH4yevpxcvbsBl2tBsDTymaeANB
	 yqwUWfdhIvbcBDTAtzXUKSifRShNaUXZtuntwX6kjUNoQP+UNPFBBMNlcZ7LgdF3eq
	 5K4/lAWi6pn5w==
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id DEA44405F9;
	Fri,  8 Mar 2024 14:59:46 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 9C5591BF23C
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 10:59:18 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8603441A32
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 10:59:18 +0000 (UTC)
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id F_L5Ut5j0eJU for <intel-wired-lan@lists.osuosl.org>;
 Fri,  8 Mar 2024 10:59:17 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=198.175.65.10;
 helo=mgamail.intel.com; envelope-from=dariusz.aftanski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 76FC641A04
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 76FC641A04
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.10])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 76FC641A04
 for <intel-wired-lan@lists.osuosl.org>; Fri,  8 Mar 2024 10:59:17 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,11006"; a="22061215"
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="22061215"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by orvoesa102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 08 Mar 2024 02:59:17 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.07,109,1708416000"; d="scan'208";a="10471781"
Received: from ngic1.igk.intel.com (HELO Oahu.igk.intel.com) ([10.237.112.172])
 by orviesa009.jf.intel.com with ESMTP; 08 Mar 2024 02:59:16 -0800
From: Dariusz Aftanski <dariusz.aftanski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  8 Mar 2024 11:58:42 +0100
Message-ID: <20240308105842.141723-1-dariusz.aftanski@linux.intel.com>
X-Mailer: git-send-email 2.44.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Approved-At: Fri, 08 Mar 2024 14:59:43 +0000
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1709895558; x=1741431558;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=f0q/a0xnG5kf2q9i0qrlrTW4lXpdu1y5FLz5rkNT36w=;
 b=iayzZyVaM5xYlxP6c33cnD/EdeZ01njxcK9d2u312mhQFyUuxX2Fiebb
 bl2YoEz+S+/y60cSslp4p+AjZqgZ9PWxCKB8/jUi1EO1pj32vFDXE6aUG
 32DAZviuJGhIup+Z7MiHi4MSdsGBMS0tqYa6BiFk1OA2PDvjw9wbRpwmc
 OyGcnbOvb4C5rmbhsjukTjxSWXM/pMLhd51Avcw1nYGZXa49sCoG7/hm+
 VskOPCCtr0DFE028HbRuGNIK9eBz8GoX8/08Ii3PL6BVs44Hd1LhRoUSh
 iqM91PrHk/CNmaJT4uQceJwgQyYGhdpuN+z848/mqoU/6YZnItXl9iKo8
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=iayzZyVa
Subject: [Intel-wired-lan] [iwl-next v1] ice: Remove ndo_get_phys_port_name
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
Cc: netdev@vger.kernel.org, Dariusz Aftanski <dariusz.aftanski@linux.intel.com>,
 Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

ndo_get_phys_port_name is never actually used, as in switchdev
devklink is always being created.

Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Dariusz Aftanski <dariusz.aftanski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_repr.c | 34 -----------------------
 1 file changed, 34 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_repr.c b/drivers/net/ethernet/intel/ice/ice_repr.c
index 5f30fb131f74..1f2242a4990e 100644
--- a/drivers/net/ethernet/intel/ice/ice_repr.c
+++ b/drivers/net/ethernet/intel/ice/ice_repr.c
@@ -8,39 +8,6 @@
 #include "ice_tc_lib.h"
 #include "ice_dcb_lib.h"
 
-/**
- * ice_repr_get_sw_port_id - get port ID associated with representor
- * @repr: pointer to port representor
- */
-static int ice_repr_get_sw_port_id(struct ice_repr *repr)
-{
-	return repr->src_vsi->back->hw.port_info->lport;
-}
-
-/**
- * ice_repr_get_phys_port_name - get phys port name
- * @netdev: pointer to port representor netdev
- * @buf: write here port name
- * @len: max length of buf
- */
-static int
-ice_repr_get_phys_port_name(struct net_device *netdev, char *buf, size_t len)
-{
-	struct ice_netdev_priv *np = netdev_priv(netdev);
-	struct ice_repr *repr = np->repr;
-	int res;
-
-	/* Devlink port is registered and devlink core is taking care of name formatting. */
-	if (repr->vf->devlink_port.devlink)
-		return -EOPNOTSUPP;
-
-	res = snprintf(buf, len, "pf%dvfr%d", ice_repr_get_sw_port_id(repr),
-		       repr->id);
-	if (res <= 0)
-		return -EOPNOTSUPP;
-	return 0;
-}
-
 /**
  * ice_repr_get_stats64 - get VF stats for VFPR use
  * @netdev: pointer to port representor netdev
@@ -240,7 +207,6 @@ ice_repr_setup_tc(struct net_device *netdev, enum tc_setup_type type,
 }
 
 static const struct net_device_ops ice_repr_netdev_ops = {
-	.ndo_get_phys_port_name = ice_repr_get_phys_port_name,
 	.ndo_get_stats64 = ice_repr_get_stats64,
 	.ndo_open = ice_repr_open,
 	.ndo_stop = ice_repr_stop,
-- 
2.44.0

