Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id 776B4C2EB09
	for <lists+intel-wired-lan@lfdr.de>; Tue, 04 Nov 2025 02:07:25 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id AC6174070F;
	Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id lAIXGW-Y76HQ; Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 3434540439
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762218443;
	bh=AGlnVSWBpvOffCinglJTe5mt/ufuir4ires3M6wES/w=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=q9XIgi6FfVMgovmcCFCUBL+VBxjhHpWcB3bh9CnTZriLsiDTUYgjyVBvdZB9aB50G
	 R+YYIrVLOaNaSf8Y7MVteNtRzb0GaFmcUdl8M2AdV51KESHb+4jeuedspDA6RIyJEB
	 784e8IT03PDyszQPSXFOxSpT0juPUzGliNVJM1hdQ4W9/58/wOgQ37e7N6kp1KkMny
	 UKPI6xLrfXpenyR6j44Vc0lHoOH6gF6Ss1oNeC37Ao2+l1xaZafLoIGvlyyiHru6aN
	 uc6DhXn6vR76KKMDSrB/07Fv2ffszbTK//1ijsrNUSjq50qMYgOcnpqwHTwfznHTdy
	 1dUUy4Rj5Qrrw==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 3434540439;
	Tue,  4 Nov 2025 01:07:23 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id F0EFC222
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id E325E403C1
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id QM3UsIa3RudF for <intel-wired-lan@lists.osuosl.org>;
 Tue,  4 Nov 2025 01:07:21 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.19;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 04A2040361
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 04A2040361
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.19])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 04A2040361
 for <intel-wired-lan@lists.osuosl.org>; Tue,  4 Nov 2025 01:07:20 +0000 (UTC)
X-CSE-ConnectionGUID: WIly+uzBQbWR23n5qswERw==
X-CSE-MsgGUID: Vrsc0TERTAmTVU/iXjwAHw==
X-IronPort-AV: E=McAfee;i="6800,10657,11602"; a="64190636"
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="64190636"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa111.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:18 -0800
X-CSE-ConnectionGUID: m/aHYovERleg59XGjwdrWA==
X-CSE-MsgGUID: 3XBi+V4pTsuMIQnfvUSlHw==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,277,1754982000"; d="scan'208";a="217828752"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 03 Nov 2025 17:07:15 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Mon, 03 Nov 2025 17:06:46 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251103-jk-refactor-queue-stats-v1-1-164d2ed859b6@intel.com>
References: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
In-Reply-To: <20251103-jk-refactor-queue-stats-v1-0-164d2ed859b6@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=1312;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=sMqd4Rn5l7ALgH1SAW9CMNd5nCCrcLFQbpHnvsaYy2c=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzOwAM3u4/+PnpYkOfuI6bYSXtkDihrrM4PEpygyaP01
 WaGpPz8jlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACay7CsjQ7P5k2m35gQf/Lv4
 Uec0mQ9HCkU93pmVZ2/XFpl/I/LEB0mGf2oPM1c/m/7Q3nGJc5W3V/K1fWdDrbnD8iM5VXZcEt1
 QyQAA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762218441; x=1793754441;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=sMqd4Rn5l7ALgH1SAW9CMNd5nCCrcLFQbpHnvsaYy2c=;
 b=GFjiBq1Cnmw8HbMBgCzNO+/8Cj2vva+c58c4mr+HUYnso2GnN7z32tq5
 gPPaFpgwK9+bXpeBaG0qgme+gVVySzZUDTI8Jkow9E7TVaE2dOqQp1KPX
 erccylunEu6+5bgcII1u5bQfreFBcQ4p/UPjwCHnBz/fR/z8F1ad6Uyq9
 fpIpjc3WmCQXMlAjpbX5BFmAPN6uoh61vNc2kzTK8c+3VOZdje9xcnPIv
 jBYFs8a3meea+s61V4SAC1DOrpKX2efVf1ri6jzo2w/8d5RtrlHtlUsUX
 5m2z+lqr0ZxegT09481RAy4E9tcR6a0skswhJvvMEfgF61pRwy3o3By4V
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=GFjiBq1C
Subject: [Intel-wired-lan] [PATCH iwl-next 1/9] ice: initialize
 ring_stats->syncp
X-BeenThere: intel-wired-lan@osuosl.org
X-Mailman-Version: 2.1.30
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
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

The u64_stats_sync structure is empty on 64-bit systems. However, on 32-bit
systems it contains a seqcount_t which needs to be initialized. While the
memory is zero-initialized, a lack of u64_stats_init means that lockdep
won't get initialized properly. Fix this by adding u64_stats_init() calls
to the rings just after allocation.

Fixes: 2b245cb29421 ("ice: Implement transmit and NAPI support")
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index bac481e8140d..e7265e877703 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -398,7 +398,10 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
 			if (!ring_stats)
 				goto err_out;
 
+			u64_stats_init(&ring_stats->syncp);
+
 			WRITE_ONCE(tx_ring_stats[i], ring_stats);
+
 		}
 
 		ring->ring_stats = ring_stats;
@@ -417,6 +420,8 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
 			if (!ring_stats)
 				goto err_out;
 
+			u64_stats_init(&ring_stats->syncp);
+
 			WRITE_ONCE(rx_ring_stats[i], ring_stats);
 		}
 

-- 
2.51.0.rc1.197.g6d975e95c9d7

