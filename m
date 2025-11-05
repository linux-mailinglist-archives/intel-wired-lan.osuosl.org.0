Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [140.211.166.138])
	by mail.lfdr.de (Postfix) with ESMTPS id DE91FC37DA4
	for <lists+intel-wired-lan@lfdr.de>; Wed, 05 Nov 2025 22:07:18 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 8259684590;
	Wed,  5 Nov 2025 21:07:17 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id fJDud7zcndLb; Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org B038E84589
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1762376835;
	bh=dcr4lnVR1zV8YLc1Gz228alR1aiZ2ZxFidDCMGVFlq8=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=lgFl9Iwx2adQ/zeR6ol2BetbwMLuYupJ4giKpfAdf7q78xM90zY84FbGsyJqPd67P
	 yJz6Ok0+hJsJQtXe7UXnjRF9BC3LsrjiXm+4j2XIEYAGblXzHrK5aJGvKmYPp95KkD
	 8MA+i7VBjWclBLXGiWTX2QRHcZ5+p4K6Ndk4dWiyjBgqK6zCL9TzzQ1FRQ/npr5Pw4
	 l6DUUqv/3Prc2pJTaBiD61zaqCn1MajOthuFZoQiHuDQI1RDdUMYvpXGLBsimIH7Dd
	 vQw60dHhdWtNugSo6Av154cKY33HDNIuGFrEsgoUpOgUYqpqF+JBD8BBL7fDDVxtfN
	 oIwCkDZsLyQKQ==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id B038E84589;
	Wed,  5 Nov 2025 21:07:15 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 5A763462
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 4C18041235
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:14 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id kFB70qum59bj for <intel-wired-lan@lists.osuosl.org>;
 Wed,  5 Nov 2025 21:07:13 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=192.198.163.11;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org B8C374119F
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org B8C374119F
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.11])
 by smtp4.osuosl.org (Postfix) with ESMTPS id B8C374119F
 for <intel-wired-lan@lists.osuosl.org>; Wed,  5 Nov 2025 21:07:13 +0000 (UTC)
X-CSE-ConnectionGUID: 7pvgoQ34TwaGo7/Qx2TOeQ==
X-CSE-MsgGUID: vtABh/1wQXKu5d/qPK1b8g==
X-IronPort-AV: E=McAfee;i="6800,10657,11604"; a="75114372"
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="75114372"
Received: from orviesa007.jf.intel.com ([10.64.159.147])
 by fmvoesa105.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
X-CSE-ConnectionGUID: EzZLez45RNWq33/fItWRBQ==
X-CSE-MsgGUID: 0KmFzqn+TX+Kf+3kvbgX/A==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.19,282,1754982000"; d="scan'208";a="187513281"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by orviesa007-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Nov 2025 13:07:13 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Wed, 05 Nov 2025 13:06:33 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251105-jk-refactor-queue-stats-v2-1-8652557f9572@intel.com>
References: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
In-Reply-To: <20251105-jk-refactor-queue-stats-v2-0-8652557f9572@intel.com>
To: Aleksandr Loktionov <aleksandr.loktionov@intel.com>, 
 Alexander Lobakin <aleksander.lobakin@intel.com>, 
 Tony Nguyen <anthony.l.nguyen@intel.com>, 
 Przemek Kitszel <przemyslaw.kitszel@intel.com>
Cc: intel-wired-lan@lists.osuosl.org, netdev@vger.kernel.org, 
 Jacob Keller <jacob.e.keller@intel.com>, 
 Aleksandr Loktionov <aleksandr.loktionov@intel.com>
X-Mailer: b4 0.15-dev-f4b34
X-Developer-Signature: v=1; a=openpgp-sha256; l=1378;
 i=jacob.e.keller@intel.com; h=from:subject:message-id;
 bh=BMVpGA3Y2sen2yYUHz0R0DzPuU/EERBPL57N+aE9sQo=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkzuPXVHD63OnVLH2RwYy8g3s2kd/0mLKYmTOZRPLTlhv
 9w1L7qmo5SFQYyLQVZMkUXBIWTldeMJYVpvnOVg5rAygQxh4OIUgIlcncnI0B7cJ3p3nqze1dKH
 PXtrFWXCp/q1mibouyxo1cqc8aafi+F/3o9VVadFfre/2nHmVL+Fodb3o28/MkaItz44GO6+RKW
 EFwA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1762376834; x=1793912834;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=BMVpGA3Y2sen2yYUHz0R0DzPuU/EERBPL57N+aE9sQo=;
 b=Z3DFRuqLVtTUNb81HgLzLefqLfNtyLAvvKOMZ1uYuAR28DX3YsDRx3ia
 iwDLfkN8lt0Jk241h/1Mx1ydw9gx9vcv824WOs6l9SeUwaRH45P/FdHUd
 V0OhSR7kftn+jw/WkKOOFph+sursIA3u/WSFvpPGeQJ2QIwAv/mDrErgl
 fnhdktpLmz0UyoioZP5BcG5irc3p8MBnYshG+/mAR2rZ+0tep6+O08sFE
 sL7YgPfaJITx1KMJn5KOmYkNGgxUnIJAEf4w4I2qoEZcG934OpFgM5425
 B9m/yaF0rBPJ6ZO4Dh8rNqyY4QViI4tDFocQwAltB4z1VGP1BmwmmO/Bn
 g==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Z3DFRuqL
Subject: [Intel-wired-lan] [PATCH iwl-next v2 1/9] ice: initialize
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

