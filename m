Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D210568E7DF
	for <lists+intel-wired-lan@lfdr.de>; Wed,  8 Feb 2023 06:49:13 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id AAB5240B8D;
	Wed,  8 Feb 2023 05:49:11 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org AAB5240B8D
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1675835351;
	bh=ZoFsfycQwPyLSTqz9Luzf8sjNohglHL/Fbr8qQBU920=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=uH4nPRDIhu/NMhKnuclrgZRO4c9JnN/50w6AuCwwLJbEtNZs8+svsDeQ9fXeZ/rR3
	 Dww6uh60i/Sli1J24eHmavriiacAbafycXYY2v3TgWSrQylcK4L1T0LGmDKvKbX+ku
	 wEj9UyHMfXp/v49jEBIz1OtdhDJaVQALliFfxWuocDnTrWxRsxc124WYiR9aSy1NkL
	 S4ui3huilGypd1I5iOGCcBH+s72BvXuqgl8LWWgQSGBWAleUPJL2HaKIXk1VEbpfbe
	 +GnBb22f4Vst+Uo3WO7ezrfE28IREXC4PIZAJmNXucKeFfo52VhvUfRaL3/8cq7G6q
	 Uv0Y82+NnJZOw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id R516UyAN6Mfd; Wed,  8 Feb 2023 05:49:11 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id A0DF740393;
	Wed,  8 Feb 2023 05:49:10 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org A0DF740393
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id D7C0E1BF853
 for <intel-wired-lan@osuosl.org>; Wed,  8 Feb 2023 05:49:05 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id BA1686108C
 for <intel-wired-lan@osuosl.org>; Wed,  8 Feb 2023 05:49:05 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org BA1686108C
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id PN-pX8bZ6DRI for <intel-wired-lan@osuosl.org>;
 Wed,  8 Feb 2023 05:49:05 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D881161040
Received: from mga18.intel.com (mga18.intel.com [134.134.136.126])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D881161040
 for <intel-wired-lan@osuosl.org>; Wed,  8 Feb 2023 05:49:04 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="313361902"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="313361902"
Received: from fmsmga004.fm.intel.com ([10.253.24.48])
 by orsmga106.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Feb 2023 21:49:04 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6500,9779,10614"; a="735809477"
X-IronPort-AV: E=Sophos;i="5.97,280,1669104000"; d="scan'208";a="735809477"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by fmsmga004.fm.intel.com with ESMTP; 07 Feb 2023 21:49:02 -0800
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org,
	vinicius.gomes@intel.com
Date: Wed,  8 Feb 2023 13:45:17 +0800
Message-Id: <20230208054517.5615-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1675835344; x=1707371344;
 h=from:to:cc:subject:date:message-id;
 bh=223DGSk6tfxSvozPMF0ppdH2/qUyNlQ/fpOW9BmbsLY=;
 b=gK0crWZd40nFu+c82Npo9eqViidEAa2wZ8TOvZuMtetzW9tzHAQF2HDD
 JgXYk+GdOis+vhE0LVd5AvbyRVTJ/Ad8SXRxOkcFpxmySM2xRha9FZl4V
 8TNOsZYibNRrkzEusyJFNVDLW455Qj1SEbx/9ZFy4ASo9O847Xu5/RXTH
 o5kx1OuVQfz+RpfyMVAfqaZvCmx0S/6Km9tOEQveZPqgV4eTXz3WbRdn4
 kELg5Gzs2XT4cvNBN47PrDtJfN/vy/xcbkzULzfpShn5gZbeXuBCUBHQ7
 W76XFCDmxCF4R4fXrxyAqEVMKpdwtki26PfMAr29piABDt2a4CDe9Ixky
 Q==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=gK0crWZd
Subject: [Intel-wired-lan] [PATCH net-next v1] igc: Fix qbv counter not zero
 during 1st GCL enrollment
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
Cc: muhammad.husaini.zulkifli@intel.com, anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The counter is experiencing some problems as a result of recent updates
that prevent the controller from being reset each time the TSN config
is disabled because the BASET L/H value will always be increased rather
than zero. Previous condition is no longer valid anymore.

The TQAVCTRL[bit0] register is used in this patch to check whether the
existing GCL is being reconfigured or a new GCL configuration.

Fixes: 1d1b4c63ba73 ("igc: Remove reset adapter task for i226 during disable tsn config")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_tsn.c | 8 +++++++-
 1 file changed, 7 insertions(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_tsn.c b/drivers/net/ethernet/intel/igc/igc_tsn.c
index b38c1c7569a0b..94a2b0dfb54d4 100644
--- a/drivers/net/ethernet/intel/igc/igc_tsn.c
+++ b/drivers/net/ethernet/intel/igc/igc_tsn.c
@@ -114,6 +114,7 @@ static int igc_tsn_disable_offload(struct igc_adapter *adapter)
 static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 {
 	struct igc_hw *hw = &adapter->hw;
+	bool tsn_mode_reconfig = false;
 	u32 tqavctrl, baset_l, baset_h;
 	u32 sec, nsec, cycle;
 	ktime_t base_time, systim;
@@ -226,6 +227,10 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 	}
 
 	tqavctrl = rd32(IGC_TQAVCTRL) & ~IGC_TQAVCTRL_FUTSCDDIS;
+
+	if (tqavctrl & IGC_TQAVCTRL_TRANSMIT_MODE_TSN)
+		tsn_mode_reconfig = true;
+
 	tqavctrl |= IGC_TQAVCTRL_TRANSMIT_MODE_TSN | IGC_TQAVCTRL_ENHANCED_QAV;
 
 	cycle = adapter->cycle_time;
@@ -243,7 +248,8 @@ static int igc_tsn_enable_offload(struct igc_adapter *adapter)
 		/* Increase the counter if scheduling into the past while
 		 * Gate Control List (GCL) is running.
 		 */
-		if (rd32(IGC_BASET_H) || rd32(IGC_BASET_L))
+		if ((rd32(IGC_BASET_H) || rd32(IGC_BASET_L)) &&
+		    tsn_mode_reconfig)
 			adapter->qbv_config_change_errors++;
 	} else {
 		/* According to datasheet section 7.5.2.9.3.3, FutScdDis bit
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
