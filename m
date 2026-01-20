Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 5B57CD3C5B4
	for <lists+intel-wired-lan@lfdr.de>; Tue, 20 Jan 2026 11:42:00 +0100 (CET)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 441DD85866;
	Tue, 20 Jan 2026 10:41:58 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id qW-FEoaUe4ik; Tue, 20 Jan 2026 10:41:57 +0000 (UTC)
X-Comment: SPF check N/A for local connections - client-ip=140.211.166.142; helo=lists1.osuosl.org; envelope-from=intel-wired-lan-bounces@osuosl.org; receiver=<UNKNOWN> 
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 872128587E
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1768905717;
	bh=FfCBYeyD3ot6E/Ec1owPYnA7FSc+OPhsm1lBS+Wajuo=;
	h=From:To:Cc:Date:In-Reply-To:References:Subject:List-Id:
	 List-Unsubscribe:List-Archive:List-Post:List-Help:List-Subscribe:
	 From;
	b=7FYjylHie2RN4VTBEmj2ZeGGfsr+psJXAve6N5Hl0oSoT1d81D+MHYCnKeGjQ7szk
	 NE0rfMLHPpFevhTfM7rBX1g+2kz7mkQXqWhcX+TFASY3R9ZIBQq1f9FZu2ULsYXS6L
	 UizgvS1XAzxvsUZpohy+bM5ECvktEeylcidbwxPkzDcsN29fmem4+T9CgmR21ABAzC
	 EZzSNcpjezRs1zP9yMH4ZnV5mjmBsCqd3JSI80FBQqo9m3kEA7N6tUUk9RKJNojFvc
	 kMKubeyipxKrF1CepwZvorwrCwuLTnecI67ShtTgJdh2TTd3hAIHqYZsIBUUMMJ+hr
	 ECX3LXg21ESTA==
Received: from lists1.osuosl.org (lists1.osuosl.org [140.211.166.142])
	by smtp1.osuosl.org (Postfix) with ESMTP id 872128587E;
	Tue, 20 Jan 2026 10:41:57 +0000 (UTC)
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
 by lists1.osuosl.org (Postfix) with ESMTP id E54492A8
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:55 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp1.osuosl.org (Postfix) with ESMTP id C8E2D85857
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:55 +0000 (UTC)
X-Virus-Scanned: amavis at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
 by localhost (smtp1.osuosl.org [127.0.0.1]) (amavis, port 10024) with ESMTP
 id 8C6t-2n7lAbG for <intel-wired-lan@lists.osuosl.org>;
 Tue, 20 Jan 2026 10:41:55 +0000 (UTC)
Received-SPF: Pass (mailfrom) identity=mailfrom; client-ip=198.175.65.18;
 helo=mgamail.intel.com; envelope-from=jakub.slepecki@intel.com;
 receiver=<UNKNOWN> 
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp1.osuosl.org D50ED85866
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org D50ED85866
Received: from mgamail.intel.com (mgamail.intel.com [198.175.65.18])
 by smtp1.osuosl.org (Postfix) with ESMTPS id D50ED85866
 for <intel-wired-lan@lists.osuosl.org>; Tue, 20 Jan 2026 10:41:54 +0000 (UTC)
X-CSE-ConnectionGUID: okbkGdGLRjSvvKRUpkOFDA==
X-CSE-MsgGUID: 3mZyUwMwTUu3l2FT/5W9zw==
X-IronPort-AV: E=McAfee;i="6800,10657,11676"; a="70161740"
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="70161740"
Received: from fmviesa004.fm.intel.com ([10.60.135.144])
 by orvoesa110.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 20 Jan 2026 02:34:48 -0800
X-CSE-ConnectionGUID: NvYLKDxGQyWBfxmtwkNDqA==
X-CSE-MsgGUID: fapk4ngNSNiiB7Fsj00qqg==
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="6.21,240,1763452800"; d="scan'208";a="210935853"
Received: from hpe-dl385gen10.igk.intel.com ([10.91.240.117])
 by fmviesa004.fm.intel.com with ESMTP; 20 Jan 2026 02:34:47 -0800
From: Jakub Slepecki <jakub.slepecki@intel.com>
To: intel-wired-lan@lists.osuosl.org
Cc: linux-kernel@vger.kernel.org, netdev@vger.kernel.org,
 przemyslaw.kitszel@intel.com, anthony.l.nguyen@intel.com,
 michal.swiatkowski@linux.intel.com, jakub.slepecki@intel.com,
 aleksandr.loktionov@intel.com
Date: Tue, 20 Jan 2026 11:34:34 +0100
Message-ID: <20260120103440.892326-4-jakub.slepecki@intel.com>
X-Mailer: git-send-email 2.43.0
In-Reply-To: <20260120103440.892326-1-jakub.slepecki@intel.com>
References: <20260120103440.892326-1-jakub.slepecki@intel.com>
MIME-Version: 1.0
Organization: Intel Technology Poland sp. z o.o. - ul. Slowackiego 173,
 80-298 Gdansk - KRS 101882 - NIP 957-07-52-316
Content-Transfer-Encoding: 8bit
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1768905715; x=1800441715;
 h=from:to:cc:subject:date:message-id:in-reply-to:
 references:mime-version:content-transfer-encoding;
 bh=aDADJULyrOXAsvln2yMJyhXY1pU5VH5XFxcMbCSZkys=;
 b=j60nBpxm5H3WctSYJEuJHw1Qefc1gh3+uS8tvul6owxxEsnmM8h+cY6a
 BFASor/DOprmpA0rm4gydKb8QiOhk9Ppl/rI82LEPT4qqYIl08Yx+VeMO
 Hr92hEvK18oVdbD5ybmXU8BSruIT5VviFKypXvTe/nR+jBBuSvsxIJxyB
 ef87mS+UYo7rgYy/k5LWC21rUPRIfY45Q6lgITWoEZzyAqXgFspPJGUH3
 9TKOJ/DdpgyF/a1921ynIAAm3yaWWbeey4WGXaiVCoY2R5utLIAPH0CCy
 mc8unrFxwJxWRxofO1FR/dcPpZexoX8usv8scRLFZ6qWJTAruGRyDD9mM
 g==;
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dmarc=pass (p=none dis=none)
 header.from=intel.com
X-Mailman-Original-Authentication-Results: smtp1.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=j60nBpxm
Subject: [Intel-wired-lan] [PATCH iwl-next v3 3/8] ice: do not check for
 zero mac when creating mac filters
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

A zero MAC address was considered a special case while creating a new
MAC filter.  There is no particular reason for that other than the fact
that the union containing it was assumed to be zeroed out.  Now, address
is pulled out of the union by ice_fltr_mac_address which checks all of
the previously assumed zero-address cases and returns an error if they
are hit.

Reviewed-by: Aleksandr Loktionov <aleksandr.loktionov@intel.com>
Reviewed-by: Michal Swiatkowski <michal.swiatkowski@linux.intel.com>
Signed-off-by: Jakub Slepecki <jakub.slepecki@intel.com>

---
No changes in v3.
No changes in v2.
---
 drivers/net/ethernet/intel/ice/ice_switch.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/ice/ice_switch.c b/drivers/net/ethernet/intel/ice/ice_switch.c
index 0275e2910c6b..04e5d653efce 100644
--- a/drivers/net/ethernet/intel/ice/ice_switch.c
+++ b/drivers/net/ethernet/intel/ice/ice_switch.c
@@ -3648,7 +3648,7 @@ int ice_add_mac(struct ice_hw *hw, struct list_head *m_list)
 		u16 hw_vsi_id;
 
 		err = ice_fltr_mac_address(addr, &m_list_itr->fltr_info);
-		if (err || is_zero_ether_addr(addr))
+		if (err)
 			return -EINVAL;
 		m_list_itr->fltr_info.flag = ICE_FLTR_TX;
 		vsi_handle = m_list_itr->fltr_info.vsi_handle;
-- 
2.43.0

