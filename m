Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp3.osuosl.org (smtp3.osuosl.org [IPv6:2605:bc80:3010::136])
	by mail.lfdr.de (Postfix) with ESMTPS id 964E2793102
	for <lists+intel-wired-lan@lfdr.de>; Tue,  5 Sep 2023 23:38:11 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp3.osuosl.org (Postfix) with ESMTP id CE7D060F83;
	Tue,  5 Sep 2023 21:38:09 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org CE7D060F83
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1693949889;
	bh=dksekLTSqSv0uX3qqiTSnFG2GCecZQoXndKvOG+E4AY=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Z/Cr4LnOjlvMCItChAe2SakrmLuG2GTSfPxUikTRe2vRv4x1I7OCSUj9OcI7Q5O30
	 O8cm8Dp+jJVLe01FI8arlqA9Al2Tgm+Cm+zKxzTF6s8AiO1Im2SF3FYVlgdoZx1YdT
	 rBMM//87JXh9eWuvCx8c4Hn/UwQN/Wb11AS7rTpdTYjhqgrP363Rh4zYDwy2aeSOBU
	 qqbXqnuHPMaVoD9CiFIH/eNgsPo+wAA2+d0WfioQt7nPkpSl3SFVgTIrwdtcPNsvjv
	 pQe7gMcrjZcbcrPH78d6MBNUEy/5n37L/ILJ6DD8Pdq1bt0+/GfPWwrOhKe5wyIfkF
	 5DXc/rJ9Wbs4A==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
	by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id Hg6Dn-hF35cV; Tue,  5 Sep 2023 21:38:09 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp3.osuosl.org (Postfix) with ESMTP id DFDA860DF4;
	Tue,  5 Sep 2023 21:38:08 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org DFDA860DF4
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp3.osuosl.org (smtp3.osuosl.org [140.211.166.136])
 by ash.osuosl.org (Postfix) with ESMTP id 1E4391BF2B4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 21:38:04 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp3.osuosl.org (Postfix) with ESMTP id E846B60DF4
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 21:38:03 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org E846B60DF4
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp3.osuosl.org ([127.0.0.1])
 by localhost (smtp3.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id Iv9fGBt9uMtt for <intel-wired-lan@lists.osuosl.org>;
 Tue,  5 Sep 2023 21:38:03 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.100])
 by smtp3.osuosl.org (Postfix) with ESMTPS id D1A8E60D76
 for <intel-wired-lan@lists.osuosl.org>; Tue,  5 Sep 2023 21:38:02 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp3.osuosl.org D1A8E60D76
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="443298017"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="443298017"
Received: from orsmga004.jf.intel.com ([10.7.209.38])
 by orsmga105.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 14:38:02 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10824"; a="864902564"
X-IronPort-AV: E=Sophos;i="6.02,230,1688454000"; d="scan'208";a="864902564"
Received: from vcostago-mobl3.jf.intel.com ([10.24.14.106])
 by orsmga004-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 05 Sep 2023 14:38:01 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Tue,  5 Sep 2023 14:37:52 -0700
Message-ID: <20230905213753.697461-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1693949883; x=1725485883;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=9apBiphN57rQ3aiF+Q7XIdDoQMMdkK/gnjUcFUrpp1Y=;
 b=Q5d+/0+7HmWHP0PEMBeHfOqsYHKs+dVgzuo48kwFk0D9j4ye3kGwHaxx
 DqhDJwExeTjsQ17VV/iyO48Hq06jwGMybyKtKAw319OQ3OQhRdquh9wk4
 atTtDX7jOkoEwWbLm2ObZN8Sppd3pzezcJSvRa13xxa6GXNWGK5YSd3LF
 BlAGD14NNMMkyuZJ+U3G1ksnavxBQaM/IorBwuhjSmPfTDFNd/JqwDqmT
 NZOsIEkDz+0Q4QhS4UQSY8cMNioK2lZOY9sgayGyk/VFCfFBzjoAnnwwT
 tUyhetjxl7t4DtBxWBTuK5RdwBw//joZYC854LCkXSj4eWtOfGdi+aTSK
 w==;
X-Mailman-Original-Authentication-Results: smtp3.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=Q5d+/0+7
Subject: [Intel-wired-lan] [PATCH iwl-net v1] igc: Fix infinite
 initialization loop with early XDP redirect
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
Cc: Andre Guedes <andre.guedes@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>, linux-kernel@vger.kernel.org,
 Ferenc Fejes <ferenc.fejes@ericsson.com>, Eric Dumazet <edumazet@google.com>,
 Tony Nguyen <anthony.l.nguyen@intel.com>, Jakub Kicinski <kuba@kernel.org>,
 Paolo Abeni <pabeni@redhat.com>, "David S. Miller" <davem@davemloft.net>,
 Vedang Patel <vedang.patel@intel.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Errors-To: intel-wired-lan-bounces@osuosl.org
Sender: "Intel-wired-lan" <intel-wired-lan-bounces@osuosl.org>

When a XDP redirect happens before the link is ready, that
transmission will not finish and will timeout, causing an adapter
reset. If the redirects do not stop, the adapter will not stop
resetting.

Wait for the driver to signal that there's a carrier before allowing
transmissions to proceed.

Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
Reported-by: Ferenc Fejes <ferenc.fejes@ericsson.com>
Closes: https://lore.kernel.org/netdev/0caf33cf6adb3a5bf137eeaa20e89b167c9986d5.camel@ericsson.com/
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Tested-by: Ferenc Fejes <ferenc.fejes@ericsson.com>
---
 drivers/net/ethernet/intel/igc/igc_main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/ethernet/intel/igc/igc_main.c b/drivers/net/ethernet/intel/igc/igc_main.c
index 293b45717683..98de34d0ce07 100644
--- a/drivers/net/ethernet/intel/igc/igc_main.c
+++ b/drivers/net/ethernet/intel/igc/igc_main.c
@@ -6491,7 +6491,7 @@ static int igc_xdp_xmit(struct net_device *dev, int num_frames,
 	struct igc_ring *ring;
 	int i, drops;
 
-	if (unlikely(test_bit(__IGC_DOWN, &adapter->state)))
+	if (unlikely(!netif_carrier_ok(dev)))
 		return -ENETDOWN;
 
 	if (unlikely(flags & ~XDP_XMIT_FLAGS_MASK))
-- 
2.41.0

_______________________________________________
Intel-wired-lan mailing list
Intel-wired-lan@osuosl.org
https://lists.osuosl.org/mailman/listinfo/intel-wired-lan
