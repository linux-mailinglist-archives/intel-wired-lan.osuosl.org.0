Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 7EBE5583590
	for <lists+intel-wired-lan@lfdr.de>; Thu, 28 Jul 2022 01:16:46 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 4898A41704;
	Wed, 27 Jul 2022 23:16:44 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 4898A41704
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1658963804;
	bh=lT+TuTtB20LrU5HPUD324/6Hn3pHIrq6a/7PkNy6+Tk=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7E7tHlWVmhhUPuoadqCvWneOpqTWLSQExIqKXRdbDQL1EBbIoCewgD8VzXOik4Sfg
	 A26xVNZZ2L0lzwW4ARNOoYyAXMUVNpoWeYrthbZIh4SQrpb2EBCSpYzTom7zzT4wfU
	 QoE8/QPG0ErLLHTjQCbWgURrqD1IX4shghOmBQaV+m2kGXW5KhnU3i6nkFGE62g47w
	 BWqmMdmmdDesjHd7jUNCQmJtcAU3Hi7EkYkGflJRmzCvGJ7ICE3V9YfmAHx3wRXra/
	 C8SmdzFfM9F14Jawz1C16hY7YC7royEADHh64f7okQ6zjZmDRmUJVDuoFdbKuHx8hv
	 zB7TYsRfp9pdw==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
	by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id sj-12npo9-Id; Wed, 27 Jul 2022 23:16:43 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp4.osuosl.org (Postfix) with ESMTP id 2E3F7416F5;
	Wed, 27 Jul 2022 23:16:43 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 2E3F7416F5
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 4009F1BF42D
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:25 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 52EB2416E9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:23 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 52EB2416E9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Nn6XEDSgEE3Q for <intel-wired-lan@lists.osuosl.org>;
 Wed, 27 Jul 2022 23:16:19 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org BE7A9415C9
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
 by smtp4.osuosl.org (Postfix) with ESMTPS id BE7A9415C9
 for <intel-wired-lan@lists.osuosl.org>; Wed, 27 Jul 2022 23:16:19 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6400,9594,10421"; a="288382450"
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="288382450"
Received: from fmsmga006.fm.intel.com ([10.253.24.20])
 by fmsmga103.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:10 -0700
X-IronPort-AV: E=Sophos;i="5.93,196,1654585200"; d="scan'208";a="846448004"
Received: from jekeller-desk.amr.corp.intel.com (HELO
 jekeller-desk.jekeller.internal) ([10.166.241.7])
 by fmsmga006-auth.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 27 Jul 2022 16:16:09 -0700
From: Jacob Keller <jacob.e.keller@intel.com>
To: Intel Wired LAN <intel-wired-lan@lists.osuosl.org>
Date: Wed, 27 Jul 2022 16:15:58 -0700
Message-Id: <20220727231602.1625980-3-jacob.e.keller@intel.com>
X-Mailer: git-send-email 2.37.1.208.ge72d93e88cb2
In-Reply-To: <20220727231602.1625980-1-jacob.e.keller@intel.com>
References: <20220727231602.1625980-1-jacob.e.keller@intel.com>
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1658963779; x=1690499779;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=wjNXJ9Vwsf2Ddmv2y6GXFiQSVQtJK/Dcel90wrbUfwE=;
 b=GQbphtXd95Q2CbMQN3fRvZ99B67QTIm7jFtWhEr22kywxZU1ReALR6+e
 gBF3AknpBg+Zas6aymsmNno/Srx5qPagcf+ABgc6hAiAoHWNmXYJHrIu9
 H9imfqlAPjsvlBOX0A7Eo1aHKoPGRazRu4b4NsK70wJw9HUy1dSZjsZ2U
 HW3OdL7Y8mPeTYc5RVNm0Di9SkPS7liuxplFC+zDVzCyqsWE9fYusI+7A
 KGMVMfB7Vu7coTAJArF0Vb5JDuwJyOx6Mfb4vfGy6pdjw4skguu7FHs7o
 TecRTDb+dr8WBi2sga3vKr8QifNKnlvUtoGcoVDCBGdY25regm4ae3D6P
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=GQbphtXd
Subject: [Intel-wired-lan] [net-next v2 2/6] ice: initialize cached_phctime
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
