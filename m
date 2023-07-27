Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 326E7764DEE
	for <lists+intel-wired-lan@lfdr.de>; Thu, 27 Jul 2023 10:45:02 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id B8A00417BD;
	Thu, 27 Jul 2023 08:45:00 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org B8A00417BD
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1690447500;
	bh=HOH/XD/EqSpEl+234McQiaRDLi4EDMFp8wiisPwskVw=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:From;
	b=MGR9YLGzlJ99kxnFVecIuLUKlWQ0ZSQuD6qKvLucI3HhTEdSnlw51+zzmbleApgiB
	 mHj85zgLrkUNKOnxJz3ZMlOigyRFKDNW4/ls0ftUv8OYAaqPI6xkBzPnwIAA7xX4je
	 WcwbWQAo0hKCsIy8Vss2DOuTAJHIJSrzL8T7WRbThvApIwEnwSSLvAF2sWWhNDUPlH
	 yU7mxPKMciPwxfJbfGPc0r/caIPrOJZ3/rODO6l3S1c5w0UvGyFsqBqcExIP+qxWQC
	 gx9twgIsMXgMVnit0k2ciLmYqeZ0qKY6cIrzHsH135jR2DkXnrtdSAHbPcWmGT2Tuf
	 CYhssTifp3isg==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id vCbAitUNaW7y; Thu, 27 Jul 2023 08:45:00 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7C42440BE8;
	Thu, 27 Jul 2023 08:44:59 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C42440BE8
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id BB44D1BF59C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:44:54 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id A007E40948
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:44:54 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A007E40948
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id VPegTqN_xz6m for <intel-wired-lan@lists.osuosl.org>;
 Thu, 27 Jul 2023 08:44:53 +0000 (UTC)
X-Greylist: delayed 426 seconds by postgrey-1.37 at util1.osuosl.org;
 Thu, 27 Jul 2023 08:44:53 UTC
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6C838408CA
Received: from mgamail.intel.com (unknown [192.55.52.151])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 6C838408CA
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 08:44:53 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="348528475"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="348528475"
Received: from fmsmga007.fm.intel.com ([10.253.24.52])
 by fmsmga107.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2023 01:37:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10783"; a="730184454"
X-IronPort-AV: E=Sophos;i="6.01,234,1684825200"; d="scan'208";a="730184454"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by fmsmga007.fm.intel.com with ESMTP; 27 Jul 2023 01:37:00 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A8A5534945
 for <intel-wired-lan@lists.osuosl.org>; Thu, 27 Jul 2023 09:36:59 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu, 27 Jul 2023 10:35:39 +0200
Message-Id: <20230727083539.8219-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1690447493; x=1721983493;
 h=from:to:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=5VJOTydtP+5JxvEp+qKW0/GHxOSWrqaKLO08GktJ99A=;
 b=LRb7YNzTJQV4UOBKwmJJ3y1P/HfCLkSBitceOtZ+IeMrvG5cj29a3/rY
 KwDuQfMd1rbIXLGl/VsrJwXJzJCTDcoOFhGlVgxixbvwVrw762AzpWQek
 A5+uB9gdOVnY7ypqgs/3Vv8/z79a60J4QNdIGpMSEZ0BCDWuTKfMO3bta
 /0eG2pN/ISBhx0Jw2wBC5LhBYig9dMNBxMTBJ/Hwp7WPGzIx6Pw4NniNP
 0D+XZiAWBi3Qy0DKB5aHt//pQxv7Sf+eziDel3IohWgQHc+fAY17TGOvT
 5UaqFir0gMZXnszC7FEFgfQC9LFIOHFjrnkqu5iuYREdUBp4uywodpqMR
 Q==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=LRb7YNzT
Subject: [Intel-wired-lan] [PATCH iwl-next v2] ice: Accept LAG netdevs in
 bridge offloads
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
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow LAG interfaces to be used in bridge offload using
netif_is_lag_master. In this case, search for ice netdev in
the list of LAG's lower devices.

Reviewed-by: Jedrzej Jagielski <jedrzej.jagielski@intel.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: no changes, just resend
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 47 +++++++++++++++++--
 1 file changed, 42 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index cc7357ed6e5f..67bfd1f61cdd 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -20,8 +20,23 @@ static const struct rhashtable_params ice_fdb_ht_params = {
 
 static bool ice_eswitch_br_is_dev_valid(const struct net_device *dev)
 {
-	/* Accept only PF netdev and PRs */
-	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev);
+	/* Accept only PF netdev, PRs and LAG */
+	return ice_is_port_repr_netdev(dev) || netif_is_ice(dev) ||
+		netif_is_lag_master(dev);
+}
+
+static struct net_device *
+ice_eswitch_br_get_uplink_from_lag(struct net_device *lag_dev)
+{
+	struct net_device *lower;
+	struct list_head *iter;
+
+	netdev_for_each_lower_dev(lag_dev, lower, iter) {
+		if (netif_is_ice(lower))
+			return lower;
+	}
+
+	return NULL;
 }
 
 static struct ice_esw_br_port *
@@ -31,8 +46,19 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
 		struct ice_repr *repr = ice_netdev_to_repr(dev);
 
 		return repr->br_port;
-	} else if (netif_is_ice(dev)) {
-		struct ice_pf *pf = ice_netdev_to_pf(dev);
+	} else if (netif_is_ice(dev) || netif_is_lag_master(dev)) {
+		struct net_device *ice_dev;
+		struct ice_pf *pf;
+
+		if (netif_is_lag_master(dev))
+			ice_dev = ice_eswitch_br_get_uplink_from_lag(dev);
+		else
+			ice_dev = dev;
+
+		if (!ice_dev)
+			return NULL;
+
+		pf = ice_netdev_to_pf(ice_dev);
 
 		return pf->br_port;
 	}
@@ -1085,7 +1111,18 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
 		trace_ice_eswitch_br_port_link(repr->br_port);
 	} else {
-		struct ice_pf *pf = ice_netdev_to_pf(dev);
+		struct net_device *ice_dev;
+		struct ice_pf *pf;
+
+		if (netif_is_lag_master(dev))
+			ice_dev = ice_eswitch_br_get_uplink_from_lag(dev);
+		else
+			ice_dev = dev;
+
+		if (!ice_dev)
+			return 0;
+
+		pf = ice_netdev_to_pf(ice_dev);
 
 		err = ice_eswitch_br_uplink_port_init(bridge, pf);
 		trace_ice_eswitch_br_port_link(pf->br_port);
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
