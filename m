Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id BF58C755F1A
	for <lists+intel-wired-lan@lfdr.de>; Mon, 17 Jul 2023 11:20:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 7E93A409F8;
	Mon, 17 Jul 2023 09:20:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7E93A409F8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1689585609;
	bh=q2RPpVVFm4QGWN55bsRjRm1mhhVs9Jm+fuR0qjYvx/8=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=huREecAl0AIyZUyjWQ5+XYujLp13zTPQX/1Zfg2au9R7uANyGg8AD5ArtSUT2K6pH
	 /ATZqL/u9ywIhB7DyYVYA+dTj2zrlo0oPa/ju0RiNy6upwnh5tcTWd0i4Oh49fysSi
	 mHolLfmdjgaskje2TDtVGjULwoCJaGOe5dYFgCkdA4QAxH0P34hz28bp/jx/d7j3Md
	 5+mCAr9hWfeV0pmxl5fBFhOAuhQgq7Zu77AMwxFyvcctjLmmGDTjM6vLxS1cEOiI+2
	 m/V/rQVyihNTig+FCUUM2h6AVDy/fmqcsTRvIre01+i4Fx+5d21iM9LW0AL1DSzmui
	 +EhnAgopgahUA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id S882bwONGbss; Mon, 17 Jul 2023 09:20:08 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CB0340412;
	Mon, 17 Jul 2023 09:20:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CB0340412
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 3F7991BF363
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 09:20:03 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 25840404AF
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 09:20:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 25840404AF
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id bmTDOHGRTUGB for <intel-wired-lan@lists.osuosl.org>;
 Mon, 17 Jul 2023 09:20:02 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 2F2E040412
Received: from mga04.intel.com (mga04.intel.com [192.55.52.120])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 2F2E040412
 for <intel-wired-lan@lists.osuosl.org>; Mon, 17 Jul 2023 09:20:02 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="364760127"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="364760127"
Received: from orsmga008.jf.intel.com ([10.7.209.65])
 by fmsmga104.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 17 Jul 2023 02:20:01 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10773"; a="752830769"
X-IronPort-AV: E=Sophos;i="6.01,211,1684825200"; d="scan'208";a="752830769"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga008.jf.intel.com with ESMTP; 17 Jul 2023 02:19:59 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 1E8EC33BD2;
 Mon, 17 Jul 2023 10:19:58 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon, 17 Jul 2023 11:18:43 +0200
Message-Id: <20230717091843.108015-1-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1689585602; x=1721121602;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=A+tNpp1B2GMC6J+XCqkkLSUfvqd1LUEI1yHKunNN9HY=;
 b=X7m/MvkGScd4jnF7OTzZZ8iJ492gRH5tLz8GkaRY4RChREND+w63Ajq1
 bHwetz9F+SuD8PPqzxaNS83gAoMMtRJHKjuRhkuK4eYu0q1/ZqnWqLlSS
 cBsdSAzqofp0SJrn0jG+bTWssscEmei+HdSbDDFV36dHfa2PaJn2VyW6f
 D9gKTtGXnSZIht6cZX7GCV1333+XDK3wd51AwXW+O74ulfpexvIPEz0W9
 Fwk+AqOgP1YgZ3htX4+arjPQatf0kucUYPIJG+1s1D9Gxru0Oh6T8NQ2A
 Pgox40UJprBvdAXXqenJcK5YXjp8A064evPm6YYCV9auuDiZElZXUsRMW
 w==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=X7m/MvkG
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
Cc: jiri@resnulli.us, simon.horman@corigine.com, anthony.l.nguyen@intel.com,
 netdev@vger.kernel.org
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
Note for Tony: This patch needs to go with Dave's LAG
patchset:
http://patchwork.ozlabs.org/project/intel-wired-lan/list/?series=360621

v2: fix spelling of uplink in ice_eswitch_br_get_uplink_from_lag
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
