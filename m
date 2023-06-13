Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
	by mail.lfdr.de (Postfix) with ESMTPS id 66CA172DED8
	for <lists+intel-wired-lan@lfdr.de>; Tue, 13 Jun 2023 12:14:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 8CF2F403E0;
	Tue, 13 Jun 2023 10:14:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 8CF2F403E0
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1686651293;
	bh=GInLp7tx4UalEOauPf9pqH2wYpska1QaOKWCU5jBspk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=9FcgOk2qWkupiDn+f4c07MluzDsPDMtmnuioyXEwH5nlnUDC2xcy0jykJA0XM+gch
	 m1YdbRTSqfqXybFOaclwFb8ELBazf/2EWo9uYDG7BIqR7VXl0mJKvzx0Mu/PZiIZsZ
	 KGX/GSrkNARKZYYrQgYKfVBcDaI+KPuFcOQe1mPq9C0xLb9FO6gIAUK5tBilsvXLxC
	 krx3yDwsGcxPfFqjUJFExmqSGuG24KGkvFrWrYd82WuRh5XiWfTEU06dJTgyibrdu+
	 fSq7xrreVK6aUXNT0ozRuUcGHo37ChFCM+535AReH7n+mh+43RNAmTU6o+BzibVOiy
	 J5+s2dyKNmeYw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id QXnXBB6PFTND; Tue, 13 Jun 2023 10:14:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 90B8E405DF;
	Tue, 13 Jun 2023 10:14:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 90B8E405DF
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 269681BF2C1
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:44 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 5AC9F409F3
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 5AC9F409F3
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 3422taTG-HX5 for <intel-wired-lan@lists.osuosl.org>;
 Tue, 13 Jun 2023 10:14:42 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7E98B409FB
Received: from mga07.intel.com (mga07.intel.com [134.134.136.100])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 7E98B409FB
 for <intel-wired-lan@lists.osuosl.org>; Tue, 13 Jun 2023 10:14:42 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="424168055"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="424168055"
Received: from orsmga005.jf.intel.com ([10.7.209.41])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 13 Jun 2023 03:14:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10739"; a="885787120"
X-IronPort-AV: E=Sophos;i="6.00,239,1681196400"; d="scan'208";a="885787120"
Received: from irvmail002.ir.intel.com ([10.43.11.120])
 by orsmga005.jf.intel.com with ESMTP; 13 Jun 2023 03:14:40 -0700
Received: from rozewie.igk.intel.com (rozewie.igk.intel.com [10.211.8.69])
 by irvmail002.ir.intel.com (Postfix) with ESMTP id A70FA3542B;
 Tue, 13 Jun 2023 11:14:38 +0100 (IST)
From: Wojciech Drewek <wojciech.drewek@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue, 13 Jun 2023 12:13:20 +0200
Message-Id: <20230613101330.87734-3-wojciech.drewek@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230613101330.87734-1-wojciech.drewek@intel.com>
References: <20230613101330.87734-1-wojciech.drewek@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1686651282; x=1718187282;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=XF7sJPwtHowCThs4CGgLW9TC/LRpOQOT2xrAlLk9paU=;
 b=UXsys5yeoOv79wquIgy1Y47AsXiPX5WO/I5AQSfykPwpYeZ6YwIOIRT7
 Sn3LEXc2jl4o9QQXJaV4bLGQZyBBaVIP2WgJ/02Kp2NV9u6cU9S8Bahkm
 s5nD6cccy08WMDRXrEb7A4GdWS+iBKXr6+pvHjPfZ4qdpqyFNYyf4oU0C
 VbsXFrVD/ybnulAD6PjZcfF9FHEN1NNCCfc4aj2JfQRybzYUzQH6tYS6b
 yL5LkjS1cFJfCo9bWVJAzZ910ctUdRcw7KCzzba9jBREKPD3GkmsTByBN
 hqN3lCWPGFTi70LKA9tSAqObNvqPRp+4Sn/5wmvfgZN5T1EPDmAjoFRU6
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=UXsys5ye
Subject: [Intel-wired-lan] [PATCH iwl-next v5 02/12] ice: Prohibit rx mode
 change in switchdev mode
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

Don't allow to change promisc mode in switchdev mode.
When switchdev is configured, PF netdev is set to be a
default VSI. This is needed for the slow-path to work correctly.
All the unmatched packets will be directed to PF netdev.

It is possible that this setting might be overwritten by
ndo_set_rx_mode. Prevent this by checking if switchdev is
enabled in ice_set_rx_mode.

Reviewed-by: Paul Menzel <pmenzel@molgen.mpg.de>
Reviewed-by: Simon Horman <simon.horman@corigine.com>
Signed-off-by: Wojciech Drewek <wojciech.drewek@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_main.c b/drivers/net/ethernet/intel/ice/ice_main.c
index b0d1e6116eb9..d8193de0715a 100644
--- a/drivers/net/ethernet/intel/ice/ice_main.c
+++ b/drivers/net/ethernet/intel/ice/ice_main.c
@@ -5767,7 +5767,7 @@ static void ice_set_rx_mode(struct net_device *netdev)
 	struct ice_netdev_priv *np = netdev_priv(netdev);
 	struct ice_vsi *vsi = np->vsi;
 
-	if (!vsi)
+	if (!vsi || ice_is_switchdev_running(vsi->back))
 		return;
 
 	/* Set the flags to synchronize filters
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
