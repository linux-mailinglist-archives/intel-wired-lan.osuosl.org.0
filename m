Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp2.osuosl.org (smtp2.osuosl.org [IPv6:2605:bc80:3010::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 21E4D705BE7
	for <lists+intel-wired-lan@lfdr.de>; Wed, 17 May 2023 02:19:55 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp2.osuosl.org (Postfix) with ESMTP id 6CBA04107A;
	Wed, 17 May 2023 00:19:53 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 6CBA04107A
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1684282793;
	bh=oeWWc+X4py9f0xCAlDGf26xEKD3p5NmNJLlucE4/8Vs=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=NyTl+TsRBAHqBB8MF1BMiTa33fQWdiclKyYdxHRd8blTjHQL4fk/AF3h9FHvbyfjs
	 f4iVkucBR7z8xIvqDjszHcU+yj/4nRcnyVKKhI20hD3zAa14xPazPVID8+jWQ/yFA+
	 haDEnNKRZ1D4fbsa+A5SBMG1A5jD8sXB4vfKNqbWIk0zONczc7Cmp8R1Y96eWZUrDd
	 qnBZE3K1A1j0fvKFgpFougKcpcoSbduWJu1214U5qR6ycRzeewaxUtRR7l/lMKxDSg
	 kjbw/zPimFIXEx9lyH0zaMrkugwZqMIyi9xHLykK4FwAc2sdW83BCbrek5oomhFVDh
	 1nL1aBEG8mogQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp2.osuosl.org ([127.0.0.1])
	by localhost (smtp2.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FlKwR4E82wgw; Wed, 17 May 2023 00:19:52 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp2.osuosl.org (Postfix) with ESMTP id 4AFA240BDC;
	Wed, 17 May 2023 00:19:52 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp2.osuosl.org 4AFA240BDC
X-Original-To: intel-wired-lan@osuosl.org
Delivered-To: intel-wired-lan@osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 7DF851BF909
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 00:19:47 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id 4CE2260BF0
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 00:19:47 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 4CE2260BF0
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id ieftLjqCs1DH for <intel-wired-lan@osuosl.org>;
 Wed, 17 May 2023 00:19:46 +0000 (UTC)
X-Greylist: domain auto-whitelisted by SQLgrey-1.8.0
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org 05C2960A88
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
 by smtp3.osuosl.org (Postfix) with ESMTPS id 05C2960A88
 for <intel-wired-lan@osuosl.org>; Wed, 17 May 2023 00:19:45 +0000 (UTC)
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="354794241"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="354794241"
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
 by orsmga103.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 16 May 2023 17:19:44 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10712"; a="791276866"
X-IronPort-AV: E=Sophos;i="5.99,280,1677571200"; d="scan'208";a="791276866"
Received: from zulkifl3-ilbpg0.png.intel.com ([10.88.229.82])
 by FMSMGA003.fm.intel.com with ESMTP; 16 May 2023 17:19:42 -0700
From: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>
To: intel-wired-lan@osuosl.org
Date: Wed, 17 May 2023 08:18:12 +0800
Message-Id: <20230517001812.8101-1-muhammad.husaini.zulkifli@intel.com>
X-Mailer: git-send-email 2.17.1
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1684282786; x=1715818786;
 h=from:to:cc:subject:date:message-id;
 bh=UoamNPbMHjDvvT8xRRln/ycJc0PUyY/8ccy+6Q13KXA=;
 b=aWj7ty5RnoWYt+7yS2wOiAmwjxOEUSmeBJLgN2iFj8hik1TlnUKDUeaw
 DLw+oJ15rOrasaIeM9aMLCfZY1ksoKsNYTYwXYiB2no3ShtgzBmv3otWi
 Sv2W+FV/lMVbHBLI1VC39ngff5c3P1qTK12R8yoy2d1IwYrRVNXLD2E6/
 b0fjQns/6gOPAiAWS7s0hkOqyThTm+Y+MF9EM80+iA7qh6lSRvO9zoThl
 Vmm6+r6iTYm6JpeiQn8+44U400DmncgVMG4lImfA8BPKYR9dG0Ra15KGi
 CG9eDySGFW2MS+q3sSbL6Da5UQrNVDngeUXLsuSnPeUsfXEVDZJG7z1EP
 A==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aWj7ty5R
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: Remove delay during TX
 ring configuration
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
Cc: anthony.l.nguyen@intel.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

Remove unnecessary delay during the TX ring configuration.
This will cause delay, especially during link down and
link up activity.

Furthermore, old SKUs like as I225 will call the reset_adapter
to reset the controller during TSN mode Gate Control List (GCL)
setting. This will add more time to the configuration of the
real-time use case.

It doesn't mentioned about this delay in the Software User Manual.
It might have been ported from legacy code I210 in the past.

Fixes: 13b5b7fd6a4a ("igc: Add support for Tx/Rx rings")
Signed-off-by: Muhammad Husaini Zulkifli <muhammad.husaini.zulkifli@intel.com>

---
V1 -> V2: Update commit message.
---
---
 drivers/net/ethernet/intel/igc/igc_main.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index d1e8a5eee811b..a65ddddcda5d0 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -711,7 +711,6 @@ static void igc_configure_tx_ring(struct igc_adapter *adapter,
 	/* disable the queue */
 	wr32(IGC_TXDCTL(reg_idx), 0);
 	wrfl();
-	mdelay(10);
 
 	wr32(IGC_TDLEN(reg_idx),
 	     ring->count * sizeof(union igc_adv_tx_desc));
-- 
2.17.1

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
