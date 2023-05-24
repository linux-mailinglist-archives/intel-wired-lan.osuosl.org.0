Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 1A8C270F634
	for <lists+intel-wired-lan@lfdr.de>; Wed, 24 May 2023 14:23:13 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id A38F5611C8;
	Wed, 24 May 2023 12:23:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org A38F5611C8
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684930991;
	bh=6/YGR82gCdbzhkzDqLB9lklCu8rV30A+4ZuWbRyL/ow=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=T+vNhjyo5p0zS9324STElLNfmR+bUg9fK0/Fuge5IhGUErFEfNaUaTQYeGK/A27hM
	 gsNt3QAi/mHzCBJSjNa71Br5hYI6GyHf6RnBqfq2qqkeo8pYXnUOaiZzPBBaM5Izm2
	 AWs/ER3+6Hx59MXNWBDLJ1RM0yxnt0LyzqdrKyFW1w3uJA/dQbL5fkKsK/vICoJNkq
	 akx0/qJVSTQYrOEtZcT2CUgay40ZFBuxJbEYfQZ43hVSbPQfpwfVSEkxqf0sfxvgp6
	 tgdzivkbwyd7n1i57pHNyrXGGtd5aHn+rS7FHyY5nVvauwpj+gTpHLJCIQaPORnv2K
	 KmP+jjaDC6ijQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 5KQOYwHHu4B3; Wed, 24 May 2023 12:23:10 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id 77A25611C4;
	Wed, 24 May 2023 12:23:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 77A25611C4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 637191BF354
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 7C8CC41CFE
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:42 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 7C8CC41CFE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id JkXBKaI_hXfl for <intel-wired-lan@lists.osuosl.org>;
 Wed, 24 May 2023 12:22:41 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org C15D541CDC
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id C15D541CDC
 for <intel-wired-lan@lists.osuosl.org>; Wed, 24 May 2023 12:22:41 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="417005119"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="417005119"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 24 May 2023 05:22:41 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10720"; a="794168568"
X-IronPort-AV: E=Sophos;i="6.00,189,1681196400"; d="scan'208";a="794168568"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by FMSMGA003.fm.intel.com with ESMTP; 24 May 2023 05:22:39 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id 577A637844;
 Wed, 24 May 2023 13:22:38 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed, 24 May 2023 14:21:17 +0200
Message-Id: <20230524122121.15012-10-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230524122121.15012-1-wojciech.drewek@intel.com>
References: <20230524122121.15012-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684930961; x=1716466961;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=jUiTyj18M0Tl01Si6v/vvhg3qxGAf2i1FRt4nhjTpF4=;
 b=IsjzXTGDduOOkp/Ven40i6v9xF+GslR4AtnZMfWI0c4FpD0WTNhyHXF6
 pxCPppdL41XCgU4A6ZQMS6OPHe5VO5pslRlVgjIiV6ACBxStPCEVkcN4g
 GK4a/piR4A5NB6FJGCA1QvbIzSuQcHeJ4eeSB+OzMoPFhOz1dODPxHldK
 /gWmwMjL741Q2oLSfkQwMlSeAAKFpIenmt5/iUqQSF0CsYyIYPN5cfpau
 r88xiQahvlo1RcvU0vZGWRxBgfPITRX7n1XrGMh3yjGnJ6TRegUXpDbZW
 A702bnmCuSq2LzwqdzN/6i8UChC5PoHD1O+jc5g0r9Krxyf3MCSolHJDs
 g==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=IsjzXTGD
Subject: [Intel-wired-lan] [PATCH iwl-next v4 09/13] ice: Accept LAG netdevs
 in bridge offloads
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
Cc: pmenzel@molgen.mpg.de, netdev@vger.kernel.org, simon.horman@corigine.com,
 dan.carpenter@linaro.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Allow LAG interfaces to be used in bridge offload using
netif_is_lag_master. In this case, search for ice netdev in
the list of LAG's lower devices.

Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
v2: braces added in ice_eswitch_br_get_uplnik_from_lag,
    use else in ice_eswitch_br_netdev_to_port and
    ice_eswitch_br_port_link
---
 .../net/ethernet/intel/ice/ice_eswitch_br.c   | 47 +++++++++++++++++--
 1 file changed, 42 insertions(+), 5 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
index 99cd5ac30f9a..19481decffe4 100644
--- a/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
+++ b/drivers/net/ethernet/intel/ice/ice_eswitch_br.c
@@ -15,8 +15,23 @@ static const struct rhashtable_params ice_fdb_ht_params = {
 
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
+ice_eswitch_br_get_uplnik_from_lag(struct net_device *lag_dev)
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
@@ -26,8 +41,19 @@ ice_eswitch_br_netdev_to_port(struct net_device *dev)
 		struct ice_repr *repr = ice_netdev_to_repr(dev);
 
 		return repr->br_port;
-	} else if (netif_is_ice(dev)) {
-		struct ice_pf *pf = ice_netdev_to_pf(dev);
+	} else if (netif_is_ice(dev) || netif_is_lag_master(dev)) {
+		struct net_device *ice_dev;
+		struct ice_pf *pf;
+
+		if (netif_is_lag_master(dev))
+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
+		else
+			ice_dev = dev;
+
+		if (!ice_dev)
+			return NULL;
+
+		pf = ice_netdev_to_pf(ice_dev);
 
 		return pf->br_port;
 	}
@@ -719,7 +745,18 @@ ice_eswitch_br_port_link(struct ice_esw_br_offloads *br_offloads,
 
 		err = ice_eswitch_br_vf_repr_port_init(bridge, repr);
 	} else {
-		struct ice_pf *pf = ice_netdev_to_pf(dev);
+		struct net_device *ice_dev;
+		struct ice_pf *pf;
+
+		if (netif_is_lag_master(dev))
+			ice_dev = ice_eswitch_br_get_uplnik_from_lag(dev);
+		else
+			ice_dev = dev;
+
+		if (!ice_dev)
+			return 0;
+
+		pf = ice_netdev_to_pf(ice_dev);
 
 		err = ice_eswitch_br_uplink_port_init(bridge, pf);
 	}
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
