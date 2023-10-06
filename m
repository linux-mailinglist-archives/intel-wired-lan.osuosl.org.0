Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id E9D057BC0D3
	for <lists+intel-wired-lan@lfdr.de>; Fri,  6 Oct 2023 23:00:21 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 64EA540AB1;
	Fri,  6 Oct 2023 21:00:20 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 64EA540AB1
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1696626020;
	bh=8o0nAIeROWv5q9vwAviaP3ok8mhCkKQg76BDjHgUBMc=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=HoJjRgXRRitF6Jv3w+ss/RP7BR7bg+qlcWcXV5Db3R6LN5mN7iyqFQB8KdPUS0PXc
	 ygZCQE2BjuigHA3fsdp0kXngGo6hHwJJzO99qLT6q94IdL35Vef042xe+HgKoEBflJ
	 jP0MW5kYiBLVtoGArzRyavcrzLov9xILuVzqFzoUoQBvaF6ctFg+1paPiyEpvVmOm/
	 Lz8FirEth7NQ4KWgslpKQVKP5sxUZLgYUMD3qe2NDa8eaS8QoTFKgyU2GXLIz/4qro
	 l9cXQxJYPKWyc4+FZPU2M/X7Di2gnedtK5k/9U65cogWH44Kef5oRQWzYhkOo8Nnxm
	 BZ3+6PYehKZTw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 28DKobc7SWC1; Fri,  6 Oct 2023 21:00:19 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4B38D4064E;
	Fri,  6 Oct 2023 21:00:19 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B38D4064E
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 8BFCE1BF98E
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 21:00:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 624AD41830
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 21:00:14 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 624AD41830
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id YpDWYwBvxas0 for <intel-wired-lan@lists.osuosl.org>;
 Fri,  6 Oct 2023 21:00:13 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.24])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 6AB3041806
 for <intel-wired-lan@lists.osuosl.org>; Fri,  6 Oct 2023 21:00:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 6AB3041806
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="386662134"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="386662134"
Received: from fmsmga008.fm.intel.com ([10.253.24.58])
 by orsmga102.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 14:00:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10855"; a="818138798"
X-IronPort-AV: E=Sophos;i="6.03,204,1694761200"; d="scan'208";a="818138798"
Received: from dmert-dev.jf.intel.com ([10.166.241.14])
 by fmsmga008-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Oct 2023 14:00:12 -0700
From: Dave Ertman <david.m.ertman@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Fri,  6 Oct 2023 14:02:11 -0700
Message-Id: <20231006210211.1443696-1-david.m.ertman@intel.com>
X-Mailer: git-send-email 2.40.1
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1696626013; x=1728162013;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=1DpSrKIs+hAEukPt4xle9xxxAoy6cCiHpiGwkrwOOIU=;
 b=nFf46bK7ZJ0lRMjW2A8ivwloZ8bZAosP+Kne6CK0n9PMGdzPRoZpi+ws
 tucqyt2Dg7AVPI/oOgNb3SnQb57cVp3Cr0JSXx4MiOmX8nO8T+vSmtBdc
 dItugrLlqV8yfK3slZtBe8eKX2yJbfDNObRt9O/EeBfPs//5gfZDKLXKk
 2WCZVlcWFExq5PRC3LDMo0rI/axtX3GzCXDrDQqF40hj7SFcoc29p4DZS
 Q+hXEXLAn6U8fanMK6kw/l0A7zLofP9qB+mJYGQ4t7TmyI7ApXhWPRFhx
 PszDF1INrCxkEEiK4P/f9SkzTovrqrbqa+tDsrVGhpJ7+VlsOHfX5dY7d
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nFf46bK7
Subject: [Intel-wired-lan] [PATCH iwl-next] ice: Fix SRIOV LAG disable on
 non-compliant aggreagate
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
Cc: netdev@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If an attribute of an aggregate interface disqualifies it from supporting
SRIOV, the driver will unwind the SRIOV support.  Currently the driver is
clearing the feature bit for all interfaces in the aggregate, but this is
not allowing the other interfaces to unwind successfully on driver unload.

Only clear the feature bit for the interface that is currently unwinding.

Fixes: bf65da2eb279 ("ice: enforce interface eligibility and add messaging for SRIOV LAG")
Signed-off-by: Dave Ertman <david.m.ertman@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lag.c | 11 +++--------
 1 file changed, 3 insertions(+), 8 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_lag.c b/drivers/net/ethernet/intel/ice/ice_lag.c
index 2c96d1883e19..c9071228b1ea 100644
--- a/drivers/net/ethernet/intel/ice/ice_lag.c
+++ b/drivers/net/ethernet/intel/ice/ice_lag.c
@@ -1513,17 +1513,12 @@ static void ice_lag_chk_disabled_bond(struct ice_lag *lag, void *ptr)
  */
 static void ice_lag_disable_sriov_bond(struct ice_lag *lag)
 {
-	struct ice_lag_netdev_list *entry;
 	struct ice_netdev_priv *np;
-	struct net_device *netdev;
 	struct ice_pf *pf;
 
-	list_for_each_entry(entry, lag->netdev_head, node) {
-		netdev = entry->netdev;
-		np = netdev_priv(netdev);
-		pf = np->vsi->back;
-
-		ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
+	np = netdev_priv(lag->netdev);
+	pf = np->vsi->back;
+	ice_clear_feature_support(pf, ICE_F_SRIOV_LAG);
 	}
 }
 
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
