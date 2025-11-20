Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
	by mail.lfdr.de (Postfix) with ESMTPS id C7C95C762D2
	for <lists+intel-wired-lan@lfdr.de>; Thu, 20 Nov 2025 21:21:23 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 8001A41DB1;
	Thu, 20 Nov 2025 20:21:22 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id oOGodN5rbc9O; Thu, 20 Nov 2025 20:21:22 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org F264141DF2
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1763670082;
	bh=MTioWBkKDyquIUy9yaMuKHwSmadGbawipSTlJ1d5k7A=;
	h=From:Date:References:In-Reply-To:To:Cc:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=p8skg8QPkRwBr2DjRzu1Ex0CUISqgtTaTuL1kudpymnpctNjjdr9C4IjKsgTM0d+8
	 xQYkRIAhHadLK9UXeEo5nvHRWa/msc4VbneRJUKWjUEi+KnAe/CKSBZ9330RffLxPe
	 8K40gM7D/91IhD5OKcyyr05D/cKx64UlU/FjXZfFpQlJlqQUh5/i+KDkdxt7oxHacQ
	 i2xal+/A3b68Pu5y+8+QxCbKf5j598p0plZvmZfHpO5c8hRImLMlL85VUT3E/rlztL
	 RnvYUKpr7PEPgIJDXsE8OlCr7byVLpK7c3uJ9PrAbbHBPLXd5wQpkN+/Cii8NbqJH8
	 3FrnvVhHvNylA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id F264141DF2;
	Thu, 20 Nov 2025 20:21:21 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id A0A44158
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:21:20 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 9E0AD41DB9
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:21:20 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id RSxEc_naboXZ for <intel-wired-lan@lists.osuosl.org>;
 Thu, 20 Nov 2025 20:21:19 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.21;
 helo=mgamail.intel.com; envelope-from=jacob.e.keller@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org 9EF0C41D7C
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 9EF0C41D7C
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.21])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 9EF0C41D7C
 for <intel-wired-lan@lists.osuosl.org>; Thu, 20 Nov 2025 20:21:19 +0000 (UTC)
X-CSE-ConnectionGUID: uZMO/LltQRGkI33+NXw2oQ==
X-CSE-MsgGUID: U64E/m4TRIe/PLQeHL92JA==
X-IronPort-AV: E=McAfee;i="6800,10657,11619"; a="65688931"
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="65688931"
Received: from fmviesa001.fm.intel.com ([10.60.135.141])
 by orvoesa113.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 12:21:16 -0800
X-CSE-ConnectionGUID: GADPbF3QQtK8jOnM+85ovA==
X-CSE-MsgGUID: bOp1tRhJRYSk1OJuJh7lTA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.20,213,1758610800"; d="scan'208";a="222419693"
Received: from orcnseosdtjek.jf.intel.com (HELO [10.166.28.90])
 ([10.166.28.90])
 by smtpauth.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Nov 2025 12:21:11 -0800
From: Jacob Keller <jacob.e.keller@intel.com>
Date: Thu, 20 Nov 2025 12:20:41 -0800
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20251120-jk-refactor-queue-stats-v4-1-6e8b0cea75cc@intel.com>
References: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
In-Reply-To: <20251120-jk-refactor-queue-stats-v4-0-6e8b0cea75cc@intel.com>
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
 bh=QZXlHpYH5voD/+Ke49KI0FXvZ/9bAA/7qfaoDA6BEdo=;
 b=owGbwMvMwCWWNS3WLp9f4wXjabUkhkz5CpMIHUFvtXp9/zqz1ys+L5GyPjZNWbQ/Vkh3eZFe7
 b3jSrM6SlkYxLgYZMUUWRQcQlZeN54QpvXGWQ5mDisTyBAGLk4BmMhHbUaGR5N+ffG4r3PSNsH3
 eqGV7/ylC15JnMu9tMb1TkepsaSDJyPD8mtcclfPbudWsxZQ9ShmlPh6IpLN41pz5ZddjtePfL3
 DDAA=
X-Developer-Key: i=jacob.e.keller@intel.com; a=openpgp;
 fpr=204054A9D73390562AEC431E6A965D3E6F0F28E8
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1763670080; x=1795206080;
 h=from:date:subject:mime-version:content-transfer-encoding:
 message-id:references:in-reply-to:to:cc;
 bh=QZXlHpYH5voD/+Ke49KI0FXvZ/9bAA/7qfaoDA6BEdo=;
 b=nCa2LFG9YmlhoZSWrvi7G/wRAi8kivU2VSpDbENehG4aC/YBR2lBwUxk
 lp3Yj+7kAvsOIKfvafrBHZ+3CUIHyGDYzSqUuVLL4IQDNcsbmh5e6ae8a
 BA/TkB3cIPgVa4Fz+PhkbrEVoxJcrwkAUw5Z2pRe/HCg1bTYW9a2BJaBO
 88evfQDYdb5kattzamsmesHO3CZMV52S7fSb4z5AoIE8xaE4Q0p/RFOfS
 uodPA5GUD3POy/wSyH6dMdSOK/XIFJHvv2MnacImiixRUljJhl7rDr/M0
 0JxHXtkP0WCWJlMkIVOBOv7fz7BWCnpeQnLwml8SB8EU8a5XZp9M7AGzM
 A==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=nCa2LFG9
Subject: [Intel-wired-lan] [PATCH iwl-next v4 1/6] ice: initialize
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
index 44f3c2bab308..116a4f4ef91d 100644
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

