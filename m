Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
	by mail.lfdr.de (Postfix) with ESMTPS id 569C59BB44F
	for <lists+intel-wired-lan@lfdr.de>; Mon,  4 Nov 2024 13:13:52 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp4.osuosl.org (Postfix) with ESMTP id 580D5404A8;
	Mon,  4 Nov 2024 12:13:50 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id g0yQv3tQR-ct; Mon,  4 Nov 2024 12:13:49 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 7D1644047E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1730722429;
	bh=ysrioaKZnUen9QZj+p0f6qK0mCl1EQIFlrHkoEZFw/w=;
	h=From:To:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 Cc:From;
	b=JbIdA6hWm28ec5/3vgPFI+eU2J5/2qdL7bRms4jMEu6wjZH4f9ImW1i4mlO7LKkSr
	 Gli5nB0OQf609xwet3ukVMjo6Gj114GsCjHkWGhNb0xfYz2F5lWp1KBVxC8r22PDNh
	 ABTovvrMqCX90a0EUxQxECLs+zwRHY5CvpfIudI0SSNxG2YZDseTiFmmCmGzFhiqNL
	 JErxjWFmlLOAXW0nYCoYAbXRyV/GxY/8ZTwbb4swGc3TC5F88nP+pWVccNpllRTEXW
	 X1HZM67xMNamXxzvM9pXS9xpoXwo2YEJ7XEw4VNqJyoNbZmuMKWyPmxAhFkM/WiwRN
	 PxOWpCe1lqw0A==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp4.osuosl.org (Postfix) with ESMTP id 7D1644047E;
	Mon,  4 Nov 2024 12:13:49 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [IPv6:2605:bc80:3010::137])
 by lists1.osuosl.org (Postfix) with ESMTP id 352B4723
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:13:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 144AD404AA
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:13:47 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id KAtzmr6HchKM for <intel-wired-lan@lists.osuosl.org>;
 Mon,  4 Nov 2024 12:13:45 +0000 (UTC)
Received-SPF: None (mailfrom) identity=mailfrom; client-ip=192.198.163.18;
 helo=mgamail.intel.com; envelope-from=michal.swiatkowski@linux.intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp4.osuosl.org A506040401
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org A506040401
Received: from mgamail.intel.com (mgamail.intel.com [192.198.163.18])
 by smtp4.osuosl.org (Postfix) with ESMTPS id A506040401
 for <intel-wired-lan@lists.osuosl.org>; Mon,  4 Nov 2024 12:13:45 +0000 (UTC)
X-CSE-ConnectionGUID: bX+/i7+xSKK+uKp3xSObyw==
X-CSE-MsgGUID: qzTJa/UWQZi8WdsXp1dTWA==
X-IronPort-AV: E=McAfee;i="6700,10204,11245"; a="29843662"
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="29843662"
Received: from orviesa009.jf.intel.com ([10.64.159.149])
 by fmvoesa112.fm.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 04 Nov 2024 04:13:45 -0800
X-CSE-ConnectionGUID: 6C5qUKgqQlinVQe0RSieDA==
X-CSE-MsgGUID: NaBPZE3wSaCE6Ans75k+PA==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.11,257,1725346800"; d="scan'208";a="83525756"
Received: from gk3153-dr2-r750-36946.igk.intel.com ([10.102.20.192])
 by orviesa009.jf.intel.com with ESMTP; 04 Nov 2024 04:13:42 -0800
From: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Mon,  4 Nov 2024 13:13:29 +0100
Message-ID: <20241104121337.129287-2-michal.swiatkowski@linux.intel.com>
X-Mailer: git-send-email 2.42.0
In-Reply-To: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
References: <20241104121337.129287-1-michal.swiatkowski@linux.intel.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1730722426; x=1762258426;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=zlw6JJTyL7eFVV8Q68C41gOu/Qvl3bUUkm8lnRit7aA=;
 b=K57CU/8XExzXKSZIzUadnc6tN34D2g7khdbJeBpXNwTBC/0YBKBGM3oN
 uXP7H2Bx0unnXsou4GgOBJxlb8Z5hBRxS1M0Jbbqc2lZkNY2NFjWeG+Tx
 96xq4xTxJlh//VEInh4kzgFDiU90+cK16CKNWdequn1rryYa63i5kVU4B
 3pOwsGMfZbijuSWBHDQHd/E351r3FhVMwTBSlMv3FGRdWWOZOkAwmkgW9
 v9GXoybqB5WxwV6UiKKH4QcDq+f3gvrvtbH+A8EpLS9IgsshkGpGziPDp
 kVJSENgLzTi0+Q277j1g6B5nO+52ZuYpPZwo2b4TQazppkL5m2PAF2tpp
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dmarc=none (p=none dis=none)
 header.from=linux.intel.com
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=K57CU/8X
Subject: [Intel-wired-lan] [iwl-next v7 1/9] ice: count combined queues
 using Rx/Tx count
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
Cc: pmenzel@molgen.mpg.de, wojciech.drewek@intel.com, marcin.szycik@intel.com,
 netdev@vger.kernel.org, konrad.knitter@intel.com, pawel.chmielewski@intel.com,
 horms@kernel.org, David.Laight@ACULAB.COM, nex.sw.ncis.nat.hpm.dev@intel.com,
 pio.raczynski@gmail.com, sridhar.samudrala@intel.com, jacob.e.keller@intel.com,
 jiri@resnulli.us, przemyslaw.kitszel@intel.com
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Previous implementation assumes that there is 1:1 matching between
vectors and queues. It isn't always true.

Get minimum value from Rx/Tx queues to determine combined queues number.

Reviewed-by: Jacob Keller <jacob.e.keller@intel.com>
Signed-off-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
---
 drivers/net/ethernet/intel/ice/ice_ethtool.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_ethtool.c b/drivers/net/ethernet/intel/ice/ice_ethtool.c
index b552439fc1f9..c2f53946f1c3 100644
--- a/drivers/net/ethernet/intel/ice/ice_ethtool.c
+++ b/drivers/net/ethernet/intel/ice/ice_ethtool.c
@@ -3818,8 +3818,7 @@ static u32 ice_get_combined_cnt(struct ice_vsi *vsi)
 	ice_for_each_q_vector(vsi, q_idx) {
 		struct ice_q_vector *q_vector = vsi->q_vectors[q_idx];
 
-		if (q_vector->rx.rx_ring && q_vector->tx.tx_ring)
-			combined++;
+		combined += min(q_vector->num_ring_tx, q_vector->num_ring_rx);
 	}
 
 	return combined;
-- 
2.42.0

