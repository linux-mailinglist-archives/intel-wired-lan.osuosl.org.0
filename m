Return-Path: <intel-wired-lan-bounces@osuosl.org>
X-Original-To: lists+intel-wired-lan@lfdr.de
Delivered-To: lists+intel-wired-lan@lfdr.de
Received: from smtp1.osuosl.org (smtp1.osuosl.org [IPv6:2605:bc80:3010::138])
	by mail.lfdr.de (Postfix) with ESMTPS id 64BB7796E03
	for <lists+intel-wired-lan@lfdr.de>; Thu,  7 Sep 2023 02:30:43 +0200 (CEST)
Received: from localhost (localhost [127.0.0.1])
	by smtp1.osuosl.org (Postfix) with ESMTP id 6BB5682239;
	Thu,  7 Sep 2023 00:30:40 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 6BB5682239
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=osuosl.org;
	s=default; t=1694046640;
	bh=STwziiJznueefJXamaQIgVd/MW2DoYAS5R9sgmpmTQ0=;
	h=From:To:Date:Subject:List-Id:List-Unsubscribe:List-Archive:
	 List-Post:List-Help:List-Subscribe:Cc:From;
	b=Ji//rwH6jTU0gYuaOK5+On1te6huIWX8OQzZoAHhB6+XmSZvXY9G5rznzISMIbjZx
	 gxFSgWwQSvSS+rtL8A57yj2uqnbTkKjpbYwPnEizzikkYKfyvPRFif3AujtW/+h+uR
	 1uSCPutKDPgaMsXyvZzh2L8mwVNohT82oSD1GfMOwIb9cIi9jBGYxXaOx7gYt2rK9m
	 IwC8s/8bIMYtrKuU6AN4tlSjcXs/9llTNqRChRrQHJfuhEmusd8cA9PxyBBtAiAThM
	 WLDQK5BFMRLGIMXKs1R8ER2Ah42DS4JBbN9mqrpApQGnSpklx20Sjx7GqPAxQuMwOv
	 OxVba2rEIkjLQ==
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp1.osuosl.org ([127.0.0.1])
	by localhost (smtp1.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id FLyuH0yTwaSr; Thu,  7 Sep 2023 00:30:39 +0000 (UTC)
Received: from ash.osuosl.org (ash.osuosl.org [140.211.166.34])
	by smtp1.osuosl.org (Postfix) with ESMTP id 63E9E821E6;
	Thu,  7 Sep 2023 00:30:39 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp1.osuosl.org 63E9E821E6
X-Original-To: intel-wired-lan@lists.osuosl.org
Delivered-To: intel-wired-lan@lists.osuosl.org
Received: from smtp4.osuosl.org (smtp4.osuosl.org [140.211.166.137])
 by ash.osuosl.org (Postfix) with ESMTP id 370711BF983
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 00:30:34 +0000 (UTC)
Received: from localhost (localhost [127.0.0.1])
 by smtp4.osuosl.org (Postfix) with ESMTP id 0D031417B9
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 00:30:34 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 0D031417B9
X-Virus-Scanned: amavisd-new at osuosl.org
Received: from smtp4.osuosl.org ([127.0.0.1])
 by localhost (smtp4.osuosl.org [127.0.0.1]) (amavisd-new, port 10024)
 with ESMTP id WiqfTJg-WyLJ for <intel-wired-lan@lists.osuosl.org>;
 Thu,  7 Sep 2023 00:30:32 +0000 (UTC)
Received: from mgamail.intel.com (mgamail.intel.com [134.134.136.20])
 by smtp4.osuosl.org (Postfix) with ESMTPS id 8F08A417AD
 for <intel-wired-lan@lists.osuosl.org>; Thu,  7 Sep 2023 00:30:32 +0000 (UTC)
DKIM-Filter: OpenDKIM Filter v2.11.0 smtp4.osuosl.org 8F08A417AD
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="367443780"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="367443780"
Received: from orsmga003.jf.intel.com ([10.7.209.27])
 by orsmga101.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 17:30:23 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=McAfee;i="6600,9927,10825"; a="691539433"
X-IronPort-AV: E=Sophos;i="6.02,233,1688454000"; d="scan'208";a="691539433"
Received: from mcewe-mobl1.amr.corp.intel.com (HELO vcostago-mobl3.intel.com)
 ([10.251.10.12])
 by orsmga003-auth.jf.intel.com with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384;
 06 Sep 2023 17:30:22 -0700
From: Vinicius Costa Gomes <vinicius.gomes@intel.com>
To: intel-wired-lan@lists.osuosl.org
Date: Wed,  6 Sep 2023 17:30:05 -0700
Message-ID: <20230907003005.99481-1-vinicius.gomes@intel.com>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
X-Mailman-Original-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple;
 d=intel.com; i=@intel.com; q=dns/txt; s=Intel;
 t=1694046632; x=1725582632;
 h=from:to:cc:subject:date:message-id:mime-version:
 content-transfer-encoding;
 bh=ZBbr3uJJ8GvXoyhicrV/I194s5KUyoTJx2VEg0uWzZc=;
 b=aDcVaGRRjiscKQzdE2aViT9dTUIfoAfodI9nfZ2JpAA+QS2yBi11cdQX
 vPLsobRJHy8J5XZ3LV3wOFXP7IFW3WwVXS7OXpqHPHXO5VKC5AWrx+uEk
 nwOMClzfLrnQkI9RPkiJs8PUJEqxHh7JPtao+B6MM5kcFwTaDspz8HODG
 jMiQ05KJao3zGYrEAxiZ/8ruoLmH+ErUIEkV2NwnRmxLAE8LxiBEnbMqV
 TRBY5RjymjeJaWbHwgZgWlWL83yWQjeI6gPrj6Y2JuDXGfcXBjIU6g0cy
 uHPpE4SXx7q0jKFH9jA4EPQpmK+ltInO/iasF2EL2iKT0LTQUPt7zLgIF
 Q==;
X-Mailman-Original-Authentication-Results: smtp4.osuosl.org;
 dkim=pass (2048-bit key) header.d=intel.com header.i=@intel.com
 header.a=rsa-sha256 header.s=Intel header.b=aDcVaGRR
Subject: [Intel-wired-lan] [PATCH iwl-net v2] igc: Fix infinite
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
Cc: Andre Guedes <andre.guedes@intel.com>, netdev@vger.kernel.org,
 Jesse Brandeburg <jesse.brandeburg@intel.com>,
 Jithu Joseph <jithu.joseph@intel.com>, linux-kernel@vger.kernel.org,
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

Previous code was relying that when __IGC_DOWN is cleared, the NIC is
ready to transmit as all the queues are ready, what happens is that
the carrier presence will only be signaled later, after the watchdog
workqueue has a chance to run. And during this interval (between
clearing __IGC_DOWN and the watchdog running) if any transmission
happens the timeout is emitted (detected by igc_tx_timeout()) which
causes the reset, with the potential for the inifite loop.

Fixes: 4ff320361092 ("igc: Add support for XDP_REDIRECT action")
Reported-by: Ferenc Fejes <ferenc.fejes@ericsson.com>
Closes: https://lore.kernel.org/netdev/0caf33cf6adb3a5bf137eeaa20e89b167c9986d5.camel@ericsson.com/
Signed-off-by: Vinicius Costa Gomes <vinicius.gomes@intel.com>
Tested-by: Ferenc Fejes <ferenc.fejes@ericsson.com>
Reviewed-by: Maciej Fijalkowski <maciej.fijalkowski@intel.com>
---
v1 -> v2:
 - Added more information to the commit message (Maciej Fijalkowski)


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
