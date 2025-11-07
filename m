Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
	by mail.lfdr.de (Postfix) with ESMTPS id 0891DC41F4B
	for <lists+intel-wired-lan@lfdr.de>; Sat, 08 Nov 2025 00:32:30 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id 3E456606E9;
	Fri,  7 Nov 2025 23:32:28 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id MfNzXUxggxSK; Fri,  7 Nov 2025 23:32:26 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org B393D606E5
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762558346;
	bh=dcr4lnVR1zV8YLc1Gz228alR1aiZ2ZxFidDCMGVFlq8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=N0kG+XqA9enjwGgnefFfdv8ifeAMTeZgm/5ZN+ed6yy4D3Q3miZlPV/qPc5NNCGjR
	 TqXVqRnJMhvXchME7006erDpOfz2xA402hh6Q1mfNO/i2fKxPRQ8gM5K2VDxp60N5J
	 8G5hBvbRs8ynMKb2L37XQjQFiKzG4taFwV7k7QCxhlUgi4gZUZ44wizSA+HqKx33MU
	 ZQeRetExTkvYHklWzvgf70bWeIaugLbHLdaMaZ60NVnj++pKj2Y2uQMAHV6d8BOywr
	 /woPMl8/jzjiwv2hcooqkosKf6R95UyMlCIsz/l9ZHcYk3gQQGiFd43LHSt8Q3hIEw
	 tZXFJPWwJBWVQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp3.osuosl.org (Postfix) with ESMTP id B393D606E5;
	Fri,  7 Nov 2025 23:32:26 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id DE7061CD
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C52B080EB3
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id sV7_MeQp2uXq for <intel-wired-lan@lists.osuosl.org>;
 Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.17;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org 15F6680EB0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 15F6680EB0
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.17])
 by smtp1.osuosl.org (Postfix) with ESMTPS id 15F6680EB0
 for <intel-wired-lan@lists.osuosl.org>; Fri,  7 Nov 2025 23:32:22 +0000 (UTC)
X-CSE-ConnectionGUID: PHLH6JFpTqyj1vx0p20q1Q==
X-CSE-MsgGUID: 83LuDtc3T7uhnqSYuC5r1w==
X-IronPort-AV: E=McAfee;i="6800,10657,11606"; a="64628776"
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="64628776"
Received: from orviesa002.jf.intel.com ([10.64.159.142])
 by fmvoesa111.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:19 -0800
X-CSE-ConnectionGUID: zV1LiB4hSBCejp5xmwyB0Q==
X-CSE-MsgGUID: HlTWaxukQUSQj8w29NsdPg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,288,1754982000"; d="scan'208";a="218815416"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa002-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 07 Nov 2025 15:32:20 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Fri, 07 Nov 2025 15:31:45 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251107-jk-refactor-queue-stats-v3-1-771ae1414b2e@intel.com>
References: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
In-Reply-To: <20251107-jk-refactor-queue-stats-v3-0-771ae1414b2e@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: Simon Horman <horms@kernel.org>, intel-wired-lan@lists.osuosl.org, 
 netdev@vger.kernel.org, Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=1378;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=BMVpGA3Y2sen2yYUHz0R0DzPuU/EERBPL57N+aE9sQo=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhky+xob7BjcOd1tbX7MWnNTz7udcfvf32xKPro2Yrf3nP
 KPbKs34jlIWBjEuBlkxRRYFh5CV140nhGm9cZaDmcPKBDKEgYtTACby+jnDP2P9s+WbReKuaBt+
 beqzWD3xo6nzw4iURcvLRaSdxE4JL2D475jywDsqS1vm5sf77KF+53Pu3Mz5z3DombHlROn9Re+
 nMQMA
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762558342; x=1794094342;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=BMVpGA3Y2sen2yYUHz0R0DzPuU/EERBPL57N+aE9sQo=;
 b=kU/+CXWS1jwTKtNlbx0n5T8Rgk247RAP5KK1xYSX4IlSvG0Om4F6D576
 7ehQd0idwAJzutu6zvlG9iruLmjdMdmzHpl8IM6df7O4c+sdbvRLs1cLF
 3W2zDifwCpC/89cR3/rFre5WwumfriqvtPiFPe6qLIZDRmtfRqALuLDR/
 Yt2cx9DhKkT3mns0c8HKJWlUQltychtOJdw/alLqM2YRCtl+YMb1PehR4
 SQwRNBj94V+zPJFsZd+5WHpWhcqt/Y4RJnGCBixI+NUBa2iwO879JCTHq
 eKvr9dMWzhMMMMiW6iaEUn5hP+1snQS7ILfBwpppnNuFF9v0YWE4sEXVc
 A==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key,
 unprotected) header.d=intel.com header.i=@intel.com header.a=rsa-sha256
 header.s=Intel header.b=kU/+CXWS
Subject: [Intel-wired-lan] [PATCH iwl-next v3 1/9] ice: initialize
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
Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Signed-off-by: Jacob Keller <jacob.e.keller@intel.com>
---
 drivers/net/ethernet/intel/ice/ice_lib.c | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/drivers/net/ethernet/intel/ice/ice_lib.c b/drivers/net/ethernet/intel/ice/ice_lib.c
index e366d089bef9..46cd8f33c38f 100644
--- a/drivers/net/ethernet/intel/ice/ice_lib.c
+++ b/drivers/net/ethernet/intel/ice/ice_lib.c
@@ -400,7 +400,10 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
 			if (!ring_stats)
 				goto err_out;
 
+			u64_stats_init(&ring_stats->syncp);
+
 			WRITE_ONCE(tx_ring_stats[i], ring_stats);
+
 		}
 
 		ring->ring_stats = ring_stats;
@@ -419,6 +422,8 @@ static int ice_vsi_alloc_ring_stats(struct ice_vsi *vsi)
 			if (!ring_stats)
 				goto err_out;
 
+			u64_stats_init(&ring_stats->syncp);
+
 			WRITE_ONCE(rx_ring_stats[i], ring_stats);
 		}
 

-- 
2.51.0.rc1.197.g6d975e95c9d7

