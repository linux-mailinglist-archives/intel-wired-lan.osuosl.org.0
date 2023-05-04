Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id DCF4B6F79D7
	for <lists+intel-wired-lan@lfdr.de>; Fri,  5 May 2023 01:52:54 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A389A41F14;
	Thu,  4 May 2023 23:52:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A389A41F14
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1683244372;
	bh=jeOBp40asId3C7CNfvL6Cfc6JjWY6SP6A5ffi8sE7rY=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=bAQ3nb0KC/vm8LcjoHqa1lP5gJmgg+WcWh39GKc+dykja6fW6YtsvVwJIQMRCR+eH
	 gFoE0t2KE3U7bXPKvZrNFYyZPzs3ceSDjFgDccF3Hm5VCz2TcWOo5XmL43ZupCBLZL
	 8ouAV6QQTG86UZvLwz4aTbMkLW2+Laf39yg2FSVxt6Sq0WmiRD/7F4CdVVAgkXEs2P
	 1hRQN3G4iMsatmC4nQ23vFSoE4brmTSWiLCrGcxwddINvooG6iE+/5peL43rIw0STf
	 E9yR6591u7Zsvvf4GU1Up5zFdA39hy+l8lBWmSSoX0YTwuEkhkcfFH+dNlExw2cE3t
	 UED7XC9yY4IrA==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 48XCEFqwSODi; Thu,  4 May 2023 23:52:51 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4648141F0D;
	Thu,  4 May 2023 23:52:51 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4648141F0D
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp2.osuosl.org (smtp2.osuosl.org [140.211.166.133])
 by ash.osuosl.org (Postfix) with ESMTP id 656CA1BF3A7
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:45 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp2.osuosl.org (Postfix) with ESMTP id 4B8CA41C7A
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:45 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4B8CA41C7A
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
 by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id 30bUvw_vfBSW for <intel-wired-lan@lists.osuosl.org>;
 Thu,  4 May 2023 23:52:44 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 9929941734
Received: from mga06.intel.com (mga06b.intel.com [134.134.136.31])
 by smtp2.osuosl.org (Postfix) with ESMTPS id 9929941734
 for <intel-wired-lan@lists.osuosl.org>; Thu,  4 May 2023 23:52:44 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="412301461"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="412301461"
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
 by orsmga104.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:52:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10700"; a="841423490"
X-IronPort-AV: E=Sophos;i="5.99,250,1677571200"; d="scan'208";a="841423490"
Received: from haitianc-mobl2.amr.corp.intel.com (HELO
 vcostago-mobl3.intel.com) ([10.209.47.201])
 by fmsmga001-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 May 2023 16:52:41 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Thu,  4 May 2023 16:52:29 -0700
Message-Id: <20230504235233.1850428-2-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.40.1
In-Reply-To: <20230504235233.1850428-1-vinicius.gomes@intel.com>
References: <20230504235233.1850428-1-vinicius.gomes@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1683244364; x=1714780364;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=9xITHCvqcgfj3ntm0flKUtn+42CIfKSItW6PDsY3cak=;
 b=KNof7CwC0ZBrOvkZ5bufZwiqAnHVGqPi7NvMzUAL9bFH4+Itjl2D9MOE
 XhceFIx9C1HhDIeyb1vFPM4ErhfxfTXdiryGYLekBdaowRFLGCq9VRHDC
 6U017JR7Mo/Kkr5GBvqJEqBramB5iftQkvnA4MyFiE7fPJjapTPxsEFP/
 Ds3dLXLgeepEyh7q09qpNW+o2xbmHnjzJsBVr/3Sp+Hh4Je/KG+HLyHRN
 x2Fb2h4/m1ub7Q8KVE2JAYeW8LWTNAvVY7H8Y20o2R5vXbtfTxeDX1L/5
 53fLM7s+79X8J3Yb/NLfAHShDI3O0ZaLyHssuD7SHD1L5Dpy5Q+2716ff
 A==;
X-Mailman-Original-Authentication-Results: smtp2.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=KNof7CwC
Subject: [Intel-wired-lan] [PATCH iwl v1 1/5] igc: Fix marking some
 timestamps as skipped wrongly
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
Cc: vladimir.oltean@nxp.com, kurt@linutronix.de, anthony.l.nguyen@intel.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

If a packet was internally forwarded to a igc managed NIC, and it had
the SKBTX_HW_TSTAMP flag set, the driver would mark that timestamp as
skipped.

In reality, that timestamp was "not for us", as TX timestamp could
never be enabled in the NIC.

Fixes: 2c344ae24501 ("igc: Add support for TX timestamping")
Suggested-by: Vladimir Oltean <vladimir.oltean@nxp.com>
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 1c4676882082..0d029041a102 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -1578,13 +1578,13 @@ static netdev_tx_t igc_xmit_frame_ring(struct sk_buff *skb,
 		}
 	}
 
-	if (unlikely(skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
+	if (unlikely(adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
+		     skb_shinfo(skb)->tx_flags & SKBTX_HW_TSTAMP)) {
 		/* FIXME: add support for retrieving timestamps from
 		 * the other timer registers before skipping the
 		 * timestamping request.
 		 */
-		if (adapter->tstamp_config.tx_type == HWTSTAMP_TX_ON &&
-		    !test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
+		if (!test_and_set_bit_lock(__IGC_PTP_TX_IN_PROGRESS,
 					   &adapter->state)) {
 			skb_shinfo(skb)->tx_flags |= SKBTX_IN_PROGRESS;
 			tx_flags |= IGC_TX_FLAGS_TSTAMP;
-- 
2.40.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
