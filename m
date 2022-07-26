Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 20BB0581C88
	for <lists+intel-wired-lan@lfdr.de>; Wed, 27 Jul 2022 01:44:26 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id A774940941;
	Tue, 26 Jul 2022 23:44:24 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A774940941
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658879064;
	bh=lT+TuTtB20LrU5HPUD324/6Hn3pHIrq6a/7PkNy6+Tk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=QqM8taXRPZVPSKLhRb1JvCqRuAHyVkyY9VGFULREx9EP556hv5Zxv7+usHiN1we2j
	 YG4FJqOYZxxvyJ0mdqqrUtvaGKgkxcEVo9CmMulP7qGP6DiputO3UVM74OKAZ6qCh3
	 HNODC7QFxbI0RRF6oOERUhHlRTgUTW/gvORtAxV8/iSkFQ8cGOBjzjpN0HOmFANack
	 UptBNnKzCk7oBDiWVXvJpuSgH0pGu4fyf+NpjxzvleHc3aB/pUT0pthy6EqJBOgTTq
	 e18BzULBW5tT5MwP/gTfdc96vSbFQ1bcPWAJonClxqJLhjmLasq2PAGu0ByPAskgUo
	 49ooMpp1dHDjw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id ZFQq8LDF9ELD; Tue, 26 Jul 2022 23:44:23 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4BD5840347;
	Tue, 26 Jul 2022 23:44:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4BD5840347
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id B295E1BF2CF
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:13 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 8C638408DE
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:13 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8C638408DE
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id yEIGzHVLW7US for <intel-wired-lan@lists.osuosl.org>;
 Tue, 26 Jul 2022 23:44:12 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 93CC240347
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 93CC240347
 for <intel-wired-lan@lists.osuosl.org>; Tue, 26 Jul 2022 23:44:12 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10420"; a="313873680"
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="313873680"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by fmsmga101.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 16:44:09 -0700
X-IronPort-AV: E=Sophos;i="5.93,194,1654585200"; d="scan'208";a="689649892"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga003-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 26 Jul 2022 16:44:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Tue, 26 Jul 2022 16:43:53 -0700
Message-Id: <20220726234357.50610-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
In-Reply-To: <20220726234357.50610-1-jacob.e.keller@intel.com>
References: <20220726234357.50610-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658879052; x=1690415052;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wjNXJ9Vwsf2Ddmv2y6GXFiQSVQtJK/Dcel90wrbUfwE=;
 b=lFEuJXmstY2Z5IL1PPUOuUfcHrAq0tSlRqdRlvaG1wSa2YCYo1xhnNm6
 L1KofMzxE15R9F0vLrtqc2VdCVsr8eUXj/kVosSErRErcxbWah9K5g+Vj
 KqUjDRHk+DNJbmvtoUPaFF0539mNHNpFwcYuMaUQu1RoRDMhe7GUSkzwm
 ZN6Rq5ctSJAE7Eyxsnz/3EIvomab42ZaZUYahOhsRLlC4Sa8Y5T69W8xg
 VJHVpd1dDerJNwUYPdO2y116IEhVs2hnd+MKZG9Y8pGOEDpIgUCyvz2eB
 whg8TEjHETTzVhgE0zYZ8mSp9gIw07VjH0c0PNWwT9B/uhUbw+E1GSWgM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=lFEuJXms
Subject: [Intel-wired-lan] [net-next 2/6] ice: initialize cached_phctime
 when creating Rx rings
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

When we create new Rx rings, the cached_phctime field is zero initialized.
This could result in incorrect timestamp reporting due to the cached value
not yet being updated. Although a background task will periodically update
the cached value, ensure it matches the existing cached value in the PF
structure at ring initialization.

Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 1 +
 drivers/net/ethernet/intel/ice/ice_lib.c     | 1 +
 2 files changed, 2 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index bea87c5acd26..ca5a38651220 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -2882,6 +2882,7 @@ ice_set_ringparam(struct net_device *netdev, struct ethtool_ringparam *ring,
 		/* clone ring and setup updated count */
 		rx_rings[i] = *vsi->rx_rings[i];
 		rx_rings[i].count = new_rx_cnt;
+		rx_rings[i].cached_phctime = pf->ptp.cached_phc_time;
 		rx_rings[i].desc = NULL;
 		rx_rings[i].rx_buf = NULL;
 		/* this is to allow wr32 to have something to write to
diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index 419ffdbac282..44c3d82e8da5 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -1522,6 +1522,7 @@ static int ice_vsi_alloc_rings(struct ice_vsi *vsi)
 		ring->netdev = vsi->netdev;
 		ring->dev = dev;
 		ring->count = vsi->num_rx_desc;
+		ring->cached_phctime = pf->ptp.cached_phc_time;
 		WRITE_ONCE(vsi->rx_rings[i], ring);
 	}
 
-- 
2.37.1.208.ge72d93e88cb2

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
